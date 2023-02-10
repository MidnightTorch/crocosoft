import os
from PyQt6.QtGui import QPixmap
from PyQt6.QtWidgets import QApplication, QMainWindow, QFileDialog
from designer import Ui_MainWindow
from json import dumps, loads
from dbconnector import push_to_db, check_exists, delete_rows_by_path_to_file, get_description_by_path
from designer_confirmation_window import Ui_confirmation_window
from designer_successful_commit import Ui_success_window
from desigener_error_on_commit import Ui_error_while_commiting
from designer_multiple_description_warning import Ui_Form

class MultipleDescriptionsError(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_Form()
        self.ui.setupUi(self)


class ErrorOnCommit(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_error_while_commiting()
        self.ui.setupUi(self)



class SuccessfulCommitWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_success_window()
        self.ui.setupUi(self)
        self.ui.close_window.pressed.connect(self.close)


class ConfirmationWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_confirmation_window()
        self.ui.setupUi(self)



class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        ####setting up ui
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.center()

        ####creating connections

        self.ui.button_browser.pressed.connect(self.browser_invoker)
        self.ui.confim_button.pressed.connect(self.confirm_text)
        self.ui.button_next.pressed.connect(self.next_image)
        self.ui.button_previous.pressed.connect(self.previous_image)
        self.ui.button_check_described.pressed.connect(self.check_multiple_description)

        ####setting up variables

        self.path_to_curr_img = ''
        self.curr_year = ''
        self.curr_publication = ''
        self.curr_screen = ''
        self.dir_tree = {}
        self.create_tree_of_screens()

    def center(self):

        qr = self.frameGeometry()
        cp = self.screen().availableGeometry().center()

        qr.moveCenter(cp)
        self.move(qr.topLeft())


    def browser_invoker(self):
        folder_path = QFileDialog(directory='screens')
        if folder_path.getOpenFileName()[0] != '':
            self.path_to_curr_img = folder_path.getOpenFileName()[0]
            self.get_img_props()
            self.draw_image()



    def draw_image(self):
        path_via_screens = 'screens' + '/' + self.curr_year + '/' + self.curr_publication + '/' + self.curr_screen
        self.ui.image_dispayer.setPixmap(QPixmap(path_via_screens))
        self.ui.lineEdit_year.setText(self.curr_year)
        self.ui.lineEdit_publication.setText(self.curr_publication)
        self.ui.lineEdit_id.setText(self.curr_screen)


    def get_img_props(self):
    #### symbol is to be changed for Windows Desktop
        path_to_file = self.path_to_curr_img.split('/')
        self.curr_year = path_to_file[6]
        self.curr_publication = path_to_file[7]
        self.curr_screen = path_to_file[8]


    def commit(self):
    #############doesn`t work on Windows
        json_description = self.translate_to_json()
        path_of_img = 'screens' + '/' + self.curr_year + '/' + self.curr_publication + '/' + self.curr_screen

        ### try-except needs to be redesigned
        try:
            push_to_db(json_description, path_of_img)
        except Exception as e:
            print(e)
            self.error_win = ErrorOnCommit()
            self.error_win.ui.error_log.setText(str(e))
            error_win_geometry = self.error_win.geometry()
            error_win_geometry.moveCenter(self.geometry().center())
            self.error_win.setGeometry(error_win_geometry)
            self.error_win.show()
        else:
            self.success = SuccessfulCommitWindow()
            success_geometry = self.success.geometry()
            success_geometry.moveCenter(self.geometry().center())
            self.success.setGeometry(success_geometry)
            self.success.show()

        finally:
            self.conf_win.close()

    def confirm_text(self):
        self.conf_win = ConfirmationWindow()
        output = self.translate_to_json().replace(',', '\n')
        self.conf_win.ui.markup_displayer.setText(output)
        self.conf_win.ui.commit_button.pressed.connect(self.commit)
        self.conf_win.ui.redo_button.pressed.connect(self.conf_win.close)
        conf_win_geometry = self.conf_win.geometry()
        conf_win_geometry.moveCenter(self.geometry().center())
        self.conf_win.setGeometry(conf_win_geometry)
        self.conf_win.show()

    def ui_val_to_bool(self, val):
        if val == 2: return True
        if val == 0: return False

    def translate_to_json(self):
        json_dict = {
            "year": self.ui.lineEdit_year.text(),
            "publication": self.ui.lineEdit_publication.text(),
            "id": self.ui.lineEdit_id.text(),
            "type": self.ui.lineEdit_type.text(),
            "personality": self.ui.lineEdit_personality.text().split(','),
            "country": self.ui.lineEdit_country.text().split(','),
            "topic": self.ui.lineEdit_topic.text(),
            "anciene_regime": self.ui_val_to_bool(self.ui.checkBox_ancine_regime.checkState().value),
            "swastic": self.ui_val_to_bool(self.ui.checkBox_swastic.checkState().value),
            "historical": self.ui_val_to_bool(self.ui.checkBox_historical.checkState().value),
            "religion": self.ui_val_to_bool(self.ui.checkBox_religion.checkState().value),
            "workers and peseants": self.ui_val_to_bool(self.ui.checkBox_workers_and_peseants.checkState().value),
            "bourgeois": self.ui_val_to_bool(self.ui.checkBox_bourgeois.checkState().value),
            "feminism": self.ui_val_to_bool(self.ui.checkBox_feminism.checkState().value),
            "culture": self.ui_val_to_bool(self.ui.checkBox_culture.checkState().value),
            "enlightenment": self.ui_val_to_bool(self.ui.checkBox_enlightment.checkState().value),
            "minorities": self.ui_val_to_bool(self.ui.checkBox_minorities.checkState().value),
            "muslim": self.ui_val_to_bool(self.ui.checkBox_muslim.checkState().value),
            "pagan": self.ui_val_to_bool(self.ui.checkBox_pagan.checkState().value),
            "ancient": self.ui_val_to_bool(self.ui.checkBox_ancient.checkState().value),
            "nuclear": self.ui_val_to_bool(self.ui.checkBox_nuclear.checkState().value)
        }

        return dumps(json_dict)

    def try_to_fill_from_db(self):
        formed_path_to_curr_img = 'screens' + '/' + self.curr_year + '/' + self.curr_publication + '/' + self.curr_screen
        description_query = get_description_by_path(formed_path_to_curr_img)
        if description_query != ():
            description_dict = loads(description_query[0]['description'])

            self.ui.lineEdit_type.setText(description_dict['type'])
            self.ui.lineEdit_personality.setText(','.join(description_dict['personality']))
            self.ui.lineEdit_country.setText(','.join(description_dict['country']))
            self.ui.lineEdit_topic.setText(description_dict['topic'])

            self.ui.checkBox_ancine_regime.setChecked(description_dict['anciene_regime'])
            self.ui.checkBox_swastic.setChecked(description_dict['swastic'])
            self.ui.checkBox_historical.setChecked(description_dict['historical'])
            self.ui.checkBox_religion.setChecked(description_dict['religion'])
            self.ui.checkBox_workers_and_peseants.setChecked(description_dict['workers and peseants'])
            self.ui.checkBox_bourgeois.setChecked(description_dict['bourgeois'])
            self.ui.checkBox_feminism.setChecked(description_dict['feminism'])
            self.ui.checkBox_culture.setChecked(description_dict['culture'])
            self.ui.checkBox_enlightment.setChecked(description_dict['enlightenment'])
            self.ui.checkBox_minorities.setChecked(description_dict['minorities'])
            self.ui.checkBox_muslim.setChecked(description_dict['muslim'])
            self.ui.checkBox_pagan.setChecked(description_dict['pagan'])
            self.ui.checkBox_ancient.setChecked(description_dict['ancient'])
            self.ui.checkBox_nuclear.setChecked(description_dict['nuclear'])

        else:
            self.clear_entered_data()


    def clear_entered_data(self):
        self.ui.checkBox_ancine_regime.setChecked(False)
        self.ui.checkBox_swastic.setChecked(False)
        self.ui.checkBox_historical.setChecked(False)
        self.ui.checkBox_religion.setChecked(False)
        self.ui.checkBox_workers_and_peseants.setChecked(False)
        self.ui.checkBox_bourgeois.setChecked(False)
        self.ui.checkBox_feminism.setChecked(False)
        self.ui.checkBox_culture.setChecked(False)
        self.ui.checkBox_enlightment.setChecked(False)
        self.ui.checkBox_minorities.setChecked(False)
        self.ui.checkBox_muslim.setChecked(False)
        self.ui.checkBox_pagan.setChecked(False)
        self.ui.checkBox_ancient.setChecked(False)
        self.ui.checkBox_nuclear.setChecked(False)

        self.ui.lineEdit_type.setText('')
        self.ui.lineEdit_personality.setText('')
        self.ui.lineEdit_country.setText('')
        self.ui.lineEdit_topic.setText('')

    def list_existing_descriptions(self):
        curr_path = 'screens' + '/' + self.curr_year + '/' + self.curr_publication + '/' + self.curr_screen
        self.win = ErrorOnCommit()
        win_geometry = self.win.geometry()
        win_geometry.moveCenter(self.geometry().center())
        self.win.setGeometry(win_geometry)
        self.win.ui.label.setText('List of existing descriptions in the db:')
        try:
            str_of_descriptions = str(check_exists(curr_path))
        except (Exception) as some_db_exception:
            self.win.ui.error_log.setText(some_db_exception)
            self.win.ui.error_log.setWordWrap(True)
            self.win.show()
        else:
            self.win.ui.error_log.setText(str_of_descriptions)
            self.win.ui.error_log.setWordWrap(True)
            self.win.show()

    def check_multiple_description(self):
        curr_path = 'screens' + '/' + self.curr_year + '/' + self.curr_publication + '/' + self.curr_screen
        if len(check_exists(curr_path)) != 0:
            self.multiple_descriptions_error_win = MultipleDescriptionsError()
            self.multiple_descriptions_error_win.ui.discard_all_descriptions.pressed.connect(lambda: delete_rows_by_path_to_file(curr_path))
            self.multiple_descriptions_error_win.ui.check_descriptions.pressed.connect(self.list_existing_descriptions)
            self.multiple_descriptions_error_win.ui.quit_warning_window.pressed.connect(
                self.multiple_descriptions_error_win.close)
            multiple_descriptions_error_win_geometry = self.multiple_descriptions_error_win.geometry()
            multiple_descriptions_error_win_geometry.moveCenter(self.geometry().center())
            self.multiple_descriptions_error_win.setGeometry(multiple_descriptions_error_win_geometry)
            self.multiple_descriptions_error_win.show()

        else:
            self.success = SuccessfulCommitWindow()
            self.success.ui.label.setText('NO DESCRIPTIONS FOUND, YOU CAN PROCEED')
            self.success.setWindowTitle('NO DESCRIPTIONS')
            success_geometry = self.success.geometry()
            success_geometry.moveCenter(self.geometry().center())
            self.success.setGeometry(success_geometry)
            self.success.show()

    def next_image(self):
        # check of null image
        if self.curr_screen == '':
            self.browser_invoker()
            return 0

        current_publication_list = sorted(self.dir_tree[f'{self.curr_year}'][f'{self.curr_publication}'],
                                          key=lambda num: int(num.split('.')[0]))
        current_year_list = sorted(list(self.dir_tree[f'{self.curr_year}'].keys()),
                                   key=lambda num: int(num))
        list_of_years = sorted(list(self.dir_tree.keys()), key=lambda num: int(num))

        ### case needed next_image
        if self.curr_screen != current_publication_list[-1]:
            inx_of_current_screen = current_publication_list.index(self.curr_screen)
            self.curr_screen = current_publication_list[inx_of_current_screen + 1]
            self.try_to_fill_from_db()
            self.draw_image()

        ### case current screen is the last one in the publication
        elif self.curr_screen == current_publication_list[-1] and self.curr_publication != current_year_list[-1]:
            inx_of_current_publication = current_year_list.index(self.curr_publication)
            self.curr_publication = current_year_list[inx_of_current_publication + 1]
            new_publication_list = sorted(self.dir_tree[f'{self.curr_year}'][f'{self.curr_publication}'])
            self.curr_screen = new_publication_list[0]
            self.try_to_fill_from_db()
            self.draw_image()

        ### case need to change year
        elif self.curr_screen == current_publication_list[-1] and self.curr_publication == current_year_list[-1] and \
                list_of_years[-1] != self.curr_year:
            inx_current_year = list_of_years.index(self.curr_year)
            self.curr_year = list_of_years[inx_current_year + 1]
            self.curr_publication = sorted(self.dir_tree[f'{self.curr_year}'])[0]
            self.curr_screen = sorted(self.dir_tree[f'{self.curr_year}'][f'{self.curr_publication}'])[0]
            self.try_to_fill_from_db()
            self.draw_image()


    def previous_image(self):
        if self.curr_screen == '':
            self.browser_invoker()
            return 0
        current_publication_list = sorted(self.dir_tree[f'{self.curr_year}'][f'{self.curr_publication}'],
                                key = lambda num: int(num.split('.')[0]))
        current_year_list = sorted(list(self.dir_tree[f'{self.curr_year}'].keys()),
                                   key=lambda num: int(num))
        list_of_years = sorted(list(self.dir_tree.keys()), key=lambda num: int(num))

        ### case needed rpevious image
        if self.curr_screen != current_publication_list[0]:
            inx_of_current_screen = current_publication_list.index(self.curr_screen)
            self.curr_screen = current_publication_list[inx_of_current_screen - 1]
            self.try_to_fill_from_db()
            self.draw_image()

        ### case current screen is the first one in the publication
        elif self.curr_screen == current_publication_list[0] and self.curr_publication != current_year_list[0]:
            inx_of_current_publication = current_year_list.index(self.curr_publication)
            self.curr_publication = current_year_list[inx_of_current_publication - 1]
            new_publication_list = sorted(self.dir_tree[f'{self.curr_year}'][f'{self.curr_publication}'])
            self.curr_screen = new_publication_list[-1]
            self.try_to_fill_from_db()
            self.draw_image()

        ### case need to change year
        elif self.curr_screen == current_publication_list[0] and self.curr_publication == current_year_list[0] and \
                list_of_years[0] != self.curr_year:
            inx_current_year = list_of_years.index(self.curr_year)
            self.curr_year = list_of_years[inx_current_year - 1]
            self.curr_publication = sorted(self.dir_tree[f'{self.curr_year}'])[-1]
            self.curr_screen = sorted(self.dir_tree[f'{self.curr_year}'][f'{self.curr_publication}'])[-1]
            self.try_to_fill_from_db()
            self.draw_image()


    def create_tree_of_screens(self):
        for year in os.listdir('screens'):
            self.dir_tree[f'{year}'] = {}
            for publication in os.listdir(f'screens/{year}'):
                for screen in os.listdir(f'screens/{year}/{publication}'):
                    if f'{publication}' in self.dir_tree[f'{year}'].keys():
                        self.dir_tree[f'{year}'][f'{publication}'].append(screen)
                    else:
                        self.dir_tree[f'{year}'][f'{publication}'] = [screen]


app = QApplication([])
window = MainWindow()
window.show()
app.exec()

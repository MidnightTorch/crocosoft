from PyQt6.QtGui import QPixmap
from PyQt6.QtWidgets import QApplication, QMainWindow, QFileDialog, QWidget
from designer import Ui_MainWindow
from json import dumps
from dbconnector import push_to_db, check_exists
from designer_confirmation_window import Ui_confirmation_window
from designer_successful_commit import Ui_success_window
from desigener_error_on_commit import Ui_error_while_commiting


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

        ####creating connections

        self.ui.button_browser.pressed.connect(self.browser_invoker)
        self.ui.confim_button.pressed.connect(self.confirm_text)


        ####setting up variables
        #curr_img - path to currently selected image


        self.curr_img = ''
        self.curr_year = ''
        self.curr_publication = ''
        self.curr_screen = ''


    def browser_invoker(self):
        folder_path = QFileDialog(directory='screens')
        self.curr_img = folder_path.getOpenFileName()[0]
        if self.curr_img:
            self.draw_image()
            self.ui.name_of_file.setText(self.curr_img)
        else:
            print('No image specified')


    def draw_image(self):
        self.ui.image_dispayer.setPixmap(QPixmap(self.curr_img))
        self.get_img_props()
        self.ui.lineEdit_year.setText(self.curr_year)
        self.ui.lineEdit_publication.setText(self.curr_publication)
        self.ui.lineEdit_id.setText(self.curr_screen)


    def get_img_props(self):
    #### symbol is to be changed for Windows Desktop
        path_to_file = self.curr_img.split('/')
        self.curr_year = path_to_file[6]
        self.curr_publication = path_to_file[7]
        self.curr_screen = path_to_file[8].split('.')[0]


    def commit(self):
    #############doesnt work on Windows
        json_description = self.translate_to_json()
        path_of_img = 'screens' + '/' + self.curr_year + '/' + self.curr_publication + '/' + self.curr_screen
        try:
            push_to_db(json_description, path_of_img)
            self.success = SuccessfulCommitWindow()
            self.success.show()
        except Exception as e:
            print(e)
            self.error_win = ErrorOnCommit()
            self.error_win.ui.error_log.setText(str(e))
            self.error_win.show()



        self.conf_win.close()


    def confirm_text(self):
        self.conf_win = ConfirmationWindow()
        self.conf_win.show()
        output = self.translate_to_json().replace(',', '\n')
        self.conf_win.ui.markup_displayer.setText(output)

        self.conf_win.ui.commit_button.pressed.connect(self.commit)


    def translate_to_json(self):
        json_dict = {
            "year": self.ui.lineEdit_year.text(),
            "publication": self.ui.lineEdit_publication.text(),
            "id": self.ui.lineEdit_id.text(),
            "type": self.ui.lineEdit_type.text(),
            "personality": self.ui.lineEdit_personality.text().split(','),
            "country": self.ui.lineEdit_country.text().split(','),
            "topic": self.ui.lineEdit_topic.text(),
            "anciene_regime": self.ui.checkBox_ancine_regime.checkState().value,
            "swastic": self.ui.checkBox_swastic.checkState().value,
            "historical": self.ui.checkBox_historical.checkState().value,
            "religion": self.ui.checkBox_religion.checkState().value,
            "workers and peseants": self.ui.checkBox_workers_and_peseants.checkState().value
        }

        return dumps(json_dict)

    #     try:
    #         self.setWindowIcon(QIcon('croco_icon.png'))
    #         self.setWindowTitle('CROCOSOFT')
    #         self.setStyleSheet('background-color: grey')
    #         self.setGeometry(1000, 250, 800, 600)
    #
    #         self.lbl = QLabel('Category')
    #         self.input = QLineEdit()
    #         self.btn = QPushButton('Enter image')
    #         self.btn2 = QPushButton('Next image')
    #         self.confirm_btn = QPushButton('Confirm input')
    #         # self.btn3 = QPushButton('Previous image')
    #         self.imdrawer = QLabel('Images drawn here')
    #
    #         ####### configuring input
    #         self.input.setText('1922')
    #
    #
    #         ########### current image and dir props
    #         self.currimg = ''
    #         self.curr_year = ''
    #         self.curr_publication = ''
    #         self.curr_screen = ''
    #
    #         ####### connecting widgets
    #         self.btn.pressed.connect(self.dialog_invoker)
    #         self.btn2.pressed.connect(self.next_img)
    #         self.confirm_btn.pressed.connect(self.describe_img)
    #         # self.btn3.pressed.connect(self.previous_img)
    #
    #         #######
    #         #### adding to layout
    #
    #         layout = QVBoxLayout()
    #         layout.addWidget(self.input)
    #         layout.addWidget(self.lbl)
    #         layout.addWidget(self.confirm_btn)
    #         layout.addWidget(self.btn)
    #         layout.addWidget(self.btn2)
    #         # layout.addWidget(self.btn3)
    #         layout.addWidget(self.imdrawer)
    #
    #         container = QWidget()
    #         container.setLayout(layout)
    #         self.setCentralWidget(container)
    #
    #     except Exception as init_exception:
    #         print(init_exception)
    #
    #


    #
    # def next_img(self):
    #     path_to_current_directory = 'screens' + '/' + self.curr_year + '/' + self.curr_publication
    #     path_to_current_year_directory = 'screens' + '/' + self.curr_year
    #     path_screens = 'screens'
    #     list_of_screens_in_current_directory = sorted(os.listdir(path_to_current_directory))
    #     list_of_publication_in_current_year_directory = sorted(os.listdir(path_to_current_year_directory))
    #     list_of_years = sorted(os.listdir(path_screens))
    #
    #     result_path = '/home/torch/PycharmProjects/pythonProject1/screens'
    #
    #     if self.curr_screen != list_of_screens_in_current_directory[-1]:
    #         inx_of_img = list_of_screens_in_current_directory.index(self.curr_screen) + 1
    #         self.curr_screen = list_of_screens_in_current_directory[inx_of_img]
    #
    #     elif self.curr_publication != list_of_publication_in_current_year_directory[-1]:
    #         inx_of_publication = list_of_publication_in_current_year_directory.index(self.curr_publication) + 1
    #         self.curr_publication = list_of_publication_in_current_year_directory[inx_of_publication]
    #         if os.listdir('screens' + '/' + self.curr_year + '/' + self.curr_publication) != '':
    #             self.curr_screen = sorted(os.listdir('screens' + '/' + self.curr_year + '/' + self.curr_publication))[0]
    #         else:
    #             self.dialog_invoker()
    #
    #     elif self.curr_year != list_of_years[-1]:
    #         inx_of_year = list_of_years.index(self.curr_year) + 1
    #         self.curr_year = list_of_years[inx_of_year]
    #         if os.listdir('screens' + '/' + self.curr_year + '/') != '':
    #             self.curr_publication = sorted(os.listdir('screens' + '/' + self.curr_year))[0]
    #
    #         else:
    #             self.dialog_invoker()
    #
    #     try:
    #         self.currimg = result_path + '/' + self.curr_year + '/' + self.curr_publication + '/' + self.curr_screen
    #         self.draw_image()
    #     except Exception as e:
    #         print(e)
    #
    #
    # def describe_img(self):
    #     print(self.input.text())



app = QApplication([])
window = MainWindow()
window.show()
app.exec()


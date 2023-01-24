import json
import pymysql.cursors
import dbconfig


def push_to_db(json_obj, path_to_file):
    try:
        with pymysql.connect(
                                host=dbconfig.HOST,
                                user=dbconfig.USER,
                                password=dbconfig.PASSWORD,
                                database=dbconfig.DATABASE,
                                cursorclass=pymysql.cursors.DictCursor) as conn:

            with conn.cursor() as cursor:
                sql = 'INSERT INTO `data` (`description`, `path_to_picture`) VALUES (%s, %s)'
                cursor.execute(sql, [json.dumps(json_obj), path_to_file])

            conn.commit()
    except Exception as e:
        print(e)
    finally:
        print('Successfully commited!')

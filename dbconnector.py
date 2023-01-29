import pymysql.cursors
import dbconfig

#### SELECT * FROM data WHERE NOT JSON_CONTAINS(description, "\"\"", '$.personality');


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
                cursor.execute(sql, [json_obj, path_to_file])

            conn.commit()
    except Exception as e:
        print(e)
    finally:
        print('Successfully committed!')


def check_exists(path_to_file):
    with pymysql.connect(
            host=dbconfig.HOST,
            user=dbconfig.USER,
            password=dbconfig.PASSWORD,
            database=dbconfig.DATABASE,
            cursorclass=pymysql.cursors.DictCursor) as conn:
        with conn.cursor() as cursor:
            sql = 'SELECT * FROM `data` WHERE `path_to_picture` LIKE (%s)'
            cursor.execute(sql, [path_to_file])
            conn.commit()
            return cursor.fetchall()
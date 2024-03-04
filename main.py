from modul import diffDatabase

path_backup = 'backup/'
path_skema = 'skema/'
path_bytebase = 'bytebase/test/'

DB_NAME = 'KA'
DB_USER = 'divistant'
DB_PASS = 'divistant@2024'
DB_HOST = '103.117.56.81'
DB_PORT = '3306'
DB_TARGET = 'KA_test'

db = diffDatabase()
db.db_connection(DB_NAME, DB_USER, DB_PASS, DB_HOST, DB_PORT)
db.checking_git(path_backup)
count_files = len(db.name_files)
if count_files == 0:
    db.maria_db_dump(DB_HOST, DB_USER, DB_PASS, DB_NAME, path_backup)
    db.get_current_schema(path_skema)
    print("if file 1", db.name_files)

elif count_files == 1:
    db.maria_db_dump(DB_HOST, DB_USER, DB_PASS, DB_NAME, path_backup)
    print("if file 2 before check schema", db.name_files)
    if count_files >= 2:
        db.checking_git(path_backup)
        db.delete_file_git(path_backup)
    db.get_current_schema(path_skema)
    db.checking_git(path_skema)
    print("if file 2 after check backup", db.name_files)
    if len(db.name_files) > 3:
        db.delete_file_git(path_skema)

    db.diff_content(path_backup)
    db.checking_git(path_skema)
    print("if file 2 after check backup and schema", db.name_files)
    db.generate_ddl_for_changes(path_skema, path_backup)
    db.changes_query(path_bytebase, DB_TARGET)

elif count_files >= 2:
    db.maria_db_dump(DB_HOST, DB_USER, DB_PASS, DB_NAME, path_backup)
    db.checking_git(path_backup)
    print("if file 3 before check backup", db.name_files)
    db.delete_file_git(path_backup)
    db.get_current_schema(path_skema)
    db.checking_git(path_skema)

    if len(db.name_files) > 3:
        db.delete_file_git(path_skema)

    db.diff_content(path_backup)
    db.checking_git(path_skema)
    print("if file 3 after check backup and schema", db.name_files)
    db.generate_ddl_for_changes(path_skema, path_backup)
    db.changes_query(path_bytebase, DB_TARGET)

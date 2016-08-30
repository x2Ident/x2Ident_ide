MYARG="mysql -h localhost -u x2Ident_demo -pjugendhackt x2Ident_demo < reset.sql"
command $MYARG
echo $MYARG
mysqldump x2Ident_demo -u x2Ident_demo -pjugendhackt > dump.sql

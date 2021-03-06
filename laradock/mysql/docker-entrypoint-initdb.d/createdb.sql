#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# example: .env MYSQL_USER=appuser and need db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# this sql script will auto run when the mysql container starts and the $DATA_SAVE_PATH/mysql not found.
#
# if your $DATA_SAVE_PATH/mysql exists and you do not want to delete it, you can run by manual execution:
#
#     docker-compose exec mysql bash
#     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

#GRANT ALL ON `dev_db_1`.* TO 'default'@'%' ;

#CREATE DATABASE IF NOT EXISTS `dev_db_2` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_2`.* TO 'default'@'%' ;

#CREATE DATABASE IF NOT EXISTS `dev_db_3` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_3`.* TO 'default'@'%' ;


CREATE DATABASE IF NOT EXISTS ico_sender COLLATE 'utf8mb4_unicode_ci';

CREATE TABLE ico_sender.transfer (
  id INT UNSIGNED NOT NULL,
  hash VARCHAR(255) NULL,
  type TINYINT NOT NULL,
  status_transfer TINYINT NOT NULL,
  status_tx TINYINT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX hash_UNIQUE (hash ASC),
  UNIQUE INDEX id_UNIQUE (id ASC));

GRANT ALL ON `ico_sender`.* TO 'default'@'%' ;

FLUSH PRIVILEGES ;

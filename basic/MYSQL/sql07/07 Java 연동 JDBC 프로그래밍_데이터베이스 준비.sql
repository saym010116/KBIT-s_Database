create database jdbc_ex;
create user 'scoula'@'%'identified by '1234';
grant all privileges on jdbc_ex.*to'scoula'@'%';
flush privileges;

-- Project Name : noname
-- Date/Time    : 2021/09/10 10:43:07
-- Author       : ssaku
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

/*
  << 注意！！ >>
  BackupToTempTable, RestoreFromTempTable疑似命令が付加されています。
  これにより、drop table, create table 後もデータが残ります。
  この機能は一時的に $$TableName のような一時テーブルを作成します。
  この機能は A5:SQL Mk-2でのみ有効であることに注意してください。
*/

--* RestoreFromTempTable
create table TASK_MANAGEMENT_BACKUP (
  ID bigserial
  , TITLE character varying(100)
  , START_DATE timestamp
  , LIMIT_DATE timestamp
  , MEMO character varying(300)
  , TASK_COMPLETE_DATE timestamp
  , CREATE_DATE timestamp
  , UPDATE_DATE timestamp
  , BACKUP_DATE timestamp
) ;


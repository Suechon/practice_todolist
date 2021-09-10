-- Project Name : noname
-- Date/Time    : 2021/09/10 10:43:07
-- Author       : ssaku
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

/*
  << ���ӁI�I >>
  BackupToTempTable, RestoreFromTempTable�^�����߂��t������Ă��܂��B
  ����ɂ��Adrop table, create table ����f�[�^���c��܂��B
  ���̋@�\�͈ꎞ�I�� $$TableName �̂悤�Ȉꎞ�e�[�u�����쐬���܂��B
  ���̋@�\�� A5:SQL Mk-2�ł̂ݗL���ł��邱�Ƃɒ��ӂ��Ă��������B
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


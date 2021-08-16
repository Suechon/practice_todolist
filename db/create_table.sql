-- Project Name : noname
-- Date/Time    : 2021/08/16 12:51:06
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
create table TASK_MANAGEMENT (
  ID bigserial not null
  , TITLE character varying(100) not null
  , START_DATE timestamp not null
  , LIMIT_DATE timestamp not null
  , MEMO character varying(300)
  , TASK_COMPLETE_DATE timestamp
  , CREATE_DATE timestamp not null
  , UPDATE_DATE timestamp
  , constraint TASK_MANAGEMENT_PKC primary key (ID)
) ;


DROP TABLE t_access_audit;
DROP TABLE t_error_audit;
DROP TABLE t_login_audit;
DROP TABLE t_operation_audit;
DROP TABLE t_session;

CREATE TABLE t_access_audit (
   audit_id NUMBER(20,0) GENERATED BY DEFAULT ON NULL AS IDENTITY,
   url varchar2(100),
   method varchar2(10),
   status NUMBER(4,0),
   time NUMBER(20,0),
   ip varchar2(64),
   request_time TIMESTAMP,
   response_time TIMESTAMP,
   create_time TIMESTAMP,
   update_time TIMESTAMP,
   PRIMARY KEY (audit_id)
);

CREATE TABLE t_error_audit (
   audit_id NUMBER(20,0) GENERATED BY DEFAULT ON NULL AS IDENTITY,
   url varchar2(100),
   username varchar2(16),
   called_method varchar2(500),
   method varchar2(10),
   params varchar2(3000),
   ip varchar2(64),
   user_agent varchar2(500),
   message varchar2(4000),
   create_time TIMESTAMP,
   update_time TIMESTAMP,
   primary key(audit_id)
);

CREATE TABLE t_login_audit (
    audit_id NUMBER(20,0) GENERATED BY DEFAULT ON NULL AS IDENTITY,
    username varchar2(16),
    operation varchar2(50),
    status NUMBER(1,0),
    ip varchar(64),
    user_agent varchar(500),
    create_time TIMESTAMP,
    update_time TIMESTAMP,
    primary key(audit_id)
);

CREATE TABLE t_operation_audit (
  audit_id NUMBER(20,0) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  username varchar2(16),
  operation varchar2(50),
  url varchar2(100),
  method varchar2(500),
  params varchar2(3000),
  ip varchar2(20),
  time varchar2(20),
  create_time TIMESTAMP,
  update_time TIMESTAMP,
  primary key(audit_id)
);

CREATE TABLE t_session (
   session_id varchar2(200) NOT NULL,
   session_value varchar2(3000) NOT NULL,
   PRIMARY KEY (session_id)
);

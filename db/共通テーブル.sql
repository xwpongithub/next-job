DROP TABLE IF EXISTS t_access_audit;
CREATE TABLE t_access_audit (
    audit_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'IDカラム',
    `url` varchar(100) COMMENT '请求url',
    method varchar(10) COMMENT 'リクエストタイプ',
    status int(4) COMMENT '状態コード',
    time bigint(20) COMMENT '実行時間（ミリ秒）',
    ip varchar(64) COMMENT 'IP地址',
    request_time TIMESTAMP(0) COMMENT '请求进入时间',
    response_time TIMESTAMP(0) COMMENT '请求响应时间',
    create_time datetime COMMENT '作成時刻',
    update_time datetime COMMENT '更新時刻',
    PRIMARY KEY (`audit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'アクセスログマスタ' ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS t_error_audit;
CREATE TABLE t_error_audit (
   audit_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'IDカラム',
   `url` varchar(100) COMMENT '请求url',
   username varchar(16) COMMENT 'ユーザー名前',
   called_method varchar(500) COMMENT '呼び出されたメソッド',
   method varchar(10) COMMENT 'リクエスト方法',
   params varchar(3000) COMMENT 'リクエストパラメータ',
   ip varchar(64) COMMENT 'ipアドレス',
   user_agent varchar(500) COMMENT 'ユーザーのブラウザ情報',
   message varchar(5000) COMMENT 'エラー情報',
   create_time datetime COMMENT '作成時刻',
   update_time datetime COMMENT '更新時刻',
   primary key(audit_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'エラーログマスタ' ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS t_login_audit;
CREATE TABLE t_login_audit (
   audit_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'IDカラム',
   username varchar(16) COMMENT 'ユーザー名前',
   operation varchar(50) COMMENT 'ユーザー操作',
   status boolean COMMENT '成功フラグ',
   ip varchar(64) COMMENT 'ipアドレス',
   user_agent varchar(500) COMMENT 'ユーザーのブラウザ情報',
   create_time datetime COMMENT '作成時刻',
   update_time datetime COMMENT '更新時刻',
   primary key(audit_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'ログインログマスタ' ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS t_operation_audit;
CREATE TABLE t_operation_audit (
   audit_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'IDカラム',
   username varchar(16) COMMENT 'ユーザー名前',
   operation varchar(50) COMMENT 'ユーザー操作',
   `url` varchar(100) COMMENT '请求url',
   method varchar(500) COMMENT 'リクエスト方法',
   params varchar(3000) COMMENT 'リクエストパラメータ',
   ip varchar(20) COMMENT 'ipアドレス',
   time bigint(20) COMMENT '実行時間（ミリ秒）',
   create_time datetime COMMENT '作成時刻',
   update_time datetime COMMENT '更新時刻',
   primary key(audit_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'ログインログマスタ' ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS t_session;
CREATE TABLE t_session (
   session_id varchar(200) NOT NULL,
   session_value varchar(3000) NOT NULL,
   PRIMARY KEY (session_id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'ユーザ会話マスタ' ROW_FORMAT = Dynamic;

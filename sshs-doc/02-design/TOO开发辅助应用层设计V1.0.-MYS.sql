-- 建表脚本-Mysql
-- 代码生成表
CREATE TABLE TOO_CODER(
CODER_ID  VARCHAR (32) NOT NULL  COMMENT '代码生成ID',
TITLE  VARCHAR (100) COMMENT '描述',
MODEL_NAME  VARCHAR (200) COMMENT '模块名',
MODEL_NAME_CN  VARCHAR (200) COMMENT '模块名(中文)',
PACKAGE_NAME  VARCHAR (200) COMMENT '包名',
CLASS_NAME  VARCHAR (100) COMMENT '类名',
FUNCTION_NAME  VARCHAR (100) COMMENT '功能名称',
TABLE_NAME  VARCHAR (50) COMMENT '表名',
TABLE_COMMENT  VARCHAR (200) COMMENT '表描述',
FIELDS  BLOB COMMENT '字段列表',
CODER_TYPE  VARCHAR (10) COMMENT '类型(单表，树形，主从表)',
CRT_USER_CODE  VARCHAR (32) COMMENT '创建人',
CRT_ORG_CODE  VARCHAR (32) COMMENT '创建机构',
CRT_DATE  TIMESTAMP COMMENT '创建日期',
UPD_USER_CODE  VARCHAR (32) COMMENT '修改人',
UPD_ORG_CODE  VARCHAR (32) COMMENT '修改机构',
UPD_DATE  TIMESTAMP COMMENT '修改日期',
 PRIMARY KEY (CODER_ID)
)
 COMMENT = '开发辅助-代码生成表';



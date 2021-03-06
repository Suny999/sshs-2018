-- 建表脚本-DB2
-- 自定义查询信息表
CREATE TABLE CORE_CUSTOMISE_QUERY(
  CUSTOMISE_ID  VARCHAR (32) NOT NULL,
  USER_CODE  VARCHAR (32),
  ORG_CODE  VARCHAR (32),
  PAGE_ID  VARCHAR (32),
  CUSTOMISE_NAME  VARCHAR (200),
  FIELD_CONTENTS  VARCHAR (2000),
  FIELD_ADDONS  VARCHAR (1000),
  CRT_USER_CODE  VARCHAR (32),
  CRT_ORG_CODE  VARCHAR (32),
  CRT_DATE  TIMESTAMP,
  UPD_USER_CODE  VARCHAR (32),
  UPD_ORG_CODE  VARCHAR (32),
  UPD_DATE  TIMESTAMP,
CONSTRAINT CORE_CUSTOMISE_QUERY PRIMARY KEY (CUSTOMISE_ID)
) IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;
 COMMENT ON TABLE CORE_CUSTOMISE_QUERY IS '核心框架-自定义查询信息表';
 COMMENT ON CORE_CUSTOMISE_QUERY(
CUSTOMISE_ID IS  '查询ID',
USER_CODE IS  '用户编码',
ORG_CODE IS  '机构编码',
PAGE_ID IS  '页面ID',
CUSTOMISE_NAME IS  '查询名称',
FIELD_CONTENTS IS  '条件列',
FIELD_ADDONS IS  '条件匹配方式',
CRT_USER_CODE IS  '创建人',
CRT_ORG_CODE IS  '创建机构',
CRT_DATE IS  '创建日期',
UPD_USER_CODE IS  '修改人',
UPD_ORG_CODE IS  '修改机构',
UPD_DATE IS  '修改日期'
);
COMMIT;


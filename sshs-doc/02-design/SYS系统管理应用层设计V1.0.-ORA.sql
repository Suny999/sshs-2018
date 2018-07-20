-- 建表脚本-Oracle
-- 机构表
CREATE TABLE SYS_ORG(
  ORG_ID  VARCHAR2 (32) NOT NULL,
  ORG_CODE  VARCHAR2 (32),
  ORG_NAME  VARCHAR2 (256),
  ORG_BRIEF  VARCHAR2 (100),
  PARENT_ORG_CODE  VARCHAR2 (32),
  ORG_CATEGORY  VARCHAR2 (10),
  ORG_LEVEL  VARCHAR2 (32),
  ORG_GRADE  VARCHAR2 (32),
  PATH_NAME  VARCHAR2 (100),
  STATUS  VARCHAR2 (10),
  COUNTRY  VARCHAR2 (10),
  EMAIL  VARCHAR2 (100),
  OFFICE_ADDR  VARCHAR2 (512),
  POST  VARCHAR2 (100),
  TEL  VARCHAR2 (100),
  CONTACT  VARCHAR2 (100),
  ORG_FI_NO  VARCHAR2 (60),
  ORG_PAY_NO  VARCHAR2 (60),
  ORG_CREDIT_NO  VARCHAR2 (60),
  ORG_PERMIT_NO  VARCHAR2 (60),
  ORG_REG_NO  VARCHAR2 (60),
  ORG_ID_NUMBER  VARCHAR2 (60),
  ORG_TAX_NO  VARCHAR2 (60),
  ORG_CREATE_DATE  DATE,
  ORG_START_DATE  VARCHAR2 (10),
  ORG_END_DATE  VARCHAR2 (10),
  ORG_HEADER  VARCHAR2 (32),
  NODE_NO  VARCHAR2 (32),
  HIGHER_MNG_ORG  VARCHAR2 (1000),
  IS_LEAF  VARCHAR2 (10),
  BUSI_STATUS  VARCHAR2 (10),
  AREA_CODE  VARCHAR2 (10),
  ORDERS  DECIMAL (5),
  OWN_LINE  VARCHAR2 (10),
  VER_NO  DECIMAL (5),
  APPLY_STATUS  VARCHAR2 (60),
  OPER_TYPE  VARCHAR2 (1),
  OPER_RELA_ID  VARCHAR2 (60),
  APPLY_EMP_NO  VARCHAR2 (60),
  APPLY_DATE  DATE,
  APPLY_REASON  VARCHAR2 (4000),
  PROCESS_INSTANCE_ID  VARCHAR2 (32),
  REMARK  VARCHAR2 (100),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_ORG PRIMARY KEY (ORG_ID)
);
 COMMENT ON TABLE SYS_ORG IS '系统管理-机构表';
 COMMENT ON COLUMN SYS_ORG.ORG_ID IS  '机构ID';
COMMENT ON COLUMN SYS_ORG.ORG_CODE IS  '机构编码';
COMMENT ON COLUMN SYS_ORG.ORG_NAME IS  '机构名称';
COMMENT ON COLUMN SYS_ORG.ORG_BRIEF IS  '机构简称';
COMMENT ON COLUMN SYS_ORG.PARENT_ORG_CODE IS  '直接上级机构ID';
COMMENT ON COLUMN SYS_ORG.ORG_CATEGORY IS  '机构类别:01--机构,02--部门';
COMMENT ON COLUMN SYS_ORG.ORG_LEVEL IS  '机构层级（树形结构层级）';
COMMENT ON COLUMN SYS_ORG.ORG_GRADE IS  '机构级别：总行，分行，支行等';
COMMENT ON COLUMN SYS_ORG.PATH_NAME IS  '中文路径：用‘.’隔开各层级路径名称:.a.b.c.';
COMMENT ON COLUMN SYS_ORG.STATUS IS  '状态：01--启用,02--停用';
COMMENT ON COLUMN SYS_ORG.COUNTRY IS  '国家或地区:中国、中国香港、美国等,字典表数据';
COMMENT ON COLUMN SYS_ORG.EMAIL IS  '联系邮箱';
COMMENT ON COLUMN SYS_ORG.OFFICE_ADDR IS  '办公地址';
COMMENT ON COLUMN SYS_ORG.POST IS  '邮政编码';
COMMENT ON COLUMN SYS_ORG.TEL IS  '联系电话';
COMMENT ON COLUMN SYS_ORG.CONTACT IS  '联系人';
COMMENT ON COLUMN SYS_ORG.ORG_FI_NO IS  '金融机构编码（人行）';
COMMENT ON COLUMN SYS_ORG.ORG_PAY_NO IS  '支付行号（人行）';
COMMENT ON COLUMN SYS_ORG.ORG_CREDIT_NO IS  '机构信用代码（人行）';
COMMENT ON COLUMN SYS_ORG.ORG_PERMIT_NO IS  '金融许可证号码（银监）';
COMMENT ON COLUMN SYS_ORG.ORG_REG_NO IS  '营业执照注册号（工商）';
COMMENT ON COLUMN SYS_ORG.ORG_ID_NUMBER IS  '组织机构代码证号码';
COMMENT ON COLUMN SYS_ORG.ORG_TAX_NO IS  '税务登记证号码';
COMMENT ON COLUMN SYS_ORG.ORG_CREATE_DATE IS  '成立日期';
COMMENT ON COLUMN SYS_ORG.ORG_START_DATE IS  '营业开始时间';
COMMENT ON COLUMN SYS_ORG.ORG_END_DATE IS  '营业终止时间';
COMMENT ON COLUMN SYS_ORG.ORG_HEADER IS  '机构负责人';
COMMENT ON COLUMN SYS_ORG.NODE_NO IS  '网点号';
COMMENT ON COLUMN SYS_ORG.HIGHER_MNG_ORG IS  '代管机构：01,02,03';
COMMENT ON COLUMN SYS_ORG.IS_LEAF IS  '是否最末端';
COMMENT ON COLUMN SYS_ORG.BUSI_STATUS IS  '营业状态';
COMMENT ON COLUMN SYS_ORG.AREA_CODE IS  '行政区划代码';
COMMENT ON COLUMN SYS_ORG.ORDERS IS  '顺序号';
COMMENT ON COLUMN SYS_ORG.OWN_LINE IS  '所属条线';
COMMENT ON COLUMN SYS_ORG.VER_NO IS  '版本号';
COMMENT ON COLUMN SYS_ORG.APPLY_STATUS IS  '审批状态';
COMMENT ON COLUMN SYS_ORG.OPER_TYPE IS  '操作类型：合并，撤销，转移，修改';
COMMENT ON COLUMN SYS_ORG.OPER_RELA_ID IS  '关联主键：合并，撤销，转移，修改的关联ID';
COMMENT ON COLUMN SYS_ORG.APPLY_EMP_NO IS  '申请人';
COMMENT ON COLUMN SYS_ORG.APPLY_DATE IS  '申请日期';
COMMENT ON COLUMN SYS_ORG.APPLY_REASON IS  '申请原因';
COMMENT ON COLUMN SYS_ORG.PROCESS_INSTANCE_ID IS  '审批流ID';
COMMENT ON COLUMN SYS_ORG.REMARK IS  '备注';
COMMENT ON COLUMN SYS_ORG.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_ORG.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_ORG.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_ORG.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_ORG.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_ORG.UPD_DATE IS  '修改日期';

-- 岗位表
CREATE TABLE SYS_POST(
  POST_ID  VARCHAR2 (32) NOT NULL,
  POST_NO  VARCHAR2 (32) NOT NULL,
  POST_NAME  VARCHAR2 (50) NOT NULL,
  POST_SERIAL  VARCHAR2 (32),
  POST_SERIAL_CHILD  VARCHAR2 (32),
  POST_DESC  VARCHAR2 (255),
  STAND_ORG_CODE  VARCHAR2 (36),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_POST PRIMARY KEY (POST_ID)
);
 COMMENT ON TABLE SYS_POST IS '系统管理-岗位表';
 COMMENT ON COLUMN SYS_POST.POST_ID IS  '岗位主键';
COMMENT ON COLUMN SYS_POST.POST_NO IS  '岗位编号';
COMMENT ON COLUMN SYS_POST.POST_NAME IS  '岗位名称';
COMMENT ON COLUMN SYS_POST.POST_SERIAL IS  '岗位序列:管理序列、专业序列、营销序列、技能序列';
COMMENT ON COLUMN SYS_POST.POST_SERIAL_CHILD IS  '岗位子序列';
COMMENT ON COLUMN SYS_POST.POST_DESC IS  '岗位描述';
COMMENT ON COLUMN SYS_POST.STAND_ORG_CODE IS  '所属标准部门';
COMMENT ON COLUMN SYS_POST.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_POST.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_POST.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_POST.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_POST.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_POST.UPD_DATE IS  '修改日期';

-- 用户基本信息表
CREATE TABLE SYS_USER(
  USER_ID  VARCHAR2 (32) NOT NULL,
  USER_CODE  VARCHAR2 (32) NOT NULL,
  USER_NAME  VARCHAR2 (32) NOT NULL,
  USER_NAME_EN  VARCHAR2 (32),
  USER_NAME_PY  VARCHAR2 (50),
  USER_NAME_FR  VARCHAR2 (36),
  ORG_CODE  VARCHAR2 (36),
  POST_NO  VARCHAR2 (32),
  USER_SEX  VARCHAR2 (2),
  NATIONALITY  VARCHAR2 (3),
  ETHNIC  VARCHAR2 (50),
  NATIVE_PLACE  VARCHAR2 (100),
  BIRTH_PLACE  VARCHAR2 (50),
  BIRTH_DATE  DATE,
  ID_DECIMAL  VARCHAR2 (20),
  PHOTO_ID  VARCHAR2 (100),
  JOIN_DATE  DATE,
  STATUS  VARCHAR2 (10),
  TELLER_ID  VARCHAR2 (32),
  RESIDENTIAL_ADDRESS  VARCHAR2 (1000),
  MOBILE_PHONE  VARCHAR2 (32),
  REMARK  VARCHAR2 (250),
  PASSWORD  VARCHAR2 (200),
  SALT  VARCHAR2 (32),
  ONLINE_STATUS  VARCHAR2 (10),
  IP_ADDR  VARCHAR2 (60),
  USER_THEME  VARCHAR2 (32),
  PD_COUNT  VARCHAR2 (32),
  PD_MODTIME  VARCHAR2 (32),
  PD_LOCKTIME  VARCHAR2 (32),
  LAST_SIGNON_TIME  DATE,
  LAST_SIGNOUT_TIME  DATE,
  LEGAL_ORG  VARCHAR2 (50),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_USER PRIMARY KEY (USER_ID)
);
 COMMENT ON TABLE SYS_USER IS '系统管理-用户基本信息表';
 COMMENT ON COLUMN SYS_USER.USER_ID IS  '主键';
COMMENT ON COLUMN SYS_USER.USER_CODE IS  '用户编号';
COMMENT ON COLUMN SYS_USER.USER_NAME IS  '姓名';
COMMENT ON COLUMN SYS_USER.USER_NAME_EN IS  '英文名';
COMMENT ON COLUMN SYS_USER.USER_NAME_PY IS  '拼音码';
COMMENT ON COLUMN SYS_USER.USER_NAME_FR IS  '曾用名';
COMMENT ON COLUMN SYS_USER.ORG_CODE IS  '机构编号:到具体的部门、支行和二级中心';
COMMENT ON COLUMN SYS_USER.POST_NO IS  '岗位';
COMMENT ON COLUMN SYS_USER.USER_SEX IS  '性别:1－男性，2－女性，9－未说明性别';
COMMENT ON COLUMN SYS_USER.NATIONALITY IS  '国籍';
COMMENT ON COLUMN SYS_USER.ETHNIC IS  '民族:01=汉族';
COMMENT ON COLUMN SYS_USER.NATIVE_PLACE IS  '籍贯';
COMMENT ON COLUMN SYS_USER.BIRTH_PLACE IS  '出生地';
COMMENT ON COLUMN SYS_USER.BIRTH_DATE IS  '出生日期';
COMMENT ON COLUMN SYS_USER.ID_DECIMAL IS  '身份证号码';
COMMENT ON COLUMN SYS_USER.PHOTO_ID IS  '证件照';
COMMENT ON COLUMN SYS_USER.JOIN_DATE IS  '入职日期';
COMMENT ON COLUMN SYS_USER.STATUS IS  '用户状态:0-无效，1-有效';
COMMENT ON COLUMN SYS_USER.TELLER_ID IS  '柜员编号';
COMMENT ON COLUMN SYS_USER.RESIDENTIAL_ADDRESS IS  '现居住地址';
COMMENT ON COLUMN SYS_USER.MOBILE_PHONE IS  '手机';
COMMENT ON COLUMN SYS_USER.REMARK IS  '备注';
COMMENT ON COLUMN SYS_USER.PASSWORD IS  '密码';
COMMENT ON COLUMN SYS_USER.SALT IS  '盐（密码）';
COMMENT ON COLUMN SYS_USER.ONLINE_STATUS IS  '在线状态:在线、离线、锁定';
COMMENT ON COLUMN SYS_USER.IP_ADDR IS  'IP地址';
COMMENT ON COLUMN SYS_USER.USER_THEME IS  '用户皮肤';
COMMENT ON COLUMN SYS_USER.PD_COUNT IS  '密码输入次数';
COMMENT ON COLUMN SYS_USER.PD_MODTIME IS  '密码修改时间';
COMMENT ON COLUMN SYS_USER.PD_LOCKTIME IS  '密码锁定时间';
COMMENT ON COLUMN SYS_USER.LAST_SIGNON_TIME IS  '最后一次登陆时间';
COMMENT ON COLUMN SYS_USER.LAST_SIGNOUT_TIME IS  '最后一次退出时间';
COMMENT ON COLUMN SYS_USER.LEGAL_ORG IS  '法人机构编号';
COMMENT ON COLUMN SYS_USER.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_USER.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_USER.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_USER.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_USER.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_USER.UPD_DATE IS  '修改日期';

-- 用户扩展信息表
CREATE TABLE SYS_USER_EXT(
  USER_ID  VARCHAR2 (32) NOT NULL,
  POLITICAL_STATUS  VARCHAR2 (10),
  PARTY_TIME  VARCHAR2 (10),
  MARITAL_STATUS  VARCHAR2 (10),
  BLOOD_TYPE  VARCHAR2 (10),
  ENGLISH_LEVEL  VARCHAR2 (10),
  COMPUTER_LEVEL  VARCHAR2 (10),
  WORK_TIME  VARCHAR2 (50),
  INDUCTION_TYPE  VARCHAR2 (10),
  EMPLOY_WAY  VARCHAR2 (10),
  EMP_STATUS  VARCHAR2 (10),
  JOIN_DATE  DATE,
  HEIGHT  DECIMAL (5,2),
  WEIGHT  DECIMAL (5,2),
  CHILD_NUM  DECIMAL (2),
  HEALTH_STATE  VARCHAR2 (10),
  HIGHEST_EDU  VARCHAR2 (2),
  HIGHEST_DEGREE  VARCHAR2 (2),
  CONTACT_ADDRESS  VARCHAR2 (1000),
  POSTCODE_CONTACT  VARCHAR2 (32),
  RESIDENTIAL_ADDRESS  VARCHAR2 (1000),
  POSTCODE_RESIDENTIAL  VARCHAR2 (32),
  DOMICILE_ADDRESS  VARCHAR2 (1000),
  POSTCODE_DOMICILE  VARCHAR2 (32),
  HOUSEHOLD_REG  VARCHAR2 (1),
  EMAIL  VARCHAR2 (64),
  MOBILE_PHONE  VARCHAR2 (32),
  HOME_TELPHONE  VARCHAR2 (32),
  EMERGENCY_CONTACT  VARCHAR2 (32),
  EMERGENCY_CONTACT_PHONE  VARCHAR2 (32),
  QQ  VARCHAR2 (32),
  WECHAT  VARCHAR2 (32),
  REMARK  VARCHAR2 (250),
  LEGAL_ORG  VARCHAR2 (50),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_USER_EXT PRIMARY KEY (USER_ID)
);
 COMMENT ON TABLE SYS_USER_EXT IS '系统管理-用户扩展信息表';
 COMMENT ON COLUMN SYS_USER_EXT.USER_ID IS  '主键';
COMMENT ON COLUMN SYS_USER_EXT.POLITICAL_STATUS IS  '政治面貌:团员、党员、其他党派人士、无党派';
COMMENT ON COLUMN SYS_USER_EXT.PARTY_TIME IS  '入党时间';
COMMENT ON COLUMN SYS_USER_EXT.MARITAL_STATUS IS  '婚姻状况:10-未婚；20-已婚；21-离婚；40-丧偶；';
COMMENT ON COLUMN SYS_USER_EXT.BLOOD_TYPE IS  '血型:A型、B型、AB型、O型、未知血型';
COMMENT ON COLUMN SYS_USER_EXT.ENGLISH_LEVEL IS  '英语等级';
COMMENT ON COLUMN SYS_USER_EXT.COMPUTER_LEVEL IS  '计算机等级';
COMMENT ON COLUMN SYS_USER_EXT.WORK_TIME IS  '参加工作年月';
COMMENT ON COLUMN SYS_USER_EXT.INDUCTION_TYPE IS  '入职类型:社会招录、资源性人才引进、系统内调入、系统外调入';
COMMENT ON COLUMN SYS_USER_EXT.EMPLOY_WAY IS  '用工方式:合同制员工
派遣制员工
实习员工';
COMMENT ON COLUMN SYS_USER_EXT.EMP_STATUS IS  '员工状态:在职在岗
在编不在岗的
离岗退养
转非
退休
死亡';
COMMENT ON COLUMN SYS_USER_EXT.JOIN_DATE IS  '入职日期';
COMMENT ON COLUMN SYS_USER_EXT.HEIGHT IS  '身高';
COMMENT ON COLUMN SYS_USER_EXT.WEIGHT IS  '体重';
COMMENT ON COLUMN SYS_USER_EXT.CHILD_NUM IS  '子女人数';
COMMENT ON COLUMN SYS_USER_EXT.HEALTH_STATE IS  '健康状况:健康
一般
慢性疾病
生理缺陷
残废
较弱';
COMMENT ON COLUMN SYS_USER_EXT.HIGHEST_EDU IS  '最高学历:中专、高中、大专、专科、本科、研究生（硕士）、研究生（博士）';
COMMENT ON COLUMN SYS_USER_EXT.HIGHEST_DEGREE IS  '最高学位:0-其他；1-名誉博士；
2-博士；
3-硕士；
4-学士；
9-未知。';
COMMENT ON COLUMN SYS_USER_EXT.CONTACT_ADDRESS IS  '通讯地址';
COMMENT ON COLUMN SYS_USER_EXT.POSTCODE_CONTACT IS  '通讯地址邮编';
COMMENT ON COLUMN SYS_USER_EXT.RESIDENTIAL_ADDRESS IS  '现居住地址';
COMMENT ON COLUMN SYS_USER_EXT.POSTCODE_RESIDENTIAL IS  '现居住地邮编';
COMMENT ON COLUMN SYS_USER_EXT.DOMICILE_ADDRESS IS  '户籍所在地';
COMMENT ON COLUMN SYS_USER_EXT.POSTCODE_DOMICILE IS  '户籍所在地邮编';
COMMENT ON COLUMN SYS_USER_EXT.HOUSEHOLD_REG IS  '户籍类型:城镇,非城镇';
COMMENT ON COLUMN SYS_USER_EXT.EMAIL IS  '电子邮箱';
COMMENT ON COLUMN SYS_USER_EXT.MOBILE_PHONE IS  '手机';
COMMENT ON COLUMN SYS_USER_EXT.HOME_TELPHONE IS  '家庭电话';
COMMENT ON COLUMN SYS_USER_EXT.EMERGENCY_CONTACT IS  '紧急联系人';
COMMENT ON COLUMN SYS_USER_EXT.EMERGENCY_CONTACT_PHONE IS  '紧急联系人手机';
COMMENT ON COLUMN SYS_USER_EXT.QQ IS  'QQ号';
COMMENT ON COLUMN SYS_USER_EXT.WECHAT IS  '微信号';
COMMENT ON COLUMN SYS_USER_EXT.REMARK IS  '备注';
COMMENT ON COLUMN SYS_USER_EXT.LEGAL_ORG IS  '法人机构编号';
COMMENT ON COLUMN SYS_USER_EXT.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_USER_EXT.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_USER_EXT.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_USER_EXT.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_USER_EXT.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_USER_EXT.UPD_DATE IS  '修改日期';

-- 菜单表
CREATE TABLE SYS_MENU(
  MENU_CODE  VARCHAR2 (32) NOT NULL,
  MENU_NAME  VARCHAR2 (100),
  MENU_TYPE  VARCHAR2 (2),
  MENU_URL  VARCHAR2 (256),
  PARENT_MENU_CODE  VARCHAR2 (32),
  MENU_MODULE  VARCHAR2 (32),
  IS_RELATIVE_PATH  VARCHAR2 (10),
  MENU_LEVEL  DECIMAL (5),
  MENU_SEQ  DECIMAL(5),
  MENU_ICON  VARCHAR2 (100),
  MENU_ICONA  VARCHAR2 (100),
  IS_VISIBLE  VARCHAR2 (10),
  OPEN_MODE  VARCHAR2 (20),
  MENU_TIP  VARCHAR2 (100),
  IS_START  VARCHAR2 (10),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_MENU PRIMARY KEY (MENU_CODE)
);
 COMMENT ON TABLE SYS_MENU IS '系统管理-菜单表';
 COMMENT ON COLUMN SYS_MENU.MENU_CODE IS  '菜单编码';
COMMENT ON COLUMN SYS_MENU.MENU_NAME IS  '菜单名称';
COMMENT ON COLUMN SYS_MENU.MENU_TYPE IS  '菜单类型:0-节点，1-功能';
COMMENT ON COLUMN SYS_MENU.MENU_URL IS  '菜单路径URL';
COMMENT ON COLUMN SYS_MENU.PARENT_MENU_CODE IS  '所属父菜单';
COMMENT ON COLUMN SYS_MENU.MENU_MODULE IS  '所属模块';
COMMENT ON COLUMN SYS_MENU.IS_RELATIVE_PATH IS  '是否相对路径';
COMMENT ON COLUMN SYS_MENU.MENU_LEVEL IS  '菜单层次';
COMMENT ON COLUMN SYS_MENU.MENU_SEQ IS  '同级菜单顺序号';
COMMENT ON COLUMN SYS_MENU.MENU_ICON IS  '菜单图标路径/或样式';
COMMENT ON COLUMN SYS_MENU.MENU_ICONA IS  '菜单激活图标路径/或样式';
COMMENT ON COLUMN SYS_MENU.IS_VISIBLE IS  '是否可视:1-是,0-否';
COMMENT ON COLUMN SYS_MENU.OPEN_MODE IS  '主窗口打开、弹出窗口打开';
COMMENT ON COLUMN SYS_MENU.MENU_TIP IS  '提示信息';
COMMENT ON COLUMN SYS_MENU.IS_START IS  '是否启用:1-是,0-否';
COMMENT ON COLUMN SYS_MENU.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_MENU.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_MENU.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_MENU.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_MENU.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_MENU.UPD_DATE IS  '修改日期';

-- 菜单国际化表
CREATE TABLE SYS_MENU_I18N(
  I18N_ID  VARCHAR2 (32) NOT NULL,
  MENU_CODE  VARCHAR2 (32),
  LANGUAGE  VARCHAR2 (10),
  COUNTRY  VARCHAR2 (10),
  MENU_LABEL  VARCHAR2 (100),
  MENU_TIP  VARCHAR2 (100),
  IS_START  VARCHAR2 (10),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_MENU_I18N PRIMARY KEY (I18N_ID)
);
 COMMENT ON TABLE SYS_MENU_I18N IS '系统管理-菜单国际化表';
 COMMENT ON COLUMN SYS_MENU_I18N.I18N_ID IS  'I18N_ID';
COMMENT ON COLUMN SYS_MENU_I18N.MENU_CODE IS  '菜单编码';
COMMENT ON COLUMN SYS_MENU_I18N.LANGUAGE IS  '语言';
COMMENT ON COLUMN SYS_MENU_I18N.COUNTRY IS  '国家';
COMMENT ON COLUMN SYS_MENU_I18N.MENU_LABEL IS  '菜单显示（中文）';
COMMENT ON COLUMN SYS_MENU_I18N.MENU_TIP IS  '提示信息';
COMMENT ON COLUMN SYS_MENU_I18N.IS_START IS  '是否启用:01--是,02--否';
COMMENT ON COLUMN SYS_MENU_I18N.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_MENU_I18N.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_MENU_I18N.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_MENU_I18N.UPD_DATE IS  '修改日期';

-- 角色表
CREATE TABLE SYS_ROLE(
  ROLE_CODE  VARCHAR2 (32) NOT NULL,
  ROLE_NAME  VARCHAR2 (100),
  REMARK  VARCHAR2 (1000),
  ROLE_LEVEL  VARCHAR2 (10),
  STATUS  VARCHAR2 (10),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_ROLE PRIMARY KEY (ROLE_CODE)
);
 COMMENT ON TABLE SYS_ROLE IS '系统管理-角色表';
 COMMENT ON COLUMN SYS_ROLE.ROLE_CODE IS  '角色编码';
COMMENT ON COLUMN SYS_ROLE.ROLE_NAME IS  '角色名称';
COMMENT ON COLUMN SYS_ROLE.REMARK IS  '角色描述';
COMMENT ON COLUMN SYS_ROLE.ROLE_LEVEL IS  '角色级别:对应机构级别';
COMMENT ON COLUMN SYS_ROLE.STATUS IS  '状态:01--启用，02--停用';
COMMENT ON COLUMN SYS_ROLE.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_ROLE.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_ROLE.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_ROLE.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_ROLE.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_ROLE.UPD_DATE IS  '修改日期';

-- 用户角色对照表
CREATE TABLE SYS_USER_ROLE(
  USER_ROLE_ID  VARCHAR2 (32) NOT NULL,
  USER_CODE  VARCHAR2 (32),
  ROLE_CODE  VARCHAR2 (32),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_USER_ROLE PRIMARY KEY (USER_ROLE_ID)
);
 COMMENT ON TABLE SYS_USER_ROLE IS '系统管理-用户角色对照表';
 COMMENT ON COLUMN SYS_USER_ROLE.USER_ROLE_ID IS  'ID';
COMMENT ON COLUMN SYS_USER_ROLE.USER_CODE IS  '用户编号';
COMMENT ON COLUMN SYS_USER_ROLE.ROLE_CODE IS  '角色编号';
COMMENT ON COLUMN SYS_USER_ROLE.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_USER_ROLE.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_USER_ROLE.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_USER_ROLE.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_USER_ROLE.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_USER_ROLE.UPD_DATE IS  '修改日期';

-- 角色权限表
CREATE TABLE SYS_AUTHORIZE(
  AUTHORIZE_ID  VARCHAR2 (32) NOT NULL,
  RESOURCE_ID  VARCHAR2 (32) NOT NULL,
  RESOURCE_NAME  VARCHAR2 (100),
  ROLE_CODE  VARCHAR2 (32),
  RESOURCE_TYPE  VARCHAR2 (10),
  AUTHORIZE_TYPE  VARCHAR2 (2),
  DATA_AUTH_TYPE  VARCHAR2 (10),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_AUTHORIZE PRIMARY KEY (AUTHORIZE_ID)
);
 COMMENT ON TABLE SYS_AUTHORIZE IS '系统管理-角色权限表';
 COMMENT ON COLUMN SYS_AUTHORIZE.AUTHORIZE_ID IS  '权限ID';
COMMENT ON COLUMN SYS_AUTHORIZE.RESOURCE_ID IS  '资源ID(包括菜单ID和按钮ID)';
COMMENT ON COLUMN SYS_AUTHORIZE.RESOURCE_NAME IS  '资源名称';
COMMENT ON COLUMN SYS_AUTHORIZE.ROLE_CODE IS  '角色编号';
COMMENT ON COLUMN SYS_AUTHORIZE.RESOURCE_TYPE IS  '资源类型:01-菜单,02-按钮';
COMMENT ON COLUMN SYS_AUTHORIZE.AUTHORIZE_TYPE IS  '授权类型:01-操作,02-授权,03-全部';
COMMENT ON COLUMN SYS_AUTHORIZE.DATA_AUTH_TYPE IS  '权限级别，对应机构级别（RESOURCE_TYPE为01且AUTHORIZE_TYPE为01或03时该字段可用）';
COMMENT ON COLUMN SYS_AUTHORIZE.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_AUTHORIZE.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_AUTHORIZE.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_AUTHORIZE.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_AUTHORIZE.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_AUTHORIZE.UPD_DATE IS  '修改日期';

-- 数据字典表
CREATE TABLE SYS_DICTIONARIES(
  DICT_ID  VARCHAR2 (32) NOT NULL,
  PARENT_ID  VARCHAR2 (32),
  DICT_TYPE  VARCHAR2 (1),
  DICT_CODE  VARCHAR2 (32),
  DICT_NAME  VARCHAR2 (100),
  DICT_DESC  VARCHAR2 (100),
  STATUS  VARCHAR2 (32),
  SORT_NO  DECIMAL (10),
  IS_SYSTEM  VARCHAR2 (2),
  MODULE  VARCHAR2 (10),
  LEGAL_ORG  VARCHAR2 (32),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_DICTIONARIES PRIMARY KEY (DICT_ID)
);
 COMMENT ON TABLE SYS_DICTIONARIES IS '系统管理-数据字典表';
 COMMENT ON COLUMN SYS_DICTIONARIES.DICT_ID IS  'ID';
COMMENT ON COLUMN SYS_DICTIONARIES.PARENT_ID IS  '上级ID';
COMMENT ON COLUMN SYS_DICTIONARIES.DICT_TYPE IS  '类型:0-分类,1-字典项,2-字典子项,3-字典码值';
COMMENT ON COLUMN SYS_DICTIONARIES.DICT_CODE IS  '代码';
COMMENT ON COLUMN SYS_DICTIONARIES.DICT_NAME IS  '名称';
COMMENT ON COLUMN SYS_DICTIONARIES.DICT_DESC IS  '描述';
COMMENT ON COLUMN SYS_DICTIONARIES.STATUS IS  '状态1:有效0:无效';
COMMENT ON COLUMN SYS_DICTIONARIES.SORT_NO IS  '排序';
COMMENT ON COLUMN SYS_DICTIONARIES.IS_SYSTEM IS  '是否系统类1:系统类0:业务类';
COMMENT ON COLUMN SYS_DICTIONARIES.MODULE IS  '模块';
COMMENT ON COLUMN SYS_DICTIONARIES.LEGAL_ORG IS  '法人行社';
COMMENT ON COLUMN SYS_DICTIONARIES.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_DICTIONARIES.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_DICTIONARIES.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_DICTIONARIES.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_DICTIONARIES.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_DICTIONARIES.UPD_DATE IS  '修改日期';

-- 数据字典国际化表
CREATE TABLE SYS_DICTIONARIES_I18N(
  I18N_ID  VARCHAR2 (32) NOT NULL,
  DICT_ID  VARCHAR2 (32),
  DICT_CODE  VARCHAR2 (32),
  LANGUAGE  VARCHAR2 (10),
  COUNTRY  VARCHAR2 (10),
  DICT_NAME  VARCHAR2 (100),
  DICT_DESC  VARCHAR2 (100),
  STATUS  VARCHAR2 (32),
  LEGAL_ORG  VARCHAR2 (32),
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_DICTIONARIES_I18N PRIMARY KEY (I18N_ID)
);
 COMMENT ON TABLE SYS_DICTIONARIES_I18N IS '系统管理-数据字典国际化表';
 COMMENT ON COLUMN SYS_DICTIONARIES_I18N.I18N_ID IS  'I18N_ID';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.DICT_ID IS  'ID';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.DICT_CODE IS  '代码';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.LANGUAGE IS  '语言';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.COUNTRY IS  '国家';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.DICT_NAME IS  '名称';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.DICT_DESC IS  '描述';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.STATUS IS  '状态1:有效0:无效';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.LEGAL_ORG IS  '法人行社';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_DICTIONARIES_I18N.UPD_DATE IS  '修改日期';

-- 代码生成表
CREATE TABLE SYS_CODER(
  CODER_ID  VARCHAR2 (32) NOT NULL,
  TITLE  VARCHAR2 (100),
  MODEL_NAME  VARCHAR2 (200),
  MODEL_NAME_CN  VARCHAR2 (200),
  PACKAGE_NAME  VARCHAR2 (200),
  CLASS_NAME  VARCHAR2 (100),
  FUNCTION_NAME  VARCHAR2 (100),
  TABLE_NAME  VARCHAR2 (50),
  TABLE_COMMENT  VARCHAR2 (200),
  FIELDS  BLOB,
  CODER_TYPE  VARCHAR2 (10),
  CRT_USER_CODE  VARCHAR2 (32),
  CRT_ORG_CODE  VARCHAR2 (32),
  CRT_DATE  DATE,
  UPD_USER_CODE  VARCHAR2 (32),
  UPD_ORG_CODE  VARCHAR2 (32),
  UPD_DATE  DATE,
CONSTRAINT SYS_CODER PRIMARY KEY (CODER_ID)
);
 COMMENT ON TABLE SYS_CODER IS '系统管理-代码生成表';
 COMMENT ON COLUMN SYS_CODER.CODER_ID IS  '代码生成ID';
COMMENT ON COLUMN SYS_CODER.TITLE IS  '描述';
COMMENT ON COLUMN SYS_CODER.MODEL_NAME IS  '模块名';
COMMENT ON COLUMN SYS_CODER.MODEL_NAME_CN IS  '模块名(中文)';
COMMENT ON COLUMN SYS_CODER.PACKAGE_NAME IS  '包名';
COMMENT ON COLUMN SYS_CODER.CLASS_NAME IS  '类名';
COMMENT ON COLUMN SYS_CODER.FUNCTION_NAME IS  '功能名称';
COMMENT ON COLUMN SYS_CODER.TABLE_NAME IS  '表名';
COMMENT ON COLUMN SYS_CODER.TABLE_COMMENT IS  '表描述';
COMMENT ON COLUMN SYS_CODER.FIELDS IS  '字段列表';
COMMENT ON COLUMN SYS_CODER.CODER_TYPE IS  '类型(单表，树形，主从表)';
COMMENT ON COLUMN SYS_CODER.CRT_USER_CODE IS  '创建人';
COMMENT ON COLUMN SYS_CODER.CRT_ORG_CODE IS  '创建机构';
COMMENT ON COLUMN SYS_CODER.CRT_DATE IS  '创建日期';
COMMENT ON COLUMN SYS_CODER.UPD_USER_CODE IS  '修改人';
COMMENT ON COLUMN SYS_CODER.UPD_ORG_CODE IS  '修改机构';
COMMENT ON COLUMN SYS_CODER.UPD_DATE IS  '修改日期';



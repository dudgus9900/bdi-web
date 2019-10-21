
/* Drop Tables */

DROP TABLE USER_INFO CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE USER_INFO
(
	-- ��������_��ȣ
	UI_NUM number(10,0) NOT NULL,
	-- ��������_�̸�
	UI_NAME varchar2(100) NOT NULL,
	-- ��������_����
	UI_AGE number(3,0),
	PRIMARY KEY (UI_NUM)
);



/* Comments */

COMMENT ON COLUMN USER_INFO.UI_NUM IS '��������_��ȣ';
COMMENT ON COLUMN USER_INFO.UI_NAME IS '��������_�̸�';
COMMENT ON COLUMN USER_INFO.UI_AGE IS '��������_����';




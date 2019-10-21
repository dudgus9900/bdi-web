
/* Drop Tables */

DROP TABLE USER_INFO CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE USER_INFO
(
	-- 유저정보_번호
	UI_NUM number(10,0) NOT NULL,
	-- 유저정보_이름
	UI_NAME varchar2(100) NOT NULL,
	-- 유저정보_나이
	UI_AGE number(3,0),
	PRIMARY KEY (UI_NUM)
);



/* Comments */

COMMENT ON COLUMN USER_INFO.UI_NUM IS '유저정보_번호';
COMMENT ON COLUMN USER_INFO.UI_NAME IS '유저정보_이름';
COMMENT ON COLUMN USER_INFO.UI_AGE IS '유저정보_나이';




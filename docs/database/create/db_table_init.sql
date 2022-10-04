#사용자
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
    user_idx      INT(11)	        NOT NULL AUTO_INCREMENT	COMMENT '회원인덱스' PRIMARY KEY ,
    user_id	    VARCHAR(30) 	NOT NULL COMMENT '회원 아이디' UNIQUE KEY,
    user_pw	    VARCHAR(100)	NOT NULL COMMENT '회원 비밀번호',
    kdg_idx       INT(11)	        NOT NULL COMMENT '유치원 인덱스',
    user_name	    VARCHAR(100)	NOT NULL COMMENT '회원 이름',
    email	        VARCHAR(100)	NOT NULL COMMENT '회원 이메일',
    birthday	    VARCHAR(14)	    NULL	 COMMENT '회원 생년월일',
    phone_number	VARCHAR(20)	    NOT NULL COMMENT '회원 전화번호',
    is_del	    CHAR(1)	        NOT NULL	DEFAULT 'N'	COMMENT '탈퇴유무: (Y/N)',
    register_time CHAR(14)        NULL DEFAULT NULL COMMENT '등록일자',
    update_time   CHAR(14)        NULL DEFAULT NULL COMMENT '수정일자'
    ) AUTO_INCREMENT=1;

#관리자
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
    admin_idx     INT(11)	        NOT NULL AUTO_INCREMENT	COMMENT '관리자인덱스' PRIMARY KEY ,
    admin_id	  VARCHAR(30) 	    NOT NULL COMMENT '관리자 아이디' UNIQUE KEY,
    admin_pw	  VARCHAR(100)	    NOT NULL COMMENT '관리자 비밀번호',
    admin_name	  VARCHAR(100)	    NOT NULL COMMENT '관리자명',
    admin_email	  VARCHAR(100)	    NOT NULL COMMENT '관리자 이메일',
    admin_tell	  VARCHAR(20)	    NOT NULL COMMENT '관리자 전화번호',
    admin_role    CHAR(3)           NOT NULL COMMENT 'SUP:슈퍼관리자, KDG:유치원관리자',
    kdg_idx       INT(11)	        NULL COMMENT '유치원 인덱스',
    is_del	      CHAR(1)	        NOT NULL DEFAULT 'N'	COMMENT '탈퇴유무: (Y/N)',
    register_time CHAR(14)          NULL DEFAULT NULL COMMENT '등록일자',
    update_time   CHAR(14)          NULL DEFAULT NULL COMMENT '수정일자'

    ) AUTO_INCREMENT=1;

# 유치원
DROP TABLE IF EXISTS `t_kindergarten`;
CREATE TABLE `t_kindergarten` (
    kdg_idx            INT(11)	    NOT NULL AUTO_INCREMENT	COMMENT '유치원인덱스' PRIMARY KEY ,
    kdg_name	         VARCHAR(100)	NOT NULL COMMENT '유치원명',
    kdg_address        VARCHAR(100)   NOT NULL COMMENT '유치원 주소',
    kdg_address_detail VARCHAR(100)	NOT NULL COMMENT '유치원 주소 상세',
    kdg_tell           VARCHAR(20)	NULL COMMENT '유치원 전화번호',
    kdg_points	     TEXT           NULL DEFAULT NULL COMMENT '유치원 위치 ',
    kdg_open_hour      VARCHAR(50)	NOT NULL COMMENT '유치원 오픈시간',
    kdg_info           TEXT           NULL DEFAULT NULL COMMENT '유치원 정보',
    service_idx        INT(11)        NULL DEFAULT NULL COMMENT '제공서비스 인덱스',
    is_del	         CHAR(1)	    NOT NULL	DEFAULT 'N'	COMMENT '삭제유무: (Y/N)',
    register_time      CHAR(14)       NULL DEFAULT NULL COMMENT '등록일자',
    update_time        CHAR(14)       NULL DEFAULT NULL COMMENT '수정일자'
    )  AUTO_INCREMENT=1;
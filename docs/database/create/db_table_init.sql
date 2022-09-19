CREATE TABLE T_USER (
        user_id	VARCHAR(300)	NOT NULL,
        passwd	VARCHAR(300)	NOT NULL,
        user_name	VARCHAR(300)	NOT NULL,
        email	VARCHAR(300)	NOT NULL,
        birth	DATE	NULL,
        phone_number	VARCHAR(300)	NOT NULL,
        nickname	VARCHAR(300)	NOT NULL,
        class_name	VARCHAR(300)	NULL,
        is_del	CHAR(1)	NOT NULL	DEFAULT 'Y'	,
        grade	VARCHAR(300)	NOT NULL    DEFAULT 'user'
);


COMMENT ON TABLE T_USER IS '회원';
COMMENT ON TABLE T_USER.passwd IS '비밀번호';
COMMENT ON TABLE T_USER.user_name IS '회원이름';
COMMENT ON TABLE T_USER.email IS '이메일';
COMMENT ON TABLE T_USER.birth IS '생년월일';
COMMENT ON TABLE T_USER.phone_number IS '회원전화번호';
COMMENT ON TABLE T_USER.nickname IS '회원닉네임';
COMMENT ON TABLE T_USER.class_name IS '학급명';
COMMENT ON TABLE T_USER.is_del IS '탈퇴:Y/ 회원:N';
COMMENT ON TABLE T_USER.grade IS '견주:user/업주:school';
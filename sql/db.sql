drop sequence sellpost_seq;
drop sequence sellreply_seq;
drop sequence freepost_seq;
drop sequence freereply_seq;

drop table member;
drop table buy_post;
drop table free_post;
drop table free_reply;
drop table sell_post;
drop table sell_reply;
drop table sell_assign;

/* 새 테이블 */
CREATE TABLE member (
	id VARCHAR2(50) NOT NULL, /* 아이디 */
	pass VARCHAR2(50) NOT NULL, /* 비밀번호 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	gender VARCHAR2(5) NOT NULL, /* 성별 */
	birth VARCHAR2(20) NOT NULL, /* 생년월일 */
	email VARCHAR2(100) NOT NULL, /* 이메일 */
	phone VARCHAR2(20) NOT NULL, /* 연락처 */
	login_flag CHAR(1) constraint login_CK CHECK(login_flag in ('0','1')), /* 로그인여부 */
	m_time DATE /* 가입일자 */
);

CREATE UNIQUE INDEX PK_member
	ON member (
		id ASC
	);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			id
		);

/* 새 테이블2 */
CREATE TABLE free_post (
	fp_no NUMBER NOT NULL, /* 글번호 */
	fp_category VARCHAR2(20) NOT NULL, /* 카테고리 */
	fp_title VARCHAR2(100) NOT NULL, /* 글제목 */
	fp_content VARCHAR2(500) NOT NULL, /* 내용 */
	id VARCHAR2(50) NOT NULL, /* 아이디 */
	fp_time DATE, /* 작성시간 */
	fp_count NUMBER /* 조회수 */
);

CREATE UNIQUE INDEX PK_free_post
	ON free_post (
		fp_no ASC
	);

ALTER TABLE free_post
	ADD
		CONSTRAINT PK_free_post
		PRIMARY KEY (
			fp_no
		);

/* 새 테이블3 */
CREATE TABLE free_reply (
	fr_no NUMBER NOT NULL, /* 글번호 */
	fr_time DATE NOT NULL, /* 작성시간 */
	fr_id VARCHAR2(50), /* 작성아이디 */
	fr_content VARCHAR2(500) /* 내용 */
);

CREATE UNIQUE INDEX PK_free_reply
	ON free_reply (
		fr_no ASC,
		fr_time ASC
	);

ALTER TABLE free_reply
	ADD
		CONSTRAINT PK_free_reply
		PRIMARY KEY (
			fr_no,
			fr_time
		);

/* 새 테이블4 */
CREATE TABLE sell_post (
	sp_no NUMBER NOT NULL, /* 글번호 */
	sp_category VARCHAR2(20) NOT NULL, /* 카테고리 */
	sp_title VARCHAR2(100) NOT NULL, /* 글제목 */
	sp_content VARCHAR2(500) NOT NULL, /* 내용 */
	id VARCHAR2(50) NOT NULL, /* 아이디 */
	sp_time DATE, /* 작성시간 */
	sp_filename VARCHAR2(100), /* 파일이름 */
	sp_count NUMBER default 0 /* 조회수 */
);

CREATE UNIQUE INDEX PK_sell_post
	ON sell_post (
		sp_no ASC
	);

ALTER TABLE sell_post
	ADD
		CONSTRAINT PK_sell_post
		PRIMARY KEY (
			sp_no
		);


/* 새 테이블5 */
CREATE TABLE sell_reply (
	sr_no NUMBER NOT NULL, /* 글번호 */
	sr_time DATE NOT NULL, /* 작성시간 */
	sr_id VARCHAR2(50), /* 작성아이디 */
	sr_content VARCHAR2(500) /* 내용 */
);

CREATE UNIQUE INDEX PK_sell_reply
	ON sell_reply (
		sr_no ASC,
		sr_time ASC
	);

ALTER TABLE sell_reply
	ADD
		CONSTRAINT PK_sell_reply
		PRIMARY KEY (
			sr_no,
			sr_time
		);

/* 새 테이블6 */
CREATE TABLE sell_assign (
	id VARCHAR2(50) NOT NULL, /* 아이디 */
	account_num VARCHAR2(20), /*계좌번호*/
	sa_time DATE, /* 인증된시간 */
	sell_count NUMBER
);

CREATE UNIQUE INDEX PK_sell_assign
	ON sell_assign (
		id ASC
	);

ALTER TABLE sell_assign
	ADD
		CONSTRAINT PK_sell_assign
		PRIMARY KEY (
			id
		);

/*새 테이블7*/
create table buy_post (
	bp_id varchar2(50) not null,
	sp_no number not null,
	bp_time date
);

alter table buy_post
	add
		constraint pk_buy_post
		primary key(bp_id, sp_no);
		
/*게시물 댓글 no 관련 sequence*/
create sequence sellpost_seq
start with 1
increment by 1
nocycle
nocache;

create sequence sellreply_seq
start with 1
increment by 1
nocycle
nocache;

create sequence freepost_seq
start with 1
increment by 1
nocycle
nocache;

create sequence freereply_seq
start with 1
increment by 1
nocycle
nocache;
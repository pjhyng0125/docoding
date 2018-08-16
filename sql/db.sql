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

/* �� ���̺� */
CREATE TABLE member (
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	pass VARCHAR2(50) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	gender VARCHAR2(5) NOT NULL, /* ���� */
	birth VARCHAR2(20) NOT NULL, /* ������� */
	email VARCHAR2(100) NOT NULL, /* �̸��� */
	phone VARCHAR2(20) NOT NULL, /* ����ó */
	login_flag CHAR(1) constraint login_CK CHECK(login_flag in ('0','1')), /* �α��ο��� */
	m_time DATE /* �������� */
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

/* �� ���̺�2 */
CREATE TABLE free_post (
	fp_no NUMBER NOT NULL, /* �۹�ȣ */
	fp_category VARCHAR2(20) NOT NULL, /* ī�װ� */
	fp_title VARCHAR2(100) NOT NULL, /* ������ */
	fp_content VARCHAR2(500) NOT NULL, /* ���� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	fp_time DATE, /* �ۼ��ð� */
	fp_count NUMBER /* ��ȸ�� */
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

/* �� ���̺�3 */
CREATE TABLE free_reply (
	fr_no NUMBER NOT NULL, /* �۹�ȣ */
	fr_time DATE NOT NULL, /* �ۼ��ð� */
	fr_id VARCHAR2(50), /* �ۼ����̵� */
	fr_content VARCHAR2(500) /* ���� */
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

/* �� ���̺�4 */
CREATE TABLE sell_post (
	sp_no NUMBER NOT NULL, /* �۹�ȣ */
	sp_category VARCHAR2(20) NOT NULL, /* ī�װ� */
	sp_title VARCHAR2(100) NOT NULL, /* ������ */
	sp_content VARCHAR2(500) NOT NULL, /* ���� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sp_time DATE, /* �ۼ��ð� */
	sp_filename VARCHAR2(100), /* �����̸� */
	sp_count NUMBER default 0 /* ��ȸ�� */
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


/* �� ���̺�5 */
CREATE TABLE sell_reply (
	sr_no NUMBER NOT NULL, /* �۹�ȣ */
	sr_time DATE NOT NULL, /* �ۼ��ð� */
	sr_id VARCHAR2(50), /* �ۼ����̵� */
	sr_content VARCHAR2(500) /* ���� */
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

/* �� ���̺�6 */
CREATE TABLE sell_assign (
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	account_num VARCHAR2(20), /*���¹�ȣ*/
	sa_time DATE, /* �����Ƚð� */
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

/*�� ���̺�7*/
create table buy_post (
	bp_id varchar2(50) not null,
	sp_no number not null,
	bp_time date
);

alter table buy_post
	add
		constraint pk_buy_post
		primary key(bp_id, sp_no);
		
/*�Խù� ��� no ���� sequence*/
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
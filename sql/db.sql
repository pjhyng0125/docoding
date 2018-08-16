drop sequence sellpost_seq;
drop sequence sellreply_seq;
drop sequence freepost_seq;
drop sequence freereply_seq;

drop table free_reply;
drop table sell_reply;
drop table free_post;
drop table buy_post;
drop table sell_post;
drop table sell_assign;
drop table member;
drop table manager;

/* �� ���̺� */
CREATE TABLE member (
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	pass VARCHAR2(50) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	gender VARCHAR2(5) NOT NULL, /* ���� */
	birth VARCHAR2(20) NOT NULL, /* ������� */
	email VARCHAR2(100) NOT NULL, /* �̸��� */
	phone VARCHAR2(20) NOT NULL, /* ����ó */
	login_flag char(1) constraint login_CK check(login_flag in ('0','1')), /* �α��ο��� */
	m_time DATE, /* �������� */
	cash NUMBER default 0
);

CREATE UNIQUE INDEX PK_member
	ON member (
		id ASC
	);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (id);

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
		PRIMARY KEY (fp_no);

/* �� ���̺�3 */
CREATE TABLE free_reply (
	fp_no NUMBER NOT NULL, /*���� �Խù� ��ȣ*/
	fr_no NUMBER NOT NULL, /* �۹�ȣ */
	fr_time DATE NOT NULL, /* �ۼ��ð� */
	fr_id VARCHAR2(50), /* �ۼ����̵� */
	fr_content VARCHAR2(500) /* ���� */
);

CREATE UNIQUE INDEX PK_free_reply
	ON free_reply (fp_no ASC, fr_no ASC);

ALTER TABLE free_reply
	ADD
		CONSTRAINT PK_free_reply
		PRIMARY KEY (fp_no, fr_no);

/* �� ���̺�4 */
CREATE TABLE sell_post (
	sp_no NUMBER NOT NULL, /* �۹�ȣ */
	sp_category VARCHAR2(20) NOT NULL, /* ī�װ� */
	sp_title VARCHAR2(100) NOT NULL, /* ������ */
	sp_content VARCHAR2(500) NOT NULL, /* ���� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	sp_time DATE, /* �ۼ��ð� */
	sp_filename VARCHAR2(100), /* �����̸� */
	sp_count NUMBER default 0, /* ��ȸ�� */
	sold_count NUMBER default 0
);

CREATE UNIQUE INDEX PK_sell_post
	ON sell_post (
		sp_no ASC
	);

ALTER TABLE sell_post
	ADD
		CONSTRAINT PK_sell_post
		PRIMARY KEY (sp_no);


/* �� ���̺�5 */
CREATE TABLE sell_reply (
	sp_no NUMBER NOT NULL, /*�Ǹ� �Խù� ��ȣ*/
	sr_no NUMBER NOT NULL, /* �۹�ȣ */
	sr_time DATE NOT NULL, /* �ۼ��ð� */
	sr_id VARCHAR2(50), /* �ۼ����̵� */
	sr_content VARCHAR2(500) /* ���� */
);

CREATE UNIQUE INDEX PK_sell_reply 
	ON sell_reply (sp_no ASC, sr_no ASC);

ALTER TABLE sell_reply
	ADD
		CONSTRAINT PK_sell_reply
		PRIMARY KEY (sp_no, sr_no);


/* �� ���̺�6 */
CREATE TABLE sell_assign (
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	account_num VARCHAR2(20), /*���¹�ȣ*/
	sa_time DATE, /* �����Ƚð� */
	sell_count NUMBER default 0,
	profit_sell NUMBER default 0
);

CREATE UNIQUE INDEX PK_sell_assign
	ON sell_assign (
		id ASC
	);

ALTER TABLE sell_assign
	ADD
		CONSTRAINT PK_sell_assign
		PRIMARY KEY (id);

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

/*�� ���̺�8*/
create table manager (
	profit NUMBER default 0
);

/*foreign key ����*/
alter table sell_assign
	add
		constraint fk_sell_assign
		foreign key (id) references member (id);
alter table buy_post
	add
		constraint fk_buy_post
		foreign key (bp_id) references member (id);		
alter table buy_post
	add
		constraint fk_buy_post_2
		foreign key (sp_no) references sell_post (sp_no);
alter table free_post
	add
		constraint fk_free_post
		foreign key (id) references member (id);
alter table sell_post
	add
		constraint fk_sell_post
		foreign key (id) references member (id);
alter table free_reply
	add
		constraint fk_free_reply
		foreign key (fp_no) references free_post (fp_no);
alter table sell_reply
	add
		constraint fk_sell_reply
		foreign key (sp_no) references sell_post (sp_no);

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

		


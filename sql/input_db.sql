
select * from member;
select * from sell_assign

insert into member values
('abcd1221323', '1234', 'ȫ�浿', '��', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd', '1234', '�浿��', '��', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd56', '1234', '����', '��', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd5678', '1234', '��ƹ���', '��', '1999-09-09', 'abcd5678@naver.com', '010-1234-5678', '0', '2018-08-16', 1000);
insert into member values
('abc123qw', '1234', '�տ���', '��', '1999-09-09', 'abcd5678@naver.com', '010-1234-5678', '0', '2018-08-16', 1000);
insert into member values
('qwer56', '1234', '�谡��', '��', '1999-09-09', 'qwer5678@daum.net', '010-1234-5678', '0', '2018-08-16', 1000);
insert into member values
('zxcv56', '1234', '�質��', '��', '2000-10-09', 'zxcv56@daum.net', '010-1234-5678', '0', '2018-08-16', 1000);
insert into member values
('asdf56', '1234', '��ٿ�', '��', '2000-10-09', 'asdf56@daum.net', '010-1234-5678', '0', '2018-08-16', 1000);
insert into member values
('asdfg777', '1234', '���', '��', '2000-10-09', 'asdf777@daum.net', '010-1234-5678', '0', '2018-08-16', 1000);


select * from sell_assign;

insert into sell_assign values ('asdf56', '1234-1234', '2018-08-16', 5, 5000);
insert into sell_assign values ('qwer56', '5678-1234', '2018-08-16', 5, 5000);

insert into buy_post values ('abcd','1','2018-08-16');
insert into buy_post values ('abcd','2','2018-08-17');
insert into buy_post values ('abcd','3','2018-08-20');
insert into buy_post values ('abcd','4','2018-08-20');
insert into buy_post values ('abcd','5','2018-08-21');
insert into buy_post values ('abcd','6','2018-08-22');
insert into buy_post values ('abcd','7','2018-08-23');
insert into buy_post values ('abcd','8','2018-08-23');
insert into buy_post values ('abcd','9','2018-08-23');
insert into buy_post values ('abcd','10','2018-08-25');

insert into sell_post values ('1','java','java ���� ','���ʳ���','asdf56','2018-05-15','java_basic','15','3');
insert into sell_post values ('2','java','java ���� ','���ʳ���','asdf56','2018-05-15','java_basic','15','10');
insert into sell_post values ('3','javascript','javascript ���� ���� �� �ִ�! ','���ʳ���','asdf56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('4','db','MySql ���̺� ���� �����ڵ� ','���ʳ���','qwer56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('5','db','db join ���� ','���ʳ���','qwer56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('6','javascript','���� javascript ','���ʳ���','qwer56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('7','jQuery','sql ���� ','jQuery�� �Խ��� �����','qwer56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('8','jQuery','sql ���� ','���ʳ���','asdf56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('9','javaScript','�ڹٽ�ũ��Ʈ�� �̿��� ����Ʈ','�����Ը��� ����Ʈ���� ����','asdf56','2018-05-2','javascript.txt','37','15');
insert into sell_post values ('10','java','java ���� ����Ʈ','java�� ���� ����� ����Ʈ','qwer56','2018-05-2','calc.java','37','121');



select * from member;
select * from sell_assign

insert into member values
('abcd1221323', '1234', '홍길동', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd', '1234', '길동이', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd56', '1234', '길동이', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);


select * from sell_assign;

insert into sell_assign values
('abcd12345', '1234-1234', '2018-08-16', 5, 5000);

insert into buy_post values ('abcd','1','2018-08-16');
insert into buy_post values ('abcd','2','2018-08-17');
insert into buy_post values ('abcd','3','2018-08-20');

insert into sell_post values ('1','java','java 기초 ','기초내용','abcd','2018-05-15','java_basic','15','3');
insert into sell_post values ('2','java','java 기초 ','기초내용','abcd','2018-05-15','java_basic','15','10');
insert into sell_post values ('3','sql','sql 기초 ','기초내용','abcd','2018-05-2','sql_basic','37','7');


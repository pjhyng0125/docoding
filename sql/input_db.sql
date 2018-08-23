
select * from member;
select * from sell_assign

insert into member values
('abcd1221323', '1234', '홍길동', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd', '1234', '길동이', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd56', '1234', '길동이', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);
insert into member values
('abcd777', '1234', '김호철', '남', '1999-09-09', 'hocheol@naver.com', '010-1234-5678', '1', '2018-08-21', 1000);


select * from sell_assign;
select * from manager;
update manager set profit = profit+100

insert into sell_assign values
('abcd12345', '1234-1234', '2018-08-16', 5, 5000);
insert into sell_assign values
('asdf56', '1234-1234', '2018-08-16', 5, 5000);
insert into sell_assign values
('qwer56', '1234-1234', '2018-08-16', 5, 5000);
insert into sell_assign values
('abcd', '1234-1234', '2018-08-20', 5, 5000);

update sell_assign set profit_sell=5000
where id='abcd';

select * from buy_post;

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
insert into buy_post values ('abcd','11','2018-08-28');

select * from sell_post where id='abcd';

insert into sell_post values ('1','java','java 기초 ','기초내용','abcd56','2018-05-15','java_basic','15','3');
insert into sell_post values ('2','java','java 기초 ','기초내용','abcd56','2018-05-15','java_basic','15','10');
insert into sell_post values ('3','jQuery','jquery 기초 ','기초내용','abcd56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('4','jquery','jquery를 통한 웹프로그래밍 ','기초내용','abcd56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('5','jquery','jquery 레포트 ','기초내용','abcd56','2018-05-2','jquery_homework.txt','37','7');
insert into sell_post values ('6','jquery','jquery 레포트2','기초내용','abcd56','2018-05-2','jquery_homework2.txt','5','5');
insert into sell_post values ('7','javascript','자바스크립트의 기초 ','기초내용','abcd56','2018-05-2','basic.jsp','3','7');
insert into sell_post values ('8','javascript','자바스크립트를 활용한 게시판 만들기 ','기초내용','abcd56','2018-05-2','write.jsp','39','2');
insert into sell_post values ('9','javascript','자바스크립트 계산기','기초내용','abcd56','2018-05-2','calc.jsp','37','7');
insert into sell_post values ('10','javascript','기초 자바스크립트 ','기초내용','abcd56','2018-05-2','javascript_basic.txt','142','12');
insert into sell_post values ('11','javascript','기초 자바스크립트2 ','기초내용2','abcd56','2018-05-2','javascript_basic2.txt','142','12');
insert into sell_post values ('12','javascript','자바스크립트를 배워보자 ','자바 기초내용','abcd','2018-08-20','js_basic.txt','12','8');
insert into sell_post values ('13','java','자바스크립트를 배워보자 ','자바 기초내용','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('14','java','자바스크립트 ','자바 기초내용','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('15','java','자바스크립트를 배워보자 ','자바 기초내용','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('16','java','자바스크립트','자바 기초내용','abcd','2018-08-21','java_basic.txt','11','20');
insert into sell_post values ('17','java','자바스크립트 배워 ','자바 기초내용','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('18','java','자바스크립트 볼까 ','자바 기초내용','abcd','2018-08-20','java_basic.txt','11','20');


insert into free_post values ('1','잡담','제목연습','이게 클릭이란거다.','abcd','2018-08-22','3');
insert into free_post values ('2','잡담','제목연습','이게 클릭이란거다.','abcd','2018-08-22','3');
insert into free_post values ('1','잡담','제목연습','이게 클릭이란거다.','abcd','2018-08-22','3');


insert into free_reply values ('1','1','2018-08-22','qwer56','살아있네');
insert into free_reply values ('2','1','2018-08-22','abcd','살아있네');

select * from free_reply where fr_id='abcd'; 
select * from free_post where fp_no=2;
select to_char(fp_time, 'yyyy-mm-dd') fp_time, fp_title, id, to_char(fr_time, 'yyyy-mm-dd') fr_time, fr_id, fr_content
		from (select fp_time, fp_title, id, fr_time, fr_id, fr_content, rownum rn 
				from (select fp_time, fp_title, id, fr_time,fr_id, fr_content
					  from free_reply fr, free_post fp
					  where fr.fp_no = fp.fp_no and fr.fr_id='abcd'
					  order by fr.fr_time desc)
			  )
		where rn >=1 and rn <= 1
		
		select fp_time, fp_title, id, fr_time,fr_id, fr_content
					  from free_reply fr, free_post fp
					  where fr.fp_no = fp.fp_no and fr.fr_id='abcd'
					  order by fr.fr_time desc;
				

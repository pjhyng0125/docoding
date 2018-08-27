insert into member values
('abcd', '1234', '길동이', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '1', '2018-08-16', 1000);


select * from member;

-- demo play data - member
insert into member values
('docoding1234', '1234', '김상식', '남', '1989-8-15', 'docoding1234@naver.com', '010-0823-2018', '0', '2018-08-11', 5000);
insert into member values
('abcd1234', '1234', '홍길동', '남', '1989-09-09', 'gil1234@naver.com', '010-1234-5678', '0', '2018-08-11', 1000);
insert into member values
('abcd5678', '1234', '길동이', '남', '2000-12-09', 'abcd1234@naver.com', '010-5678-9874', '0', '2018-08-16', 3000);
insert into member values
('abcd777', '1234', '김호철', '남', '2012-07-09', 'hocheol@naver.com', '010-3553-5678', '0', '2018-08-12', 0);
insert into member values
('gayoung77', '1234', '김가영', '여', '1995-10-29', 'young@daum.net', '010-7744-2787', '0', '2018-08-17', 0);
insert into member values
('nayoung123', '1234', '김나영', '여', '2012-07-09', 'nanana@naver.com', '010-1224-8757', '0', '2018-08-18', 0);
insert into member values
('dayoung486', '1234', '이다영', '여', '2004-01-29', 'dy0787@naver.com', '010-0787-2234', '0', '2018-08-21', 0);
insert into member values
('choi1257', '1234', '최승철', '남', '1987-09-03', 'choi1257@nate.com', '010-1234-1257', '0', '2018-08-21', 0);
insert into member values
('ukki5557', '1234', '김상욱', '남', '1994-03-16', 'ukki5557@naver.com', '010-1224-5557', '0', '2018-08-21', 0);
insert into member values
('qwer7777', '1234', '이진성', '남', '2012-12-12', 'qwer7777@naver.com', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('asdf7777', '1234', '한우리', '여', '2012-11-29', 'asdf7777@naver.com', '010-4567-5432', '0', '2018-08-21', 0);
insert into member values
('zxcv7777', '1234', '조민아', '여', '2000-01-09', 'zxcv7777@naver.com', '010-3399-9933', '0', '2018-08-21', 0);
insert into member values
('kakao777', '1234', '김영식', '남', '1977-07-14', 'kakako777@daum.net', '010-4887-5887', '0', '2018-08-21', 0);
insert into member values
('547dodo', '1234', '김호철', '남', '2007-05-18', 'cheol@daum.net', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('doco1234', '1234', '김도상', '남', '1999-02-23', 'dodo1234@naver.com', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('sarang2lub', '1234', '김사랑', '여', '1977-07-07', 'sarang2lub@naver.com', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('mgame5588', '1234', '박호순', '남', '2012-10-14', 'soon456@naver.com', '010-2257-5678', '0', '2018-08-21', 0);



select * from sell_assign;

-- demo play data - sell_assign
insert into sell_assign values
('docoding1234', '32-8756-3499', '2018-08-12', 12, 5800); --  29번
insert into sell_assign values
('abcd1234', '32-2234-1278', '2018-08-16', 1, 1400);	-- 판매 횟수 7번 
insert into sell_assign values
('qwer7777', '17-2232-7749', '2018-08-21', 2, 2000);
insert into sell_assign values
('asdf7777', '17-9292-3499', '2018-08-22', 3, 400);
insert into sell_assign values
('zxcv7777', '80-8756-3499', '2018-08-22', 1, 400);
insert into sell_assign values
('kakao777', '80-8756-3499', '2018-08-23', 5, 3600);		--24개 판매 게시글




select * from sell_post;

-- demo play data - sell_post
						--  게시물번호  카테고리       제목                      내용        작성자             작성일자                  파일이름            조회수   판매횟수
insert into sell_post values ('1','"Java"','java를 이용한 계산기 ','java 가지고 기초적인 계산기 만들어 봤는데 필요하면 쓰세요.','docoding1234','2018-08-13','calc.jpg','38','7');
insert into sell_post values ('2','"Java"','java 로또머신  ','진짜 제가 짜서 그런게 아니라 숫자 진짜 레알 잘맞음 지난주 3등 당첨됨 ㅇㅈ?','docoding1234','2018-08-14','lotto.jpg','127','8');
insert into sell_post values ('3','"Java"','java 기초문법 예제','제가 java 처음배울 때 연습한 예제임 저 이거 공부해서 컴프 a+ 뜸 .','docoding1234','2018-08-14','basic.jpg','15','2');
insert into sell_post values ('4','"Java"','교수님 몰래 보세요 ','이거 우리학교  지난 컴프 족보인데 님들 학교에서 나올진 모르겠는데 참고하셈.','docoding1234','2018-08-14','test.jpg','42','7');
insert into sell_post values ('5','"Java"','java for문 문법 ','java for문 예제들 참고하셈.','docoding1234','2018-08-15','for.jpg','7','0');
insert into sell_post values ('6','"Java"','java action listener 자료','냉무~','docoding1234','2018-08-15','action.jpg','15','1');
insert into sell_post values ('7','"Java"','java 기초문법 예제2 ','필요하면 쓰세요.','docoding1234','2018-08-16','basic2.jpg','3','0');
insert into sell_post values ('8','"DB"','ORACLE 환경설정 메뉴얼','님들 ORACLE 환경설정 메뉴얼임 이거보고 못하면 DB접어야함 ㄹㅇ','docoding1234','2018-08-16','ORACLE_menual.jpg','37','0');
insert into sell_post values ('9','"DB"','SQL 기초문법 TXT','님들 시작이 반인거 아시져? 이거만 익히면 sql반 배운거~','docoding1234','2018-08-16','calc.java','22','0');
insert into sell_post values ('10','"JavaScript"','이젠 나도 할 수있다! 웹만들기 ','html기초지식있는 분만 보세요','docoding1234','2018-08-17','basic.jsp','64','2');
insert into sell_post values ('11','"JavaScript"','이젠 나도 할 수있다! 웹만들기2 ','지난번 JavaScript 2탄 자료 ','docoding1234','2018-08-20','basic2.jsp','41','1');
insert into sell_post values ('12','"JavaScript"','이젠 나도 할 수있다! 웹만들기3 ','JavaScript 마지막 예제들 참고하세요~ .','docoding1234','2018-08-22','basic3.jsp','11','1');

insert into sell_post values ('13','"JSP"','JSP 기초지식','JSP 강의자료','abcd1234','2018-08-23','basic_JSP.jsp','11','7');
insert into sell_post values ('14','"Java"','2017년 1학기 JAVA 기말자료 ','교수님 몰래보세요','qwer7777','2018-08-23','finalexam.java','77','7');
insert into sell_post values ('15','"DB"','MySQL 문법자료 ','my sql 강의자료','qwer7777','2018-08-23','mysql.txt','31','3');

insert into sell_post values ('16','"DB"','DB를 설계해보자! ','DB설계에 필요한 것들 작성해봤는데 필요하면 쓰세요','asdf7777','2018-08-23','basic_sql.txt','13','1');
insert into sell_post values ('17','"DB"','DB를 설계해보자!2탄 ','지난번 자료에 이은 2탄이에요~','asdf7777','2018-08-23','basic_sql2.txt','9','1');
insert into sell_post values ('18','"DB"','DB를 설계해보자!3탄 ','마지막 자료에요~','asdf7777','2018-08-23','basic_sql3.txt','4','0');

insert into sell_post values ('19','"jQuery"','jQuery 자료','필요하면 보세요','zxcv7777','2018-08-23','jQuery.txt','15','2');

insert into sell_post values ('20','"jQuery"','kakao jquery1탄','필요하면 보세요','kakao777','2018-08-23','jQueryk1.txt','15','4');
insert into sell_post values ('21','"jQuery"','kakao jquery2탄','필요하면 보세요','kakao777','2018-08-24','jQueryk2.txt','15','4');
insert into sell_post values ('22','"jQuery"','kakao jquery3탄','필요하면 보세요','kakao777','2018-08-25','jQueryk3.txt','15','4');
insert into sell_post values ('23','"jQuery"','kakao jquery4탄','필요하면 보세요','kakao777','2018-08-26','jQueryk4.txt','15','3');
insert into sell_post values ('24','"jQuery"','kakao jquery5탄','필요하면 보세요','kakao777','2018-08-27','jQueryk5.txt','15','3');






insert into buy_post values ('docoding1234','1','2018-08-16');

select * from manager;



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
				

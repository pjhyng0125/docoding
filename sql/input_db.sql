insert into member values
('encore', '1234', '엔코아', '남', '1997-10-31', 'encore@naver.com', '010-1234-5678', '0', '2018-08-27', 0);
insert into member values
('abcd', '1234', '길동이', '남', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '0', '2018-08-16', 1000);

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
				
					  
----------------------------------------------------------------------------
--DB
insert into SELL_POST
values (sellpost_seq.nextVal,'DB','alter 핵심 요약 정리', 'alter 핵심 요약 정리

칼럼추가: ADD (추가칼럼명 자료형)
칼럼수정: MODIFY (기존칼럼명 자료형)
제약수정: modify 컬럼명 (constraint 제약명) not null | null
칼럼삭제: DROP COLUMN 삭제칼럼명
칼럼이름변경: RENAME COLUMN 기존칼럼명 TO 새컬럼명
칼럼명사용안함: SET UNUESD 칼럼명
UNUSED 설정된 칼럼들 삭제: DROP UNUSED COLUMN);

ex1> 컬럼 추가
alter table player
add address varchar2(80);

ex2> 칼럼 삭제
alter table player 
drop column address;

ex3> 칼럼 변경
alter table team_temp 
modify (orig_yyyy varchar2(8) default "20020129" not null);

ex4> 칼럼명 변경
alter table player 
rename column player_ID to temp_ID;', 'encore', sysdate, 'db_1.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','select 문장 실행 순서', '1. select 칼럼명 [ALIAS명]
2. from 테이블명
3. where 조건식
4. group by 칼럼 || 표현식
5. having 그룹 조건식
6. order by 칼럼 || 표현식
2->3->4->5->6->1', 'encore', sysdate, 'db_1.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','order by절','order by 절: 특정 칼럼을 기준으로 정렬하여 출력
order by 컬럼명 || ALIAS명 || 별칭 || 칼럼 순서를 나타내는 정수
sql 문장의 제일 마지막에 위치

order by 칼럼 or 표현식 [ASC(오름차순, 기본값) || DESC(내림차순,ㅎ->ㄱ)]
order by player_name DESC;
order by 포지션(별칭) ASC;
Oracle: NULL 값을 가장 큰 값으로 취급

ex1>
select player_name 선수명, position 포지션, back_no 백넘버 from player
where back_no is not null
order by 3 desc, 2, 1;=> DB의 index는 1부터 시작

ex2>
select dname, loc area, deptno from dept 
order by 1, area, 3 DESC;', 'encore', sysdate, 'db_3.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','DCL(Data Control Language)','DCL(Data Control Language)
유저를 생성하고 권한을 제어할 수 있는 명령어

유저 생성 권한 부여
grant create user to scott; => 유저 생성 권한 부여
grant create session to pjh; => 로그인 권한 부여
grant create table to pjh; => 테이블 생성 권한 부여
grant select on menu to scott; => 테이블 select 권한 부여

Role을 이용한 권한 부여
grant create session, create table to login_tabel; => login_table(role) 생성
grant login_table to pjh; => role 권한 부여

grant connect, resource to pjh; => connect(role), resource(role) 내장 role 권한 부여', 'encore', sysdate, 'db_4.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','outer join(외부 조인)','join 조건에서 동일한 값이 없는 행도 반환할 경우
명시적 OUTER JOIN 사용 적극 권장
JOIN조건을 FROM절에서 정의하겠다=> USING/ON 필수 사용

1. LEFT [OUTER] JOIN
조인 수행시 먼저 좌측 테이블 데이터 읽은 후=> 우측 테이블 JOIN 대상 데이터 읽어옴
A left [outer] join B=> A와 B 비교 후 B의 JOIN 칼럼에서 같은 값이 있을 때 해당 데이터 가져옴
같은 값이 없는 경우 B 테이블 컬럼 NULL 값으로 채움
outer join을 통해 NULL값인 컬럼의 정보도 가져올 수 있다!

2. RIGHT OUTER JOIN
우측이 기준이 되어 결과 생성
A right [outer] join B=> B 기준

3. FULL OUTER JOIN
좌측, 우측 테이블의 모든 데이터를 읽어 JOIN하여 결과 생성
A full [outer] join B=> A, B 둘다 기준', 'encore', sysdate, 'db_5.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','년도별 입사 인원수 출력 SQL문 (decode)','select count(*) as total, 
count(decode(to_char(hiredate,"yyyy"),"1980", hiredate)) as 1980,
count(decode(to_char(hiredate,"yyyy"), "1981", hiredate)) as 1981,
count(decode(to_char(hiredate,"yyyy"), "1982", hiredate)) as 1982,
count(decode(to_char(hiredate,"yyyy"), "1987", hiredate)) as 1987
from emp;', 'encore', sysdate, 'db_6.png',0,0);
-------------------------------------------------------------------------------------------------------------------------
--java
insert into SELL_POST
values (sellpost_seq.nextVal,'Java','구구단 파일 입출력','public class GugudanTest {
public static void main(String[] args) throws IOException {
System.out.println("<<구구단>>");	
System.out.print("원하는 단? ");
boolean flag = true;
do { 
int start = System.in.read()-48;
System.in.read();System.in.read();
for (int dan = start; dan < 10; dan++) {
for (int i = 1; i < 10; i++) {
System.out.println(dan+"*"+i+"="+(dan*i));
}}
}while(flag);}}', 'encore', sysdate, 'java_1.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'Java','로또 번호 생성 프로그램','public class Lotto {
int [] lotto;
Random r;
public Lotto() {
lotto = new int[6];
r = new Random();
public void generateNum() {//로또번호발생
for(int i=0; i<lotto.length; i++) {//배열인덱스 0~5
lotto[i]=r.nextInt(45)+1;//랜덤한 수를 저장
boolean flag = duplicateNumCheck(i);
if(flag) {//(flag==true) {
i--;  
}}}
public boolean duplicateNumCheck(int idx) {//중복숫자검사
for(int i=idx-1; i>-1; i--) {
if(lotto[idx] == lotto[i]) {//중복된 수가 발견되었다면!!
return true;}}
return false; 
}
public void printNum() {//로또번호출력(배열에 입력된 값을 출력)
Arrays.sort(lotto);
for(int i=0; i<lotto.length; i++) {//배열인덱스 0~5
System.out.print(lotto[i]);
if(i<lotto.length-1)System.out.print(", ");		  
}
}}}', 'encore', sysdate, 'java_2.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'Java','배열을 이용한 사원 관리 프로그램','names = new Vector<>();}//생성자

public void insert(String name) {//데이터 입력
names.add(name);
}//insert

public void select() {//데이터 검색
System.out.println("\n#이름목록");  
for (int i = 0; i < names.size(); i++) {
System.out.println(names.get(i));}}

public void update(String oldName, String newName) {//데이터 수정
for (int i = 0; i < names.size(); i++) {
if(oldName.equals(names.get(i))) {
names.set(i, newName);
break;}}}//update

public void delete(String delName) {//데이터 삭제
names.remove(delName);}//delete

public boolean existNameCheck(String name) {//존재하는 이름 체크
if(names.contains(name))return true;	  	  
return false;
}//existNameCheck}', 'encore', sysdate, 'java_3.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'Java','Java를 이용한 BaseBall Game 핵심코드','@Override
public void actionPerformed(ActionEvent e) {
Object ob = e.getSource();
if(ob==tf) {
 String str = tf.getText();//"369"
for(int i=0; i<user.length; i++) {
user[i]=str.charAt(i)-48;}

 int strike=0, ball=0;
for(int i=0; i<com.length; i++) {//com배열
for(int j=0; j<user.length; j++) {//user배열
if(com[i] == user[j]) {//같은수 ---> 스트라이크 또는 볼의 후보!!
if(i==j) {//같은 자릿수 비교 ---> 스트라이크!!
strike++;
}else {//다른 자릿수  ---> 볼!!
ball++; }}}}//for
ta.append("1: "+str+" ▶ "+strike+"Strike "+ball+"Ball\n");
tf.setText("");
}else if(ob==bt_new) {
createNum();
}else if(ob==bt_clear) {
ta.setText("");
tf.setText("");
}else if(ob==bt_dap) {
ta.append("▣ 정답은 ["+com[0]+com[1]+com[2]+"]입니다.\n");
}else if(ob==bt_exit) {
System.exit(0);}}
public static void main(String[] args) {
new BaseBallGame();
}}', 'encore', sysdate, 'java_4.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'Java','TCP전송방식 개념정리','<TCP전송방식>
1. 연결방식
- 연결기반(connection-oriented)
- 연결 후 통신(전화기)
- 1:1 통신방식
2. 특징
- 데이터의 경계를 구분 안 함.(byte-stream)
- 신뢰성 있는 데이터 전송
- 데이터의 전송순서가 보장.
- 데이터의 수신여부를 확인함(데이터가 손실되면 재전송)
- 패킷을 관리할 필요가 없음
- UDP보다 전송속도가 느림
3. 관련 클래스
- Socket, ServerSocket', 'encore', sysdate, 'java_5.png',0,0);

-----------------------------------------------------------------
--jsp
insert into sell_assign values ('qwer7777','100-0011-1101','2018-08-28',0,0);
insert into sell_assign values ('asdf7777','100-0011-1102','2018-08-28',0,0);
insert into sell_assign values ('zxcv7777','100-0011-1103','2018-08-28',0,0);
insert into sell_assign values ('kakao777','100-0011-1104','2018-08-28',0,0);
insert into sell_assign values ('547dodo','100-0011-1105','2018-08-28',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','계산기 관련 코드입니다.','안녕하세요.
계산기 관련 코드입니다.
간단한 사칙연산이 가능하도록 한 코드에요.
부디 공부하시면서 많은 도움 되시길 바라겠습니다!','qwer7777',sysdate,'calc.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','따끈따끈한 구구단 소스!!','java나 c언어를 할 때 한번 쯤은 해보셨을 구구단입니다 ㅎㅎ
이것만 보고 익히신다면 jsp에서도 어렵지 않아요!!
필요하시다면 구매 ^^ 부탁드릴게요','asdf7777',sysdate,'gugudan.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','간단한 비밀번호 확인방법입니다.','jsp를 공부하면서 익힌 비밀번호 확인방법입니다.
쉽게 생각하실 분들도 있으시겠지만 jsp가 처음이신분들께 추천드려요~~','zxcv7777',sysdate,'passCheck.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','페이지이동 관련 코드입니다.','간단한 코드입니다.
하지만 충분히 구매할 가치가 있습니다. 고민말고 구매해주세요','kakao777',sysdate,'pageMove.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','회원가입이 궁금하신가요?','회원가입이 간단해 보여도 꽤나 까다로워요!
이 코드를 양식으로 쓰시면 나중에 편하실거에요 ㅎㅎ 제가 장담합니다.
혹시나 궁금하신 사항들 있으시면 언제든지 !! 댓글 남겨주세요^^
감사합니다~~','547dodo',sysdate,'input.png',0,0);
-----------------------------------------------------------------
--js
--판매자 인증
insert into sell_assign values ('doco1234','110-1111-1234','2018-08-27',0,0);
insert into sell_assign values ('sarang2lub','111-1231-1111','2018-08-27',0,0);
insert into sell_assign values ('mgame5588','112-1111-1121','2018-08-27',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JavaScript','js 빌트인함수입니다!','제목 그대로 js 빌트인 함수를 참고하시기 편하도록 모아놓았습니다^^
eval, parseInt, parseFloat, isNaN, esacape, unescape과 같은 함수들을 
이용하여 작성한 테스트 코드이니 참고하신다면 js 실력이 한층 늘어날 거라 생각합니다 ㅎㅎ','doco1234',sysdate,'js_builtin.jpg',1,0);
insert into sell_post values (sellpost_seq.nextVal,'JavaScript','정규표현식 관련 코드입니다!','정규표현식 관련 코드입니다.
정규 표현 객체를 사용하여 더욱 간결한 유효성 검사 코드를 작성해보세요!
분명 도움이 되실겁니다^^

필요하시다면 구매 부탁드려요ㅎㅎ','doco1234',sysdate,'regexp.jpg',0,0);
insert into sell_post values (sellpost_seq.nextVal,'JavaScript','js와 ajax!!','안녕하세요 !!
sarang2lub입니다!
오늘은 js, ajax  추가적으로 서버통신객체에 대한
간단 설명을 올리게 되었습니다!

이번에도 많이들 구입해 주실꺼죠??ㅎㅎㅎ
모두들 열공하세요♥','sarang2lub',sysdate,'js_ajax설명.jpg',0,0);
insert into sell_post values (sellpost_seq.nextVal,'JavaScript','기본적인 function 작성방법!','안녕하세요!!
다시 찾아온 sarang2lub입니다.
다들 열공하시고 계신가요 ㅎㅎ

오늘은 js에서 기본적인 function 작성 방법을 올려봅니다!
모두들 화이팅!','sarang2lub',sysdate,'js_function.jpg',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JavaScript','페이지이동 관련 코드입니다.','안녕하세요.
페이지 이동 관련 코드입니다.
참고하시고 궁금한점 있으면 언제든지 댓글로 문의해주세요.','mgame5588',sysdate,'page이동_history객체.jpg',0,0);

-----------------------------------------------------------------
--jquery
insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery 환경설정 방법','jQuery 환경설정 방법에 대한 스크린샷
여러 기능 중 ajax 개발에 용이한 자바스크립트 라이브러리 중 하나 ajax외에도 애니메이트, 이벤트 등을 처리할 수 있다
다운로드 부터 jsp파일에 jQuery적용하는 방법까지 첨부하였습니다','encore',sysdate,'jquery_1.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery를 통한 ajax','jQuery 장점 중 하나가 ajax를 편리하게 사용할 수 있다는 점이다 
jQuery를 통한 ajax사용에 대한 기초적 문법을 기재하였으니 참고하길 바람','encore',sysdate,'jquery_2.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery와 JSON의 동시 활용','jQuery의 ajax를 통해 post방식일 경우 
JSON타입으로 데이터를  받는 부분에 관해 첨부','encore',sysdate,'jquery_3.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery를 활용한 계산기 프로그램', 
'jQuery를 이용하여 기초적인 계산기 프로그램을 만들어봄 계산기의 기능은 사칙연산에 한함',
'encore',sysdate,'jquery_4.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery tiles 사용을 위한 plug in방법', 
'tiles란, jQuery에서 레이아웃과 비슷한 형식을 말하는데, 하나의 웹브라우저 상에서 공통된 부분이 여러 jsp에 필요할 경우 사용합니다 
jQuery상에서 tiles를 활용하기 위한 Plug-in 설정들과 tiles를 정의하는 tiles-defs에 관해 예시를 첨부했습니다.',
'encore',sysdate,'jquery_5.png',0,0);

delete from SELL_POST
where sp_title='제목';

create table sell_ip
(
  sp_no number,
  sp_ip  varchar2(50),
  primary key(sp_no,sp_ip)
);

create table free_ip
(
  fp_no number,
  fp_ip  varchar2(50),
  primary key(fp_no,fp_ip)
);

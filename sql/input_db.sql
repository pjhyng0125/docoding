insert into member values
('encore', '1234', '���ھ�', '��', '1997-10-31', 'encore@naver.com', '010-1234-5678', '0', '2018-08-27', 0);
insert into member values
('abcd', '1234', '�浿��', '��', '1999-09-09', 'abcd1234@naver.com', '010-1234-5678', '0', '2018-08-16', 1000);

-- demo play data - member
insert into member values
('docoding1234', '1234', '����', '��', '1989-8-15', 'docoding1234@naver.com', '010-0823-2018', '0', '2018-08-11', 5000);
insert into member values
('abcd1234', '1234', 'ȫ�浿', '��', '1989-09-09', 'gil1234@naver.com', '010-1234-5678', '0', '2018-08-11', 1000);
insert into member values
('abcd5678', '1234', '�浿��', '��', '2000-12-09', 'abcd1234@naver.com', '010-5678-9874', '0', '2018-08-16', 3000);
insert into member values
('abcd777', '1234', '��ȣö', '��', '2012-07-09', 'hocheol@naver.com', '010-3553-5678', '0', '2018-08-12', 0);
insert into member values
('gayoung77', '1234', '�谡��', '��', '1995-10-29', 'young@daum.net', '010-7744-2787', '0', '2018-08-17', 0);
insert into member values
('nayoung123', '1234', '�質��', '��', '2012-07-09', 'nanana@naver.com', '010-1224-8757', '0', '2018-08-18', 0);
insert into member values
('dayoung486', '1234', '�̴ٿ�', '��', '2004-01-29', 'dy0787@naver.com', '010-0787-2234', '0', '2018-08-21', 0);
insert into member values
('choi1257', '1234', '�ֽ�ö', '��', '1987-09-03', 'choi1257@nate.com', '010-1234-1257', '0', '2018-08-21', 0);
insert into member values
('ukki5557', '1234', '����', '��', '1994-03-16', 'ukki5557@naver.com', '010-1224-5557', '0', '2018-08-21', 0);
insert into member values
('qwer7777', '1234', '������', '��', '2012-12-12', 'qwer7777@naver.com', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('asdf7777', '1234', '�ѿ츮', '��', '2012-11-29', 'asdf7777@naver.com', '010-4567-5432', '0', '2018-08-21', 0);
insert into member values
('zxcv7777', '1234', '���ξ�', '��', '2000-01-09', 'zxcv7777@naver.com', '010-3399-9933', '0', '2018-08-21', 0);
insert into member values
('kakao777', '1234', '�迵��', '��', '1977-07-14', 'kakako777@daum.net', '010-4887-5887', '0', '2018-08-21', 0);
insert into member values
('547dodo', '1234', '��ȣö', '��', '2007-05-18', 'cheol@daum.net', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('doco1234', '1234', '�赵��', '��', '1999-02-23', 'dodo1234@naver.com', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('sarang2lub', '1234', '����', '��', '1977-07-07', 'sarang2lub@naver.com', '010-1234-5678', '0', '2018-08-21', 0);
insert into member values
('mgame5588', '1234', '��ȣ��', '��', '2012-10-14', 'soon456@naver.com', '010-2257-5678', '0', '2018-08-21', 0);



select * from sell_assign;

-- demo play data - sell_assign
insert into sell_assign values
('docoding1234', '32-8756-3499', '2018-08-12', 12, 5800); --  29��
insert into sell_assign values
('abcd1234', '32-2234-1278', '2018-08-16', 1, 1400);	-- �Ǹ� Ƚ�� 7�� 
insert into sell_assign values
('qwer7777', '17-2232-7749', '2018-08-21', 2, 2000);
insert into sell_assign values
('asdf7777', '17-9292-3499', '2018-08-22', 3, 400);
insert into sell_assign values
('zxcv7777', '80-8756-3499', '2018-08-22', 1, 400);
insert into sell_assign values
('kakao777', '80-8756-3499', '2018-08-23', 5, 3600);		--24�� �Ǹ� �Խñ�




select * from sell_post;

-- demo play data - sell_post
						--  �Խù���ȣ  ī�װ�       ����                      ����        �ۼ���             �ۼ�����                  �����̸�            ��ȸ��   �Ǹ�Ƚ��
insert into sell_post values ('1','"Java"','java�� �̿��� ���� ','java ������ �������� ���� ����� �ôµ� �ʿ��ϸ� ������.','docoding1234','2018-08-13','calc.jpg','38','7');
insert into sell_post values ('2','"Java"','java �ζǸӽ�  ','��¥ ���� ¥�� �׷��� �ƴ϶� ���� ��¥ ���� �߸��� ������ 3�� ��÷�� ����?','docoding1234','2018-08-14','lotto.jpg','127','8');
insert into sell_post values ('3','"Java"','java ���ʹ��� ����','���� java ó����� �� ������ ������ �� �̰� �����ؼ� ���� a+ �� .','docoding1234','2018-08-14','basic.jpg','15','2');
insert into sell_post values ('4','"Java"','������ ���� ������ ','�̰� �츮�б�  ���� ���� �����ε� �Ե� �б����� ������ �𸣰ڴµ� �����ϼ�.','docoding1234','2018-08-14','test.jpg','42','7');
insert into sell_post values ('5','"Java"','java for�� ���� ','java for�� ������ �����ϼ�.','docoding1234','2018-08-15','for.jpg','7','0');
insert into sell_post values ('6','"Java"','java action listener �ڷ�','�ù�~','docoding1234','2018-08-15','action.jpg','15','1');
insert into sell_post values ('7','"Java"','java ���ʹ��� ����2 ','�ʿ��ϸ� ������.','docoding1234','2018-08-16','basic2.jpg','3','0');
insert into sell_post values ('8','"DB"','ORACLE ȯ�漳�� �޴���','�Ե� ORACLE ȯ�漳�� �޴����� �̰ź��� ���ϸ� DB������� ����','docoding1234','2018-08-16','ORACLE_menual.jpg','37','0');
insert into sell_post values ('9','"DB"','SQL ���ʹ��� TXT','�Ե� ������ ���ΰ� �ƽ���? �̰Ÿ� ������ sql�� ����~','docoding1234','2018-08-16','calc.java','22','0');
insert into sell_post values ('10','"JavaScript"','���� ���� �� ���ִ�! ������� ','html���������ִ� �и� ������','docoding1234','2018-08-17','basic.jsp','64','2');
insert into sell_post values ('11','"JavaScript"','���� ���� �� ���ִ�! �������2 ','������ JavaScript 2ź �ڷ� ','docoding1234','2018-08-20','basic2.jsp','41','1');
insert into sell_post values ('12','"JavaScript"','���� ���� �� ���ִ�! �������3 ','JavaScript ������ ������ �����ϼ���~ .','docoding1234','2018-08-22','basic3.jsp','11','1');

insert into sell_post values ('13','"JSP"','JSP ��������','JSP �����ڷ�','abcd1234','2018-08-23','basic_JSP.jsp','11','7');
insert into sell_post values ('14','"Java"','2017�� 1�б� JAVA �⸻�ڷ� ','������ ����������','qwer7777','2018-08-23','finalexam.java','77','7');
insert into sell_post values ('15','"DB"','MySQL �����ڷ� ','my sql �����ڷ�','qwer7777','2018-08-23','mysql.txt','31','3');

insert into sell_post values ('16','"DB"','DB�� �����غ���! ','DB���迡 �ʿ��� �͵� �ۼ��غôµ� �ʿ��ϸ� ������','asdf7777','2018-08-23','basic_sql.txt','13','1');
insert into sell_post values ('17','"DB"','DB�� �����غ���!2ź ','������ �ڷῡ ���� 2ź�̿���~','asdf7777','2018-08-23','basic_sql2.txt','9','1');
insert into sell_post values ('18','"DB"','DB�� �����غ���!3ź ','������ �ڷῡ��~','asdf7777','2018-08-23','basic_sql3.txt','4','0');

insert into sell_post values ('19','"jQuery"','jQuery �ڷ�','�ʿ��ϸ� ������','zxcv7777','2018-08-23','jQuery.txt','15','2');

insert into sell_post values ('20','"jQuery"','kakao jquery1ź','�ʿ��ϸ� ������','kakao777','2018-08-23','jQueryk1.txt','15','4');
insert into sell_post values ('21','"jQuery"','kakao jquery2ź','�ʿ��ϸ� ������','kakao777','2018-08-24','jQueryk2.txt','15','4');
insert into sell_post values ('22','"jQuery"','kakao jquery3ź','�ʿ��ϸ� ������','kakao777','2018-08-25','jQueryk3.txt','15','4');
insert into sell_post values ('23','"jQuery"','kakao jquery4ź','�ʿ��ϸ� ������','kakao777','2018-08-26','jQueryk4.txt','15','3');
insert into sell_post values ('24','"jQuery"','kakao jquery5ź','�ʿ��ϸ� ������','kakao777','2018-08-27','jQueryk5.txt','15','3');






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

insert into sell_post values ('1','java','java ���� ','���ʳ���','abcd56','2018-05-15','java_basic','15','3');
insert into sell_post values ('2','java','java ���� ','���ʳ���','abcd56','2018-05-15','java_basic','15','10');
insert into sell_post values ('3','jQuery','jquery ���� ','���ʳ���','abcd56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('4','jquery','jquery�� ���� �����α׷��� ','���ʳ���','abcd56','2018-05-2','sql_basic','37','7');
insert into sell_post values ('5','jquery','jquery ����Ʈ ','���ʳ���','abcd56','2018-05-2','jquery_homework.txt','37','7');
insert into sell_post values ('6','jquery','jquery ����Ʈ2','���ʳ���','abcd56','2018-05-2','jquery_homework2.txt','5','5');
insert into sell_post values ('7','javascript','�ڹٽ�ũ��Ʈ�� ���� ','���ʳ���','abcd56','2018-05-2','basic.jsp','3','7');
insert into sell_post values ('8','javascript','�ڹٽ�ũ��Ʈ�� Ȱ���� �Խ��� ����� ','���ʳ���','abcd56','2018-05-2','write.jsp','39','2');
insert into sell_post values ('9','javascript','�ڹٽ�ũ��Ʈ ����','���ʳ���','abcd56','2018-05-2','calc.jsp','37','7');
insert into sell_post values ('10','javascript','���� �ڹٽ�ũ��Ʈ ','���ʳ���','abcd56','2018-05-2','javascript_basic.txt','142','12');
insert into sell_post values ('11','javascript','���� �ڹٽ�ũ��Ʈ2 ','���ʳ���2','abcd56','2018-05-2','javascript_basic2.txt','142','12');
insert into sell_post values ('12','javascript','�ڹٽ�ũ��Ʈ�� ������� ','�ڹ� ���ʳ���','abcd','2018-08-20','js_basic.txt','12','8');
insert into sell_post values ('13','java','�ڹٽ�ũ��Ʈ�� ������� ','�ڹ� ���ʳ���','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('14','java','�ڹٽ�ũ��Ʈ ','�ڹ� ���ʳ���','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('15','java','�ڹٽ�ũ��Ʈ�� ������� ','�ڹ� ���ʳ���','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('16','java','�ڹٽ�ũ��Ʈ','�ڹ� ���ʳ���','abcd','2018-08-21','java_basic.txt','11','20');
insert into sell_post values ('17','java','�ڹٽ�ũ��Ʈ ��� ','�ڹ� ���ʳ���','abcd','2018-08-20','java_basic.txt','11','20');
insert into sell_post values ('18','java','�ڹٽ�ũ��Ʈ ���� ','�ڹ� ���ʳ���','abcd','2018-08-20','java_basic.txt','11','20');


insert into free_post values ('1','���','���񿬽�','�̰� Ŭ���̶��Ŵ�.','abcd','2018-08-22','3');
insert into free_post values ('2','���','���񿬽�','�̰� Ŭ���̶��Ŵ�.','abcd','2018-08-22','3');
insert into free_post values ('1','���','���񿬽�','�̰� Ŭ���̶��Ŵ�.','abcd','2018-08-22','3');


insert into free_reply values ('1','1','2018-08-22','qwer56','����ֳ�');
insert into free_reply values ('2','1','2018-08-22','abcd','����ֳ�');

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
values (sellpost_seq.nextVal,'DB','alter �ٽ� ��� ����', 'alter �ٽ� ��� ����

Į���߰�: ADD (�߰�Į���� �ڷ���)
Į������: MODIFY (����Į���� �ڷ���)
�������: modify �÷��� (constraint �����) not null | null
Į������: DROP COLUMN ����Į����
Į���̸�����: RENAME COLUMN ����Į���� TO ���÷���
Į���������: SET UNUESD Į����
UNUSED ������ Į���� ����: DROP UNUSED COLUMN);

ex1> �÷� �߰�
alter table player
add address varchar2(80);

ex2> Į�� ����
alter table player 
drop column address;

ex3> Į�� ����
alter table team_temp 
modify (orig_yyyy varchar2(8) default "20020129" not null);

ex4> Į���� ����
alter table player 
rename column player_ID to temp_ID;', 'encore', sysdate, 'db_1.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','select ���� ���� ����', '1. select Į���� [ALIAS��]
2. from ���̺��
3. where ���ǽ�
4. group by Į�� || ǥ����
5. having �׷� ���ǽ�
6. order by Į�� || ǥ����
2->3->4->5->6->1', 'encore', sysdate, 'db_1.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','order by��','order by ��: Ư�� Į���� �������� �����Ͽ� ���
order by �÷��� || ALIAS�� || ��Ī || Į�� ������ ��Ÿ���� ����
sql ������ ���� �������� ��ġ

order by Į�� or ǥ���� [ASC(��������, �⺻��) || DESC(��������,��->��)]
order by player_name DESC;
order by ������(��Ī) ASC;
Oracle: NULL ���� ���� ū ������ ���

ex1>
select player_name ������, position ������, back_no ��ѹ� from player
where back_no is not null
order by 3 desc, 2, 1;=> DB�� index�� 1���� ����

ex2>
select dname, loc area, deptno from dept 
order by 1, area, 3 DESC;', 'encore', sysdate, 'db_3.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','DCL(Data Control Language)','DCL(Data Control Language)
������ �����ϰ� ������ ������ �� �ִ� ��ɾ�

���� ���� ���� �ο�
grant create user to scott; => ���� ���� ���� �ο�
grant create session to pjh; => �α��� ���� �ο�
grant create table to pjh; => ���̺� ���� ���� �ο�
grant select on menu to scott; => ���̺� select ���� �ο�

Role�� �̿��� ���� �ο�
grant create session, create table to login_tabel; => login_table(role) ����
grant login_table to pjh; => role ���� �ο�

grant connect, resource to pjh; => connect(role), resource(role) ���� role ���� �ο�', 'encore', sysdate, 'db_4.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','outer join(�ܺ� ����)','join ���ǿ��� ������ ���� ���� �൵ ��ȯ�� ���
����� OUTER JOIN ��� ���� ����
JOIN������ FROM������ �����ϰڴ�=> USING/ON �ʼ� ���

1. LEFT [OUTER] JOIN
���� ����� ���� ���� ���̺� ������ ���� ��=> ���� ���̺� JOIN ��� ������ �о��
A left [outer] join B=> A�� B �� �� B�� JOIN Į������ ���� ���� ���� �� �ش� ������ ������
���� ���� ���� ��� B ���̺� �÷� NULL ������ ä��
outer join�� ���� NULL���� �÷��� ������ ������ �� �ִ�!

2. RIGHT OUTER JOIN
������ ������ �Ǿ� ��� ����
A right [outer] join B=> B ����

3. FULL OUTER JOIN
����, ���� ���̺��� ��� �����͸� �о� JOIN�Ͽ� ��� ����
A full [outer] join B=> A, B �Ѵ� ����', 'encore', sysdate, 'db_5.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'DB','�⵵�� �Ի� �ο��� ��� SQL�� (decode)','select count(*) as total, 
count(decode(to_char(hiredate,"yyyy"),"1980", hiredate)) as 1980,
count(decode(to_char(hiredate,"yyyy"), "1981", hiredate)) as 1981,
count(decode(to_char(hiredate,"yyyy"), "1982", hiredate)) as 1982,
count(decode(to_char(hiredate,"yyyy"), "1987", hiredate)) as 1987
from emp;', 'encore', sysdate, 'db_6.png',0,0);
-------------------------------------------------------------------------------------------------------------------------
--java
insert into SELL_POST
values (sellpost_seq.nextVal,'Java','������ ���� �����','public class GugudanTest {
public static void main(String[] args) throws IOException {
System.out.println("<<������>>");	
System.out.print("���ϴ� ��? ");
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
values (sellpost_seq.nextVal,'Java','�ζ� ��ȣ ���� ���α׷�','public class Lotto {
int [] lotto;
Random r;
public Lotto() {
lotto = new int[6];
r = new Random();
public void generateNum() {//�ζǹ�ȣ�߻�
for(int i=0; i<lotto.length; i++) {//�迭�ε��� 0~5
lotto[i]=r.nextInt(45)+1;//������ ���� ����
boolean flag = duplicateNumCheck(i);
if(flag) {//(flag==true) {
i--;  
}}}
public boolean duplicateNumCheck(int idx) {//�ߺ����ڰ˻�
for(int i=idx-1; i>-1; i--) {
if(lotto[idx] == lotto[i]) {//�ߺ��� ���� �߰ߵǾ��ٸ�!!
return true;}}
return false; 
}
public void printNum() {//�ζǹ�ȣ���(�迭�� �Էµ� ���� ���)
Arrays.sort(lotto);
for(int i=0; i<lotto.length; i++) {//�迭�ε��� 0~5
System.out.print(lotto[i]);
if(i<lotto.length-1)System.out.print(", ");		  
}
}}}', 'encore', sysdate, 'java_2.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'Java','�迭�� �̿��� ��� ���� ���α׷�','names = new Vector<>();}//������

public void insert(String name) {//������ �Է�
names.add(name);
}//insert

public void select() {//������ �˻�
System.out.println("\n#�̸����");  
for (int i = 0; i < names.size(); i++) {
System.out.println(names.get(i));}}

public void update(String oldName, String newName) {//������ ����
for (int i = 0; i < names.size(); i++) {
if(oldName.equals(names.get(i))) {
names.set(i, newName);
break;}}}//update

public void delete(String delName) {//������ ����
names.remove(delName);}//delete

public boolean existNameCheck(String name) {//�����ϴ� �̸� üũ
if(names.contains(name))return true;	  	  
return false;
}//existNameCheck}', 'encore', sysdate, 'java_3.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'Java','Java�� �̿��� BaseBall Game �ٽ��ڵ�','@Override
public void actionPerformed(ActionEvent e) {
Object ob = e.getSource();
if(ob==tf) {
 String str = tf.getText();//"369"
for(int i=0; i<user.length; i++) {
user[i]=str.charAt(i)-48;}

 int strike=0, ball=0;
for(int i=0; i<com.length; i++) {//com�迭
for(int j=0; j<user.length; j++) {//user�迭
if(com[i] == user[j]) {//������ ---> ��Ʈ����ũ �Ǵ� ���� �ĺ�!!
if(i==j) {//���� �ڸ��� �� ---> ��Ʈ����ũ!!
strike++;
}else {//�ٸ� �ڸ���  ---> ��!!
ball++; }}}}//for
ta.append("1: "+str+" �� "+strike+"Strike "+ball+"Ball\n");
tf.setText("");
}else if(ob==bt_new) {
createNum();
}else if(ob==bt_clear) {
ta.setText("");
tf.setText("");
}else if(ob==bt_dap) {
ta.append("�� ������ ["+com[0]+com[1]+com[2]+"]�Դϴ�.\n");
}else if(ob==bt_exit) {
System.exit(0);}}
public static void main(String[] args) {
new BaseBallGame();
}}', 'encore', sysdate, 'java_4.png',0,0);

insert into SELL_POST
values (sellpost_seq.nextVal,'Java','TCP���۹�� ��������','<TCP���۹��>
1. ������
- ������(connection-oriented)
- ���� �� ���(��ȭ��)
- 1:1 ��Ź��
2. Ư¡
- �������� ��踦 ���� �� ��.(byte-stream)
- �ŷڼ� �ִ� ������ ����
- �������� ���ۼ����� ����.
- �������� ���ſ��θ� Ȯ����(�����Ͱ� �սǵǸ� ������)
- ��Ŷ�� ������ �ʿ䰡 ����
- UDP���� ���ۼӵ��� ����
3. ���� Ŭ����
- Socket, ServerSocket', 'encore', sysdate, 'java_5.png',0,0);

-----------------------------------------------------------------
--jsp
insert into sell_assign values ('qwer7777','100-0011-1101','2018-08-28',0,0);
insert into sell_assign values ('asdf7777','100-0011-1102','2018-08-28',0,0);
insert into sell_assign values ('zxcv7777','100-0011-1103','2018-08-28',0,0);
insert into sell_assign values ('kakao777','100-0011-1104','2018-08-28',0,0);
insert into sell_assign values ('547dodo','100-0011-1105','2018-08-28',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','���� ���� �ڵ��Դϴ�.','�ȳ��ϼ���.
���� ���� �ڵ��Դϴ�.
������ ��Ģ������ �����ϵ��� �� �ڵ忡��.
�ε� �����Ͻø鼭 ���� ���� �ǽñ� �ٶ�ڽ��ϴ�!','qwer7777',sysdate,'calc.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','���������� ������ �ҽ�!!','java�� c�� �� �� �ѹ� ���� �غ����� �������Դϴ� ����
�̰͸� ���� �����Ŵٸ� jsp������ ����� �ʾƿ�!!
�ʿ��Ͻôٸ� ���� ^^ ��Ź�帱�Կ�','asdf7777',sysdate,'gugudan.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','������ ��й�ȣ Ȯ�ι���Դϴ�.','jsp�� �����ϸ鼭 ���� ��й�ȣ Ȯ�ι���Դϴ�.
���� �����Ͻ� �е鵵 �����ð����� jsp�� ó���̽źе鲲 ��õ�����~~','zxcv7777',sysdate,'passCheck.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','�������̵� ���� �ڵ��Դϴ�.','������ �ڵ��Դϴ�.
������ ����� ������ ��ġ�� �ֽ��ϴ�. ��θ��� �������ּ���','kakao777',sysdate,'pageMove.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JSP','ȸ�������� �ñ��ϽŰ���?','ȸ�������� ������ ������ �ϳ� ��ٷο���!
�� �ڵ带 ������� ���ø� ���߿� ���Ͻǰſ��� ���� ���� ����մϴ�.
Ȥ�ó� �ñ��Ͻ� ���׵� �����ø� �������� !! ��� �����ּ���^^
�����մϴ�~~','547dodo',sysdate,'input.png',0,0);
-----------------------------------------------------------------
--js
--�Ǹ��� ����
insert into sell_assign values ('doco1234','110-1111-1234','2018-08-27',0,0);
insert into sell_assign values ('sarang2lub','111-1231-1111','2018-08-27',0,0);
insert into sell_assign values ('mgame5588','112-1111-1121','2018-08-27',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JavaScript','js ��Ʈ���Լ��Դϴ�!','���� �״�� js ��Ʈ�� �Լ��� �����Ͻñ� ���ϵ��� ��Ƴ��ҽ��ϴ�^^
eval, parseInt, parseFloat, isNaN, esacape, unescape�� ���� �Լ����� 
�̿��Ͽ� �ۼ��� �׽�Ʈ �ڵ��̴� �����ϽŴٸ� js �Ƿ��� ���� �þ �Ŷ� �����մϴ� ����','doco1234',sysdate,'js_builtin.jpg',1,0);
insert into sell_post values (sellpost_seq.nextVal,'JavaScript','����ǥ���� ���� �ڵ��Դϴ�!','����ǥ���� ���� �ڵ��Դϴ�.
���� ǥ�� ��ü�� ����Ͽ� ���� ������ ��ȿ�� �˻� �ڵ带 �ۼ��غ�����!
�и� ������ �ǽǰ̴ϴ�^^

�ʿ��Ͻôٸ� ���� ��Ź����䤾��','doco1234',sysdate,'regexp.jpg',0,0);
insert into sell_post values (sellpost_seq.nextVal,'JavaScript','js�� ajax!!','�ȳ��ϼ��� !!
sarang2lub�Դϴ�!
������ js, ajax  �߰������� ������Ű�ü�� ����
���� ������ �ø��� �Ǿ����ϴ�!

�̹����� ���̵� ������ �ֽǲ���??������
��ε� �����ϼ��䢾','sarang2lub',sysdate,'js_ajax����.jpg',0,0);
insert into sell_post values (sellpost_seq.nextVal,'JavaScript','�⺻���� function �ۼ����!','�ȳ��ϼ���!!
�ٽ� ã�ƿ� sarang2lub�Դϴ�.
�ٵ� �����Ͻð� ��Ű��� ����

������ js���� �⺻���� function �ۼ� ����� �÷����ϴ�!
��ε� ȭ����!','sarang2lub',sysdate,'js_function.jpg',0,0);

insert into sell_post values (sellpost_seq.nextVal,'JavaScript','�������̵� ���� �ڵ��Դϴ�.','�ȳ��ϼ���.
������ �̵� ���� �ڵ��Դϴ�.
�����Ͻð� �ñ����� ������ �������� ��۷� �������ּ���.','mgame5588',sysdate,'page�̵�_history��ü.jpg',0,0);

-----------------------------------------------------------------
--jquery
insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery ȯ�漳�� ���','jQuery ȯ�漳�� ����� ���� ��ũ����
���� ��� �� ajax ���߿� ������ �ڹٽ�ũ��Ʈ ���̺귯�� �� �ϳ� ajax�ܿ��� �ִϸ���Ʈ, �̺�Ʈ ���� ó���� �� �ִ�
�ٿ�ε� ���� jsp���Ͽ� jQuery�����ϴ� ������� ÷���Ͽ����ϴ�','encore',sysdate,'jquery_1.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery�� ���� ajax','jQuery ���� �� �ϳ��� ajax�� ���ϰ� ����� �� �ִٴ� ���̴� 
jQuery�� ���� ajax��뿡 ���� ������ ������ �����Ͽ����� �����ϱ� �ٶ�','encore',sysdate,'jquery_2.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery�� JSON�� ���� Ȱ��','jQuery�� ajax�� ���� post����� ��� 
JSONŸ������ �����͸�  �޴� �κп� ���� ÷��','encore',sysdate,'jquery_3.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery�� Ȱ���� ���� ���α׷�', 
'jQuery�� �̿��Ͽ� �������� ���� ���α׷��� ���� ������ ����� ��Ģ���꿡 ����',
'encore',sysdate,'jquery_4.png',0,0);

insert into sell_post values (sellpost_seq.nextVal,'jQuery','jQuery tiles ����� ���� plug in���', 
'tiles��, jQuery���� ���̾ƿ��� ����� ������ ���ϴµ�, �ϳ��� �������� �󿡼� ����� �κ��� ���� jsp�� �ʿ��� ��� ����մϴ� 
jQuery�󿡼� tiles�� Ȱ���ϱ� ���� Plug-in ������� tiles�� �����ϴ� tiles-defs�� ���� ���ø� ÷���߽��ϴ�.',
'encore',sysdate,'jquery_5.png',0,0);

delete from SELL_POST
where sp_title='����';

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

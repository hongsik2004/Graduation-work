create table member_table(
	m_id varchar2(30) primary key,
	m_name varchar2(30),
	m_phone_number char(11),
	m_password varchar2(20),
	m_krw number(16) default 0
)
drop table member_table;
insert into member_table(m_id,m_name,m_phone_number,m_password) values('admin','admin','01040772018','5563');
select * from MEMBER_TABLE;
select m_id,m_password from MEMBER_TABLE;

select * from member_table;

--���� �Խ��� ���� DB ����
desc coin_board;
select * from coin_board
create table coin_board(
	b_id number(4) not null primary key,
	c_tag number(2),
	b_title varchar2(50),
	b_name varchar2(30),
	b_date DATE,
	m_id varchar2(30),
	b_context varchar2(2048),
	b_view number(5)
);
<<<<<<< HEAD
select DISTINCT c_tag from coin_board;
update coin_board set b_title = '반갑다', b_name = '갓냥이',b_pass='1234',b_context='워로드다.' where b_id = '2';
--전체 페이지 수 =(전체 게시물 수 / 한 페이지의 출력할 수 ) + 1 (나머지가 있을 경우)
=======
select DISTINCT c_tag from coin_board order by c_tag asc;
update coin_board set b_title = '�ݰ���', b_name = '������',m_id='admin',b_context='���ε��.' where b_id = '2';
--��ü ������ �� =(��ü �Խù� �� / �� �������� ����� �� ) + 1 (�������� ���� ���)
>>>>>>> 25b768d186ac2de48ee000cfa4746ee96a9c6bb8
select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD where c_tag = 0 order by b_id desc;
select b_id,c_tag,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD where c_tag = 0 order by b_id desc;
select count(b_id) as b_id from coin_board; --��ü ������ ���� ���ϱ�
--������ �մ� �� ��,�� �������� �����ִ� �� ��,���� ������ ��ȣ 
select * from coin_board where ROWNUM >= 1 and ROWNUM <= 9 order by b_id; --���� 1 ~ 9 ���� ���� �����ش�.
select B.m_name from coin_board A, member_table B;
drop table coin_board;
delete from coin_board;
select b_pass from coin_board where b_id = ?;
delete from coin_board where b_id = 1;
select * from coin_board where b_id = ?;
SELECT b_id from coin_board order by b_id desc;

insert into coin_board values(1,0,'�ݰ����ϴ�.','��ȫ��','2022-08-25','admin','�ȳ��ϼ���.',0);
SELECT b_id from coin_board order by b_id desc;


select max(b_id) + 1 as b_id from coin_board;
select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD;
select sysdate from dual;
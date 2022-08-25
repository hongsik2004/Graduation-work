create table member_table(
	m_id varchar2(30) primary key,
	m_name varchar2(30),
	m_phone_number char(11),
	m_password varchar2(20),
	m_krw number(16) default 0
)
drop table member_table;
insert into member_table(m_id,m_name,m_phone_number,m_password) values('hongsik2004@naver.com','박홍식','01040772018','1234');
select * from MEMBER_TABLE;
select m_id,m_password from MEMBER_TABLE;

--코인 게시판 전용 DB 구축
desc coin_board;
select * from coin_board
create table coin_board(
	b_id number(4) not null primary key,
	b_title varchar2(50),
	b_name varchar2(20),
	b_date DATE,
	b_context varchar2(2048),
	b_view number(5)
);
drop table coin_board;
delete from coin_board;
SELECT b_id from coin_board order by b_id desc;
insert into coin_board values(1,'반갑습니다.','박홍식','2022-08-25','안녕하세요.',0);
SELECT b_id from coin_board order by b_id desc;
select max(b_id) + 1 as b_id from coin_board order by b_id desc;
select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD;
select sysdate from dual;
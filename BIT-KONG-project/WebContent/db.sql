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
create table coin_board(
	b_id number(4) not null primary key,
	b_title varchar2(50),
	b_name varchar2(20),
	b_date DATE,
	b_context varchar2(2048),
	b_view number(5),
	b_available number(1)
);

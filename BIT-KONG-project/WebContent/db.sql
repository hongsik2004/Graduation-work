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
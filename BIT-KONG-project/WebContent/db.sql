--회원가입 테이블
create table member_table(
	m_id varchar2(30) primary key,
	m_name varchar2(30),
	m_phone_number char(11),
	m_password varchar2(256),
	m_krw number(16) default 0
);
--코인게시판 테이블
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
--코인고객센터 테이블
create table coin_notice(
	n_id number(4) not null primary key,
	n_tag number(2),
	n_title varchar2(50),
	n_context varchar2(2048),
	m_id varchar2(30),
	n_date DATE,
	n_view number(5)
);
drop table coin_notice;

select n_id,n_tag,n_title,n_context, TO_CHAR(n_date,'YYYY-MM-DD') as n_date,n_view from COIN_NOTICE where n_tag = 0 order by n_id desc;
insert into COIN_NOTICE values(2,0,'[공지]축 첫 서버 열림','많은 후원 부탁드립니다.','2022-08-31',0);
select * from coin_notice;
drop table member_table;
insert into member_table(m_id,m_name,m_phone_number,m_password) values('admin','admin','01040772018','5563');
select * from MEMBER_TABLE;
select m_id,m_password from MEMBER_TABLE;

select * from member_table;
update coin_board set b_view = b_view + 1 where b_id = 1;
--코인 게시판 전용 DB 구축
desc coin_board;
select * from coin_board
select DISTINCT c_tag from coin_board order by c_tag asc;
update coin_board set b_title = '반갑다', b_name = '갓냥이',m_id='admin',b_context='워로드다.' where b_id = '2';
--전체 페이지 수 =(전체 게시물 수 / 한 페이지의 출력할 수 ) + 1 (나머지가 있을 경우)
select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD where c_tag = 0 order by b_id desc;
select b_id,c_tag,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD where c_tag = 0 order by b_id desc;
select count(b_id) as b_id from coin_board; --전체 페이지 갯수 구하기
--가지고 잇는 글 수,한 페이지당 보여주는 글 수,현재 페이지 번호 
select * from coin_board where ROWNUM >= 1 and ROWNUM <= 9 order by b_id; --현재 1 ~ 9 개의 글을 보여준다.
select B.m_name from coin_board A, member_table B;
drop table coin_board;
delete from coin_board;
select b_pass from coin_board where b_id = ?;
delete from coin_board where b_id = 1;
select * from coin_board where b_id = ?;
SELECT b_id from coin_board order by b_id desc;

insert into coin_board values(1,0,'반갑습니다.','박홍식','2022-08-25','admin','안녕하세요.',0);
SELECT b_id from coin_board order by b_id desc;


select max(b_id) + 1 as b_id from coin_board;
select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD;
select sysdate from dual;
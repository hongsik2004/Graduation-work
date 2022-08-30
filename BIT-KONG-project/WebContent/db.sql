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

--ÄÚÀÎ °Ô½ÃÆÇ Àü¿ë DB ±¸Ãà
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
update coin_board set b_title = 'ë°˜ê°‘ë‹¤', b_name = 'ê°“ëƒ¥ì´',b_pass='1234',b_context='ì›Œë¡œë“œë‹¤.' where b_id = '2';
--ì „ì²´ íŽ˜ì´ì§€ ìˆ˜ =(ì „ì²´ ê²Œì‹œë¬¼ ìˆ˜ / í•œ íŽ˜ì´ì§€ì˜ ì¶œë ¥í•  ìˆ˜ ) + 1 (ë‚˜ë¨¸ì§€ê°€ ìžˆì„ ê²½ìš°)
=======
select DISTINCT c_tag from coin_board order by c_tag asc;
update coin_board set b_title = '¹Ý°©´Ù', b_name = '°«³ÉÀÌ',m_id='admin',b_context='¿ö·Îµå´Ù.' where b_id = '2';
--ÀüÃ¼ ÆäÀÌÁö ¼ö =(ÀüÃ¼ °Ô½Ã¹° ¼ö / ÇÑ ÆäÀÌÁöÀÇ Ãâ·ÂÇÒ ¼ö ) + 1 (³ª¸ÓÁö°¡ ÀÖÀ» °æ¿ì)
>>>>>>> 25b768d186ac2de48ee000cfa4746ee96a9c6bb8
select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD where c_tag = 0 order by b_id desc;
select b_id,c_tag,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD where c_tag = 0 order by b_id desc;
select count(b_id) as b_id from coin_board; --ÀüÃ¼ ÆäÀÌÁö °¹¼ö ±¸ÇÏ±â
--°¡Áö°í ÀÕ´Â ±Û ¼ö,ÇÑ ÆäÀÌÁö´ç º¸¿©ÁÖ´Â ±Û ¼ö,ÇöÀç ÆäÀÌÁö ¹øÈ£ 
select * from coin_board where ROWNUM >= 1 and ROWNUM <= 9 order by b_id; --ÇöÀç 1 ~ 9 °³ÀÇ ±ÛÀ» º¸¿©ÁØ´Ù.
select B.m_name from coin_board A, member_table B;
drop table coin_board;
delete from coin_board;
select b_pass from coin_board where b_id = ?;
delete from coin_board where b_id = 1;
select * from coin_board where b_id = ?;
SELECT b_id from coin_board order by b_id desc;

insert into coin_board values(1,0,'¹Ý°©½À´Ï´Ù.','¹ÚÈ«½Ä','2022-08-25','admin','¾È³çÇÏ¼¼¿ä.',0);
SELECT b_id from coin_board order by b_id desc;


select max(b_id) + 1 as b_id from coin_board;
select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD;
select sysdate from dual;
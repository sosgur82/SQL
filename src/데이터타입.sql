--navarchar2 vs varchar2

drop table BOOK;

create table book(
no NUMBER(10), 
title VARCHAR2(4000), --max 4000byte 
author nVARCHAR2(2000), --max 2000자 (내부적으로 6000byte)
pub_date date);

--5바이트를 넘어서 '가나' 6바이트 에러임
insert into book values(1,'토지','가나',sysdate);

insert into book values(1,'토지','가12',sysdate);

select rowid, no from book;

select * from book ;
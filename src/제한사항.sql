drop TABLE book;

create table book(
no number(10),
title varchar2(200)not null,
author NVARCHAR2(50)not null,
state varchar2(12)not null,
pub_date date,

primary key(no),
constraint c_book_check check(state in ('대여중', '대여 가능')) 
);

create sequence seq_book
start with 1
increment by 1
maxvalue 9999999999;


select seq_book.nextval from dual;
SELECT seq_book.CURRVAL FROM DUAL;  



--null은 pk에 안들어감
insert into book values(null,'토지','박경리',sysdate);

insert into book values(1,'토지','박경리',sysdate);
--pk는 중복되면 안됨 (unique)
insert into book values(1,'토지2','박경리2',sysdate);

insert into book values(seq_book.nextval,'토지2','박경리2','대여 가능',sysdate);

select * from book;
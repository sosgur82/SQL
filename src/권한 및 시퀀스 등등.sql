--author sequence
drop sequence seq_author;

create sequence seq_author
start with 1 increment by 1 maxvalue 9999999999;

--author table
drop table author;

create table author(
no number(10),
name nvarchar2(200) not null,
profile nvarchar2(2000),

primary key(no)
);

drop sequence seq_book;

create sequence seq_book
start with 1 increment by 1 maxvalue 9999999999;

drop TABLE book;

--book table
create table book(
no number(10),
title varchar2(200)not null,
author_no number(10)not null,
state varchar2(12)not null,
pub_date date,

primary key(no),
constraint c_book_fk foreign key(author_no) REFERENCES author(no)
on delete cascade, -- 참조키 삭제시 같이 삭제
constraint c_book_check check(state in ('대여중', '대여 가능') ) 
);


insert into author values(seq_author.nextval, '박경리',null);

select * from author;

delete from author where no =1;
------------------------------------

insert into book values(seq_book.nextval, '토지',1,'대여가능',sysdate);


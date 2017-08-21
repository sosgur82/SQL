--create table

create table book(
	no NUMBER(10),
	title varchar2(120),
	author varchar2(50),
	pub_date DATE
);
--예약어는 테이블 생성 불가
create table user( no number(10));

--insert
insert into book values(1,'토지','박경리',to_date('2017/08/20','yyyy/mm/dd'));

--delete
delete from book where no = 1;

--update 
update book set title = '토지2' where no =1;

--되돌리기
rollback;
--반영
commit;

select * from book;
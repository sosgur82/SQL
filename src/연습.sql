select * from author;
select * from book;

-- DML
--암시적(컬럼지정 X)인 경우에는 순서와, 개수 정확해야함.
insert into author values(seq_author.nextval,'둘리',null);

insert into author(name,no) values ('둘리', seq_author.nextval);

delete from author where no is null;

rollback;


update author set name = '도우넛', 
profile = '어쩌고 저쩌고...'
where author_no = 1; 

select * from author;


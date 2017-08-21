select * from author;

insert into author values(seq_author.nextval, '마이콜', null);

delete from author where = no = 3;

insert into author values(seq_author.nextval, '둘리', null);

commit;
rollback;

--trabsaction save porint

delete from author;
commit;
select * from author;

-- dml1

insert into author values(seq_author.nextval, '박경리1', null);

--savepoint a
savepoint a;
--dml2
delete from author where AUTHOR_NO  = 8;

savepoint b;

--dml3

insert into AUTHOR values(seq_author.nextval, '박경리2', null);


rollback to b;

rollback to a;

rollback;
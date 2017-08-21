--모든 사용자 확인
select * from all_users;
select * from dba_users;

--사용자 생성 
create user user1 identified by user1;

GRANT create session to user1;

revoke create session from user1; 

-- 롤 단위
grant connect, resource to user1;

revoke connect, resource from user1;




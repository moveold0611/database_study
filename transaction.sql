select @@autocommit;
set autocommit = 0; # commit off

# autocommit을 끈 상태에서는 start부터 commit까지 수동 저장

start transaction;

savepoint insert_user;

insert into user_tb
values(0, 'ddd', '1234');

select * from user_tb;

savepoint update_user_password;
update user_tb set password = '111' where username = 'ddd';

rollback to savepoint update_user_password;
rollback to savepoint insert_user;
rollback; # commit전에 실행하면 transaction 전 상태로 되돌림

commit;

select
	*
from
	user_tb;
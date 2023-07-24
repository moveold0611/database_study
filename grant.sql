# 사용자 추가
create user test1@localhost identified by '1234';
# 사용자@접근 가능한 위치 // (%를 쓰면 모든 위치에서 접근 가능)
# 일반적으로 localhost로 원격 접속하도록 설정함
use mysql;
select host, user from user;

# 사용자 권한
revoke all on study3.* from test1@localhost; # revoke = 권한 회수
grant all privileges on study3.user_tb to test1@localhost; # grant = 권한 부여

create user test2@'%' identified by '1234';

use mysql; # 데이터 베이스 선택
select host, user from user;

alter user 'test2'@'%' identified by '1111'; # 패스워드 변경
flush privileges; # 패스워드 변경 적용

alter user 'test1'@localhost identified by '1111';
flush privileges;

grant select on study3.user_tb to test2@'%';  # test2에 select권한만 부여
grant select,insert on study3.user_tb to test2@'%';  # test2에 select,insert 권한만 부여
flush privileges;

revoke insert on study3.user_tb from test2@'%'; # test2에 insert 권한 삭제

show grants for 'test2'@'%';


# alter = 패스워드 변경 , grant = 권한 부여 , revoke = 권한 회수



# '자신의 이름(영문)'@localhost에서만 접속 가능, 비밀번호 = 1234
# 해당 계정의 비밀번호를  1q2w3e4r로 변경
# 권한 study2데이터베이스 -> user_tb(select, insert, update, delete),
# update 권한 회수
# 권한 study3데이터베이스  -> product_tb(select)
# delete 권한 추가

create user 'lee_dong_heon'@localhost identified by '1234';

alter user 'lee_dong_heon'@localhost identified by '1q2w3e4r';

grant select,insert,delete,update on study2.user_tb to 'lee_dong_heon'@localhost;
revoke update on study2.user_tb from 'lee_dong_heon'@localhost;

grant select on study3.product_tb to 'lee_dong_heon'@localhost;
grant delete on study3.product_tb to 'lee_dong_heon'@localhost;

flush privileges;

show grants for 'lee_dong_heon'@localhost;


select version();

select * from test_tb;

# update (데이터 수정)
update test_tb set name = '팔동헌' where test_id = 7; # 기본키(PRIMARY_KEY)를 활용하여 조건 선정
update test_tb set birthday = '1997-06-18' where test_id = 8;
update test_tb set name = '구동헌', birthday = '1997-06-18' where test_id = 8;
update test_tb set name = null where test_id = 7; # 부분만 삭제
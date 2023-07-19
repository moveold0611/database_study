select * from test_tb;

# delete (데이터 삭제)

delete from test_tb; # 전체 삭제 (하지 말 것)
delete from test_tb where test_id = 8; # 기본키(PRIMARY_KEY)를 이용한 조건 삭제
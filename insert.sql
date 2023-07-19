select * from test_tb;
# insert(데이터 추가)
insert into `study1`.`test_tb`(`test_id`, `name`, `birthday`) values(3, '사동헌', '1997-06-13');
insert into study1.test_tb(test_id, birthday, name) values(4, '1997-06-14', '오동헌'); # 백쿼터 생략 가능
insert into study1.test_tb(birthday, name, test_id) values('1997-06-15', '육동헌', 5); # 앞 순서를 바꾸면 뒷 순서도 맞게 바꾸어야 한다.
insert into test_tb values(6, '칠동헌', '1997-06-16'); # 컬럼 생략 시 순서대로 삽입해야 한다.
insert into test_tb(test_id, birthday) values(7, '1997-06-17'); # null값 지정 필요 시 필요한 부분만 생략하면 된다.
insert into test_tb values(8, '구동헌', null); # 컬럼 생략시 null값을 입력해줘야 한다.

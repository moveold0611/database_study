insert into student_tb
values
	(0, '이동헌', 20, 0),
    (0, '삼동헌', 21, 0), 
    (0, '사동헌', 20, null), 
    (0, '오동헌', 22, null), 
    (0, '육동헌', 21, 0);

select
	student_id,
	student_name,
	student_age,
	student_score
from
	student_tb
where
	(student_age = 20
  #  or student_score = 0
	or student_score is null) # null값을 찾는 경우 is null 사용 ( or student_score is not null;  )
    and student_name = '이동헌'; # and는 or보다 우선 순위가 하위에 있음 , 우선 순위 조정 필요 시 괄호 사용
    
update student_tb
set
	student_score = 20
where
	student_age = 21;
    
    
# 나이가 20살인 학생들의 점수를 전부 더하세요.
select
	student_age,
    sum(student_score) as total_score
from
	student_tb
-- where
--     student_age = 20
group by
	student_age
having
	total_score = 40;
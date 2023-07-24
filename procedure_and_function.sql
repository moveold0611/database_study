# procedure(저장 프로시저)

call save_user('ddd@gmail.com', '1111', '김준이', 'google', null);
call save_user_many('aaa', '1234', '김준일', null, null, 5);

set @color = 'black';
set @color_name = 'blue';
set @color = @color_name; # red
call get_product_total_count(@color, @total_count, @color_name);
select @color, @total_count, @color_name;

call get_product_by_category('tees');
call get_product_by_category_case('tees');

# function (임시 함수)
show global variables like 'log_bin_trust_function_creators'; # function 생성 가능하게 설정 하기
set global log_bin_trust_fcreate_name_and_ageunction_creators = 1;

select create_name_and_age('김준일', 30);
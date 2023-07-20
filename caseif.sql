# 조건문(흐름 제어)

select
	*,
    case  # case는 when,then을 늘려 여러 조건 사용 가능
		when product_price <= 100000 then '10만원 이하'
		when product_price < 200000 then '20만원 미만'
        else '20만원 이상'
    end as '가격 범위',
    if(product_price < 100000, '10만원 미만', '10만원 이상') as '가격 범위 YEE',
--  if(size_m is null, '사이즈 없음', size_m) as size_m2 
	ifnull(size_m, '사이즈 없음') as size_m2, # null check (데이터를 0또는 공백으로 전환할 때 사용)
    nullif(size_m, 'M') as size_m3 # size_m = 'M' 이면 null로 변환  (같은 데이터를 제외 시키는 용도)
from
	product_tb;
    
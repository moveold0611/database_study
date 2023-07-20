SELECT * FROM androg.product_tb;

# 상품의 가격이 10만원 ~ 20만원 사이의 상품을 조회하시오.
# 상품의 카테고리가 2, 4번 인 것만 조회하시오.
# 상품의 이름이 같은 것이 몇개 있는지 조회하시오.
# 동일 카테고리의 상품의 가격 총액을! 조회하시오.
# 상품의 가격이 10만원 ~ 20만원 사이의 상품 중 동일 카테고리 상품의 총액을 조회하고, 총액 내림차순으로 정렬하시오.

select
	product_id,
    product_name,
    product_price,
    category_id
from
	product_tb;
	

# 1
select
	product_name,
    product_price
from
	product_tb
where
-- product_price <= 200000
-- 	and product_price >= 100000;
	product_price between 100000 and 200000;
-------------------------------------------------------------
# 2
select
	category_id,
    product_name
from
	product_tb
where
-- 	category_id = 4
-- 	or category_id = 2;
	category_id in (2, 4);
---------------------------------------------------------------
# 3
select
	product_name,
	count(product_name) as product_name_count
    -- count(*)
from
	product_tb
group by
	product_name;
----------------------------------------------------------
# 4
select
	category_id,
    sum(count(product_price)) as total_price
from
	product_tb
group by	
	category_id;
-------------------------------------------------------------
# 5
select
	category_id,
    sum(product_price) as total_price  
from
	product_tb
where
 	product_price between 100000 and 200000
group by
	category_id
order by
	total_price desc;
----------------------------------------------------------------
# 6
select	
    category_id,
    sum(product_price) as total_product_price
from # 서브 쿼리
	(select
		product_name,
		product_price,
        category_id	
	from
		product_tb
	group by
		product_name,
		product_price,
        category_id) as product_name_group
group by
	category_id;
        
    
# order_detail_tb + order_tb

select
	order_detail_id,
    order_id,
    product_id,
    size_name,
    count_number
from
	order_detail_tb;
    
select
	order_id,
    user_id,
    order_date,
    address_id
from
	order_tb;
    
    
    
    
    
    
    
select
	*
from
	order_tb ot
    left outer join order_detail_tb odt on(odt.order_id = ot.order_id);
    
    
 # user_tb에 들어있는 name이 상구 인 사람의 구매 총액을 조회하시오.   
select
	ut.name,
    sum(pt.product_price * odt.count_number) as total_order_price
from
	order_detail_tb odt
    left outer join product_tb pt on(pt.product_id = odt.product_id)
    left outer join order_tb ot on(ot.order_id = odt.order_id) 
    left outer join user_tb ut on(ut.user_id = ot.user_id)
where
    ut.name = '상구'
group by
	ut.name;
    


	
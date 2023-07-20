# like

select
	*
from
	product_tb
where
	product_name like '%BASIC%'; # 쿼리 + like + % + 포함할 내용 + %   						  포함할 내용을 가진 모든 데이터
	-- product_name like 'BASIC%'; # 쿼리 + like + 포함할 내용 + %   					      포함할 내용을 첫 시작으로 가지는 모든 데이터
    -- product_name like 'BASIC _T?SSY TEE'; # 쿼리 + like + 포함할 내용 + _ + 포함할 내용       포함할 내용 사이 _갯수를 변수로 두는 모든 데이터
    -- product_name like 'BASIC %?SSY TEE'; # 쿼리 + like + 포함할 내용 + % + 포함할 내용        포함할 내용 % 포함할 내용 사이에 무언가를 두는 모든 데이터
    
    
    -- product_name in('NO.4 TEE', 'PROPERTY OF TEE') 
    
select
	*
from
	product_tb
where
	product_name like 'NO%'
    or product_name like 'PROPERTY%';
    
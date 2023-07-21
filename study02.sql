# 1. 각 계정별로 어떤 기부를 했는지
# 2. 센터별 총 기부액 조회
# 3. 기부 항목별 총 기부액 조회
# 4. 카테고리 별로 총 기부액 조회


# 1 각 계정별로 어떤 기부를 했는지
select
	gt.giver_id,
	gt.user_id,
	ut.name,
	gt.giving_page_id,
	gt.giving_total,
	gpt.story_title    
from
	giver_tb gt
    left outer join giving_page_tb gpt on(gpt.giving_page_id = gt.giving_page_id)
    left outer join user_tb ut on(ut.user_id = gt.user_id)
group by
	gt.giver_id;
    

# 2 센터별 총 기부액 조회
select
	ct.center_name,
	ct.center_id,
    ifnull(sum(gt.giving_total), 0) as '기부 총액'
from
	center_tb ct
    left outer join giving_page_tb gpt on(gpt.center_id = ct.center_id)
    left outer join giver_tb gt on(gt.giving_page_id = gpt.giving_page_id)
group by
	gt.giving_total,
    ct.center_id,
	ct.center_name;

# 3 기부 항목별 총 기부액 조회
select
	gpt.giving_page_id,
	giving_name,
   ifnull(sum(giving_total), 0) as 'giving_total'
from
	giving_page_tb gpt
    left outer join giver_tb gt on(gt.giving_page_id = gpt.giving_page_id)
group by
	giving_name,
	giving_page_id,
    giving_total;
    
    
# 4 카테고리 별로 총 기부액 조회
select
	gct.giving_category_name,
    ifnull(sum(gt.giving_total), 0) as 'giving_total'
from
	giving_category_tb gct
    left outer join giving_page_tb gpt on(gpt.category_id = gct.giving_category_id)
    left outer join giver_tb gt on(gt.giving_page_id = gpt.giving_page_id)
group by
	gct.giving_category_id;
    

	
	
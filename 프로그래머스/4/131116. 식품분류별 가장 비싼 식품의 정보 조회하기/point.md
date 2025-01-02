# 어려웠던 점
<처음 쿼리> 
```SELECT CATEGORY, MAX(PRICE) AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE CATEGORY IN('과자','국','김치','식용유') 
GROUP BY CATEGORY
ORDER BY MAX(PRICE) DESC;```

문제점: group by category 후 product_name을 포함한 것
- 각 카테고리별로 그룹화하는 것은 맞지만, product_name은 각 카테고리 내에서 여러 개가 있을 수 있음. SQL은 그 중 어떤 product_name을 선택해야할지 모르게 되어 랜덤으로 내보내게 됨
- group by절을 사용할 때는 그 그룹의 하나의 대표값만 선택할 수 있으니까, product_name도 기준이 필요해서 이 열을 위한 방식이 따로 필요함

해결 방법: '카테고리 내에서' '가장 비싼 가격을 가진' 제품을 선택하려면, 서브쿼리 사용해서 각 카테고리별 최대 가격에 맞는 product_name을 가져와야함
- 서브쿼리 통해 각 카테고리별 가장 비싼 가격을 찾아서, 그 가격과 일치하는 product_name을 가져오는 방식으로 문제 해결 

--5. Сформируйте выборку, которая содержит средние движения по счетам в рамках одного дня, в разрезе типа продукта.

--не особо поняла, что значит "средние движения по счетам"

select pt.NAME as 'Тип продукта',  acc.ACC_NUM as 'Номер счета', 
sum(rec.SUM) as 'Сумма движений по счету (руб)',
avg(rec.SUM) as 'Среднее по счету'
from PRODUCTS prod
join ACCOUNTS acc on acc.PRODUCT_REF = prod.ID
join PRODUCT_TYPE pt on pt.ID = prod.PRODUCT_TYPE_ID
join RECORDS rec on rec.ACC_REF = acc.ID	
where prod.PRODUCT_TYPE_ID = 1
	  and rec.OPEN_DATE = CONVERT(DATE,'01.10.2015') --рандомная дата из уже имеющихся в таблице
group by pt.NAME, acc.ACC_NUM
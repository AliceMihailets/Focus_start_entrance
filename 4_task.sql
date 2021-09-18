--4. Сформируйте отчет, который содержит все счета, относящиеся к продуктам типа ДЕПОЗИТ, 
--принадлежащих клиентам, у которых нет открытых продуктов типа КРЕДИТ.

select acc.ACC_NUM
from ACCOUNTS acc
join PRODUCTS prod on prod.ID = acc.PRODUCT_REF
join PRODUCT_TYPE pt on prod.PRODUCT_TYPE_ID = pt.ID
join CLIENTS cl on prod.CLIENT_REF = cl.ID
where pt.ID = 2
	and cl.ID in 
		(select cl.ID
		from CLIENTS cl
		join PRODUCTS prod on prod.CLIENT_REF = cl.ID
		where prod.PRODUCT_TYPE_ID = 1 
			and prod.CLOSE_DATE is not null 
		group by cl.ID)
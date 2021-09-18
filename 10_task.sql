-- 10.	Закройте возможность открытия (установите дату окончания действия) для типов 
-- продуктов, по счетам продуктов которых, не было движений более одного месяца.

update PRODUCT_TYPE
set END_DATE = CAST(CURRENT_TIMESTAMP AS DATE)
where PRODUCT_TYPE.ID =
	(select table_A.Prod_type_ID
	from

		(select MAX(rec.OPEN_DATE) as 'Last_date',

		(select MAX(OPEN_DATE)
		from RECORDS
		where OPEN_DATE <
			(select MAX(rec_prev.OPEN_DATE)
			from RECORDS rec_prev
			join ACCOUNTS acc_prev on acc_prev.ID = rec_prev.ACC_REF
			join PRODUCTS prod_prev on prod_prev.ID = acc_prev.PRODUCT_REF
			where prod_prev.ID = prod.ID
			)
		) as 'Prev_date',

		(select prod.PRODUCT_TYPE_ID) as 'Prod_type_ID'

		from PRODUCT_TYPE pt
		join PRODUCTS prod on prod.PRODUCT_TYPE_ID = pt.ID
		join ACCOUNTS acc on acc.PRODUCT_REF = prod.ID
		join RECORDS rec on rec.ACC_REF = acc.ID
		group by prod.NAME, prod.ID, prod.PRODUCT_TYPE_ID
		) table_A
	where DATEDIFF(D, Prev_date, Last_date) > DAY(eomonth(Prev_date))
	)
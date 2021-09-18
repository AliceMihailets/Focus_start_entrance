--11.	� ������ ������ �������� ����� �������� �� ��������. ��������� ���� ��� ���� ��������� ������ 
--������������ ��������� �������� �� ����� ��� �������� ���� ������, � ������ 
--������������ ���������� �������� �� ����� �������� ��� �������� ���� ������� ��� �����.

alter table PRODUCTS
add SUM_CONTRACT numeric(10, 2)

update PRODUCTS
set SUM_CONTRACT = 
	(select table_A.Max_sum
	from
		(select prod.ID as 'Product_ID', acc.ACC_NUM as 'Acc_number', MAX(rec.SUM) as 'Max_sum'
		from ACCOUNTS acc
		join RECORDS rec on rec.ACC_REF = acc.ID
		join PRODUCTS prod on prod.ID = acc.PRODUCT_REF
		join PRODUCT_TYPE pt on pt.ID = prod.PRODUCT_TYPE_ID
		where rec.DT = 1
			and pt.NAME like '������'
		group by prod.ID, acc.ACC_NUM

		UNION

		select prod.ID as 'Product_ID', acc.ACC_NUM as 'Acc_number', MAX(rec.SUM) as 'Max_sum'
		from ACCOUNTS acc
		join RECORDS rec on rec.ACC_REF = acc.ID
		join PRODUCTS prod on prod.ID = acc.PRODUCT_REF
		join PRODUCT_TYPE pt on pt.ID = prod.PRODUCT_TYPE_ID
		where rec.DT = 0
			and (pt.NAME like '�������' or pt.NAME like '�����')
		group by prod.ID, acc.ACC_NUM) table_A
	where PRODUCTS.ID = table_A.Product_ID
	)
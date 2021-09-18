--5. ����������� �������, ������� �������� ������� �������� �� ������ � ������ ������ ���, � ������� ���� ��������.

--�� ����� ������, ��� ������ "������� �������� �� ������"

select pt.NAME as '��� ��������',  acc.ACC_NUM as '����� �����', 
sum(rec.SUM) as '����� �������� �� ����� (���)',
avg(rec.SUM) as '������� �� �����'
from PRODUCTS prod
join ACCOUNTS acc on acc.PRODUCT_REF = prod.ID
join PRODUCT_TYPE pt on pt.ID = prod.PRODUCT_TYPE_ID
join RECORDS rec on rec.ACC_REF = acc.ID	
where prod.PRODUCT_TYPE_ID = 1
	  and rec.OPEN_DATE = CONVERT(DATE,'01.10.2015') --��������� ���� �� ��� ��������� � �������
group by pt.NAME, acc.ACC_NUM
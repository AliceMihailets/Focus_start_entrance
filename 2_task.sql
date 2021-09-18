insert into tarifs values (1,'����� �� ������ �������', 10);
insert into tarifs values (2,'����� �� �������� �����', 10);
insert into tarifs values (3,'����� �� ������������ �����', 10);

insert into product_type values (1, '������', CONVERT(DATE, '01.01.2018'), null, 1);
insert into product_type values (2, '�������', CONVERT(DATE, '01.01.2018'), null, 2);
insert into product_type values (3, '�����', CONVERT(DATE, '01.01.2018'), null, 3);

insert into clients values (1, '������� ���� ��������', '������, ���������� ������, �. ������', CONVERT(DATE, '01.01.2001'), '������, ���������� ������, �. ������, ��. ����������, �. 5', '2222 555555, ����� ��� �. ������, 10.01.2015');
insert into clients values (2, '������ ���� ���������', '������, ���������� ������, �. ����', CONVERT(DATE, '01.01.2001'), '������, ���������� ������, �. ����, ��. ���������, �. 3', '4444 666666, ����� ��� �. ����, 10.01.2015');
insert into clients values (3, '������ ����� ��������', '������, ���������� ������, �. ��������', CONVERT(DATE, '01.01.2001'), '������, ���������� ������, �. ��������, ��. �������, �. 7', '4444 666666, ����� ��� �. ����, 10.01.2015');

insert into products values (1, 1, '��������� ������� � ��������� �.�.', 1, CONVERT(DATE,'01.06.2015'), null);
insert into products values (2, 2, '���������� ������� � ��������� �.�.', 2, CONVERT(DATE,'01.08.2017'), null);
insert into products values (3, 3, '��������� ������� � ��������� �.�.', 3, CONVERT(DATE,'01.08.2017'), null);


insert into accounts values (1, '��������� ���� ��� �������� �.�.', -2000, 1, CONVERT(DATE,'01.06.2015'), null, 1, '45502810401020000022');
insert into accounts values (2, '���������� ���� ��� �������� �.�.', 6000, 2, CONVERT(DATE,'01.08.2017'), null, 2, '42301810400000000001');
insert into accounts values (3, '��������� ���� ��� �������� �.�.', 8000, 3, CONVERT(DATE,'01.08.2017'), null, 3, '40817810700000000001');

insert into records values (1, 1, 5000, 1, CONVERT(DATE,'01.06.2015'));
insert into records values (2, 0, 1000, 1, CONVERT(DATE,'01.07.2015'));
insert into records values (3, 0, 2000, 1, CONVERT(DATE,'01.08.2015'));
insert into records values (4, 0, 3000, 1, CONVERT(DATE,'01.09.2015'));
insert into records values (5, 1, 5000, 1, CONVERT(DATE,'01.10.2015'));
insert into records values (6, 0, 3000, 1, CONVERT(DATE,'01.10.2015'));

insert into records values (7, 0, 10000, 2, CONVERT(DATE,'01.08.2017'));
insert into records values (8, 1, 1000, 2, CONVERT(DATE,'05.08.2017'));
insert into records values (9, 1, 2000, 2, CONVERT(DATE,'21.09.2017'));
insert into records values (10, 1, 5000, 2, CONVERT(DATE,'24.10.2017'));
insert into records values (11, 0, 6000, 2, CONVERT(DATE,'26.11.2017'));

insert into records values (12, 0, 120000, 3, CONVERT(DATE,'08.09.2017'));
insert into records values (13, 1, 1000, 3, CONVERT(DATE,'05.10.2017'));
insert into records values (14, 1, 2000, 3, CONVERT(DATE,'21.10.2017'));
insert into records values (15, 1, 5000, 3, CONVERT(DATE,'24.10.2017'));
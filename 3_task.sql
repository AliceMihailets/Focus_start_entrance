--3. ??????????? ??????? ?????????? ?????? ????????? ???????, ???????????? ??? ?????????? ??????? ????

--4 ???????
insert into clients values (10, '???????? ???? ?????????', '??????, ?????????? ??????, ?. ?????', 
							CONVERT(DATE, '22.06.1977'), '??????, ?????????? ??????, ?. ?????, ??. ??????, ?. 1', 
							'1111 555555, ????? ??? ?. ?????, 10.01.2020');
insert into clients values (11, '???????? ?????? ????????', '??????, ?????????? ??????, ?. ?????', 
							CONVERT(DATE, '11.11.1999'), '??????, ?????????? ??????, ?. ?????, ??. ??????, ?. 1', 
							'5555 555555, ????? ??? ?. ?????, 10.01.2020');

insert into products values (10, 1, '????????? ??????? ? ?????????? ?.?.', 10, 
							CONVERT(DATE,'01.06.2020'), CONVERT(DATE,'01.06.2021'));
insert into products values (11, 1, '????????? ??????? ? ?????????? ?.?.', 11, 
							CONVERT(DATE,'01.06.2020'), null);
insert into products values (12, 2, '?????????? ??????? ? ?????????? ?.?.', 10, 
							CONVERT(DATE,'01.06.2010'), CONVERT(DATE,'01.06.2011'));
insert into products values (13, 2, '?????????? ??????? ? ?????????? ?.?.', 11, 
							CONVERT(DATE,'01.06.2010'), null);

insert into accounts values (10, '?????????? ???? ??? ????????? ?.?.', 10000, 10, CONVERT(DATE,'01.08.2017'), 
							CONVERT(DATE,'01.08.2019'), 12, '42301800000000000001');
insert into accounts values (11, '?????????? ???? ??? ????????? ?.?.', 1000, 10, CONVERT(DATE,'01.08.2020'), 
							null, 12, '42301800000000000002');
insert into accounts values (12, '?????????? ???? ??? ????????? ?.?.', 10000, 11, CONVERT(DATE,'01.08.2017'), 
							CONVERT(DATE,'01.08.2019'), 13, '42301800000000000011');
insert into accounts values (13, '?????????? ???? ??? ????????? ?.?.', 1000, 11, CONVERT(DATE,'01.08.2020'), 
							null, 13, '42301800000000000012');

--5 ???????
--???????? ?? ???????? ?????? ?? ??? ?????????? ???????

--6 ???????
insert into records values (20, 0, 5000, 11, CONVERT(DATE,'10.09.2021'));
insert into records values (21, 0, 1000, 11, CONVERT(DATE,'10.09.2021'));
insert into records values (22, 0, 2000, 13, CONVERT(DATE,'15.09.2021'));
insert into records values (23, 0, 3000, 13, CONVERT(DATE,'12.01.2021'));

--8 ???????
insert into clients values (12, '??????? ????? ????????', '??????, ?????????? ??????, ?. ?????', 
							CONVERT(DATE, '12.12.2012'), '??????, ?????????? ??????, ?. ?????, ??. ??????, ?. 1', 
							'6666 666666, ????? ??? ?. ?????, 20.01.2000');

insert into products values (14, 1, '????????? ??????? ?? ????????? ?.?.', 12, 
							CONVERT(DATE,'01.06.2019'), null, null);

insert into accounts values (14, '????????? ???? ??? ???????? ?.?.', 1000, 14, CONVERT(DATE,'01.08.2020'), 
							CONVERT(DATE,'01.08.2021'), 12, '42301800000000000055');

--9 ???????
insert into records values (24, 1, 5000, 14, CONVERT(DATE,'10.09.2021'));
insert into records values (25, 0, 1000, 14, CONVERT(DATE,'12.09.2021'));
insert into records values (26, 0, 4000, 14, CONVERT(DATE,'15.09.2021'));

--10 ???????
--???????? ?? ???????? ?????? ?? ??? ?????????? ??????? (Produsts.Prod_ID = 2, Product_type.Name = '???????')

--11 ???????
--???????? ?? ???????? ?????? ?? ??? ?????????? ???????
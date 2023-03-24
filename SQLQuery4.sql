select * from Orders order by OrderDate desc;

/* 11077	RATTC	1	1998-05-06 00:00:00.000	1998-06-03 00:00:00.000	NULL	2	8.53	Rattlesnake Canyon Grocery	2817 Milton Dr.	Albuquerque	NM	87110	USA
11076	BONAP	4	1998-05-06 00:00:00.000	1998-06-03 00:00:00.000	NULL	2	38.28	Bon app'	12, rue des Bouchers	Marseille	NULL	13008	France
11075	RICSU	8	1998-05-06 00:00:00.000	1998-06-03 00:00:00.000	NULL	2	6.19	Richter Supermarkt	Starenweg 5	Genève	NULL	1204	Switzerland
11074	SIMOB	7	1998-05-06 00:00:00.000	1998-06-03 00:00:00.000	NULL	2	18.44	Simons bistro	Vinbæltet 34	Kobenhavn	NULL	1734	Denmark
11073	PERIC	2	1998-05-05 00:00:00.000	1998-06-02 00:00:00.000	NULL	2	24.95	Pericles Comidas clásicas	Calle Dr. Jorge Cash 321	México D.F.	NULL	05033	Mexico*/

--we can get data by orderwise depends on class type
select distinct OrderDate from Orders order by OrderDate desc;
/*1998-05-06 00:00:00.000
1998-05-05 00:00:00.000
1998-05-04 00:00:00.000
1998-05-01 00:00:00.000
1998-04-30 00:00:00.000
1998-04-29 00:00:00.000 */

--to view the dupliate data perticular column data
select distinct EmployeeID from Orders;

/* 1
2
3
4
5
6
7
8
9*/

--filters---

select * from Orders where ShipVia=2;
/* I had just mentioned here top 5 from results

10250	HANAR	4	1996-07-08 00:00:00.000	1996-08-05 00:00:00.000	1996-07-12 00:00:00.000	2	65.83	Hanari Carnes	Rua do Paço, 67	Rio de Janeiro	RJ	05454-876	Brazil
10252	SUPRD	4	1996-07-09 00:00:00.000	1996-08-06 00:00:00.000	1996-07-11 00:00:00.000	2	51.30	Suprêmes délices	Boulevard Tirou, 255	Charleroi	NULL	B-6000	Belgium
10253	HANAR	3	1996-07-10 00:00:00.000	1996-07-24 00:00:00.000	1996-07-16 00:00:00.000	2	58.17	Hanari Carnes	Rua do Paço, 67	Rio de Janeiro	RJ	05454-876	Brazil
10254	CHOPS	5	1996-07-11 00:00:00.000	1996-08-08 00:00:00.000	1996-07-23 00:00:00.000	2	22.98	Chop-suey Chinese	Hauptstr. 31	Bern	NULL	3012	Switzerland
10256	WELLI	3	1996-07-15 00:00:00.000	1996-08-12 00:00:00.000	1996-07-17 00:00:00.000	2	13.97	Wellington Importadora	Rua do Mercado, 12	Resende	SP	08737-363	Brazil */

select * from Orders where OrderDate='1996-08-01';
--all the data here--
/* 10270	WARTH	1	1996-08-01 00:00:00.000	1996-08-29 00:00:00.000	1996-08-02 00:00:00.000	1	136.54	Wartian Herkku	Torikatu 38	Oulu	NULL	90110	Finland
10271	SPLIR	6	1996-08-01 00:00:00.000	1996-08-29 00:00:00.000	1996-08-30 00:00:00.000	2	4.54	Split Rail Beer & Ale	P.O. Box 555	Lander	WY	82520	USA */



select * from Orders where EmployeeID > 8 ;
-- we can do it in the same using "dates, numbers, > or = or >= or <=" for all
/*10255	RICSU	9	1996-07-12 00:00:00.000	1996-08-09 00:00:00.000	1996-07-15 00:00:00.000	3	148.33	Richter Supermarkt	Starenweg 5	Genève	NULL	1204	Switzerland
10263	ERNSH	9	1996-07-23 00:00:00.000	1996-08-20 00:00:00.000	1996-07-31 00:00:00.000	3	146.06	Ernst Handel	Kirchgasse 6	Graz	NULL	8010	Austria
10324	SAVEA	9	1996-10-08 00:00:00.000	1996-11-05 00:00:00.000	1996-10-10 00:00:00.000	1	214.27	Save-a-lot Markets	187 Suffolk Ln.	Boise	ID	83720	USA
10331	BONAP	9	1996-10-16 00:00:00.000	1996-11-27 00:00:00.000	1996-10-21 00:00:00.000	1	10.19	Bon app'	12, rue des Bouchers	Marseille	NULL	13008	France
10386	FAMIA	9	1996-12-18 00:00:00.000	1997-01-01 00:00:00.000	1996-12-25 00:00:00.000	3	13.99	Familia Arquibaldo	Rua Orós, 92	Sao Paulo	SP	05442-030	Brazil
10411	BOTTM	9	1997-01-10 00:00:00.000	1997-02-07 00:00:00.000	1997-01-21 00:00:00.000	3	23.65	Bottom-Dollar Markets	23 Tsawassen Blvd.	Tsawassen	BC	T2F 8M4	Canada
10475	SUPRD	9	1997-03-14 00:00:00.000	1997-04-11 00:00:00.000	1997-04-04 00:00:00.000	1	68.52	Suprêmes délices	Boulevard Tirou, 255	Charleroi	NULL	B-6000	Belgium
10501	BLAUS	9	1997-04-09 00:00:00.000	1997-05-07 00:00:00.000	1997-04-16 00:00:00.000	3	8.85	Blauer See Delikatessen	Forsterstr. 57	Mannheim	NULL	68306	Germany
10506	KOENE	9	1997-04-15 00:00:00.000	1997-05-13 00:00:00.000	1997-05-02 00:00:00.000	2	21.19	Königlich Essen	Maubelstr. 90	Brandenburg	NULL	14776	Germany
10538	BSBEV	9	1997-05-15 00:00:00.000	1997-06-12 00:00:00.000	1997-05-16 00:00:00.000	3	4.87	B's Beverages	Fauntleroy Circus	London	NULL	EC2 5NT	UK
10557	LEHMS	9	1997-06-03 00:00:00.000	1997-06-17 00:00:00.000	1997-06-06 00:00:00.000	2	96.72	Lehmanns Marktstand	Magazinweg 7	Frankfurt a.M.	NULL	60528	Germany
10566	BLONP	9	1997-06-12 00:00:00.000	1997-07-10 00:00:00.000	1997-06-18 00:00:00.000	1	88.40	Blondel père et fils	24, place Kléber	Strasbourg	NULL	67000	France
10577	TRAIH	9	1997-06-23 00:00:00.000	1997-08-04 00:00:00.000	1997-06-30 00:00:00.000	2	25.41	Trail's Head Gourmet Provisioners	722 DaVinci Blvd.	Kirkland	WA	98034	USA
10586	REGGC	9	1997-07-02 00:00:00.000	1997-07-30 00:00:00.000	1997-07-09 00:00:00.000	1	0.48	Reggiani Caseifici	Strada Provinciale 124	Reggio Emilia	NULL	42100	Italy
10646	HUNGO	9	1997-08-27 00:00:00.000	1997-10-08 00:00:00.000	1997-09-03 00:00:00.000	3	142.33	Hungry Owl All-Night Grocers	8 Johnstown Road	Cork	Co. Cork	NULL	Ireland
10672	BERGS	9	1997-09-17 00:00:00.000	1997-10-01 00:00:00.000	1997-09-26 00:00:00.000	2	95.75	Berglunds snabbköp	Berguvsvägen  8	Luleå	NULL	S-958 22	Sweden
10687	HUNGO	9	1997-09-30 00:00:00.000	1997-10-28 00:00:00.000	1997-10-30 00:00:00.000	2	296.43	Hungry Owl All-Night Grocers	8 Johnstown Road	Cork	Co. Cork	NULL	Ireland
10705	HILAA	9	1997-10-15 00:00:00.000	1997-11-12 00:00:00.000	1997-11-18 00:00:00.000	2	3.52	HILARION-Abastos	Carrera 22 con Ave. Carlos Soublette #8-35	San Cristóbal	Táchira	5022	Venezuela
10736	HUNGO	9	1997-11-11 00:00:00.000	1997-12-09 00:00:00.000	1997-11-21 00:00:00.000	2	44.10	Hungry Owl All-Night Grocers	8 Johnstown Road	Cork	Co. Cork	NULL	Ireland
10745	QUICK	9	1997-11-18 00:00:00.000	1997-12-16 00:00:00.000	1997-11-27 00:00:00.000	1	3.52	QUICK-Stop	Taucherstraße 10	Cunewalde	NULL	01307	Germany
10750	WARTH	9	1997-11-21 00:00:00.000	1997-12-19 00:00:00.000	1997-11-24 00:00:00.000	1	79.30	Wartian Herkku	Torikatu 38	Oulu	NULL	90110	Finland
10771	ERNSH	9	1997-12-10 00:00:00.000	1998-01-07 00:00:00.000	1998-01-02 00:00:00.000	2	11.19	Ernst Handel	Kirchgasse 6	Graz	NULL	8010	Austria
10782	CACTU	9	1997-12-17 00:00:00.000	1998-01-14 00:00:00.000	1997-12-22 00:00:00.000	3	1.10	Cactus Comidas para llevar	Cerrito 333	Buenos Aires	NULL	1010	Argentina
10799	KOENE	9	1997-12-26 00:00:00.000	1998-02-06 00:00:00.000	1998-01-05 00:00:00.000	3	30.76	Königlich Essen	Maubelstr. 90	Brandenburg	NULL	14776	Germany
10828	RANCH	9	1998-01-13 00:00:00.000	1998-01-27 00:00:00.000	1998-02-04 00:00:00.000	1	90.85	Rancho grande	Av. del Libertador 900	Buenos Aires	NULL	1010	Argentina
10829	ISLAT	9	1998-01-13 00:00:00.000	1998-02-10 00:00:00.000	1998-01-23 00:00:00.000	1	154.72	Island Trading	Garden House Crowther Way	Cowes	Isle of Wight	PO31 7PJ	UK
10837	BERGS	9	1998-01-16 00:00:00.000	1998-02-13 00:00:00.000	1998-01-23 00:00:00.000	3	13.32	Berglunds snabbköp	Berguvsvägen  8	Luleå	NULL	S-958 22	Sweden
10849	KOENE	9	1998-01-23 00:00:00.000	1998-02-20 00:00:00.000	1998-01-30 00:00:00.000	2	0.56	Königlich Essen	Maubelstr. 90	Brandenburg	NULL	14776	Germany
10853	BLAUS	9	1998-01-27 00:00:00.000	1998-02-24 00:00:00.000	1998-02-03 00:00:00.000	2	53.83	Blauer See Delikatessen	Forsterstr. 57	Mannheim	NULL	68306	Germany
10871	BONAP	9	1998-02-05 00:00:00.000	1998-03-05 00:00:00.000	1998-02-10 00:00:00.000	2	112.27	Bon app'	12, rue des Bouchers	Marseille	NULL	13008	France
10889	RATTC	9	1998-02-16 00:00:00.000	1998-03-16 00:00:00.000	1998-02-23 00:00:00.000	3	280.61	Rattlesnake Canyon Grocery	2817 Milton Dr.	Albuquerque	NM	87110	USA
10893	KOENE	9	1998-02-18 00:00:00.000	1998-03-18 00:00:00.000	1998-02-20 00:00:00.000	2	77.78	Königlich Essen	Maubelstr. 90	Brandenburg	NULL	14776	Germany
10905	WELLI	9	1998-02-24 00:00:00.000	1998-03-24 00:00:00.000	1998-03-06 00:00:00.000	2	13.72	Wellington Importadora	Rua do Mercado, 12	Resende	SP	08737-363	Brazil
10942	REGGC	9	1998-03-11 00:00:00.000	1998-04-08 00:00:00.000	1998-03-18 00:00:00.000	3	17.95	Reggiani Caseifici	Strada Provinciale 124	Reggio Emilia	NULL	42100	Italy
10951	RICSU	9	1998-03-16 00:00:00.000	1998-04-27 00:00:00.000	1998-04-07 00:00:00.000	2	30.85	Richter Supermarkt	Starenweg 5	Genève	NULL	1204	Switzerland
10953	AROUT	9	1998-03-16 00:00:00.000	1998-03-30 00:00:00.000	1998-03-25 00:00:00.000	2	23.72	Around the Horn	Brook Farm Stratford St. Mary	Colchester	Essex	CO7 6JX	UK
10963	FURIB	9	1998-03-19 00:00:00.000	1998-04-16 00:00:00.000	1998-03-26 00:00:00.000	3	2.70	Furia Bacalhau e Frutos do Mar	Jardim das rosas n. 32	Lisboa	NULL	1675	Portugal
10970	BOLID	9	1998-03-24 00:00:00.000	1998-04-07 00:00:00.000	1998-04-24 00:00:00.000	1	16.16	Bólido Comidas preparadas	C/ Araquil, 67	Madrid	NULL	28023	Spain
10978	MAISD	9	1998-03-26 00:00:00.000	1998-04-23 00:00:00.000	1998-04-23 00:00:00.000	2	32.82	Maison Dewey	Rue Joseph-Bens 532	Bruxelles	NULL	B-1180	Belgium
11016	AROUT	9	1998-04-10 00:00:00.000	1998-05-08 00:00:00.000	1998-04-13 00:00:00.000	2	33.80	Around the Horn	Brook Farm Stratford St. Mary	Colchester	Essex	CO7 6JX	UK
11017	ERNSH	9	1998-04-13 00:00:00.000	1998-05-11 00:00:00.000	1998-04-20 00:00:00.000	2	754.26	Ernst Handel	Kirchgasse 6	Graz	NULL	8010	Austria
11022	HANAR	9	1998-04-14 00:00:00.000	1998-05-12 00:00:00.000	1998-05-04 00:00:00.000	2	6.27	Hanari Carnes	Rua do Paço, 67	Rio de Janeiro	RJ	05454-876	Brazil
11058	BLAUS	9	1998-04-29 00:00:00.000	1998-05-27 00:00:00.000	NULL	3	31.14	Blauer See Delikatessen	Forsterstr. 57	Mannheim	NULL	68306	Germany */


select * from Orders order by OrderDate desc;


select top 5 CustomerID,OrderDate 
from Orders 
where EmployeeID > 8 
order by OrderDate;

/* RICSU	1996-07-12 00:00:00.000
ERNSH	1996-07-23 00:00:00.000
SAVEA	1996-10-08 00:00:00.000
BONAP	1996-10-16 00:00:00.000
FAMIA	1996-12-18 00:00:00.000
BOTTM	1997-01-10 00:00:00.000
SUPRD	1997-03-14 00:00:00.000
BLAUS	1997-04-09 00:00:00.000
KOENE	1997-04-15 00:00:00.000
BSBEV	1997-05-15 00:00:00.000
LEHMS	1997-06-03 00:00:00.000
BLONP	1997-06-12 00:00:00.000
TRAIH	1997-06-23 00:00:00.000
REGGC	1997-07-02 00:00:00.000
HUNGO	1997-08-27 00:00:00.000
BERGS	1997-09-17 00:00:00.000
HUNGO	1997-09-30 00:00:00.000
HILAA	1997-10-15 00:00:00.000
HUNGO	1997-11-11 00:00:00.000
QUICK	1997-11-18 00:00:00.000
WARTH	1997-11-21 00:00:00.000
ERNSH	1997-12-10 00:00:00.000
CACTU	1997-12-17 00:00:00.000
KOENE	1997-12-26 00:00:00.000
RANCH	1998-01-13 00:00:00.000
ISLAT	1998-01-13 00:00:00.000
BERGS	1998-01-16 00:00:00.000
KOENE	1998-01-23 00:00:00.000
BLAUS	1998-01-27 00:00:00.000
BONAP	1998-02-05 00:00:00.000
RATTC	1998-02-16 00:00:00.000
KOENE	1998-02-18 00:00:00.000
WELLI	1998-02-24 00:00:00.000
REGGC	1998-03-11 00:00:00.000
RICSU	1998-03-16 00:00:00.000
AROUT	1998-03-16 00:00:00.000
FURIB	1998-03-19 00:00:00.000
BOLID	1998-03-24 00:00:00.000
MAISD	1998-03-26 00:00:00.000
AROUT	1998-04-10 00:00:00.000
ERNSH	1998-04-13 00:00:00.000
HANAR	1998-04-14 00:00:00.000



BLAUS	1998-04-29 00:00:00.000 */



select top 5 CustomerID,OrderDate 
from Orders 
where EmployeeID > 8 
order by OrderDate desc;

/* RICSU	1996-07-12 00:00:00.000
ERNSH	1996-07-23 00:00:00.000
SAVEA	1996-10-08 00:00:00.000
BONAP	1996-10-16 00:00:00.000
FAMIA	1996-12-18 00:00:00.000 */

select top 5 CustomerID,OrderDate 
from Orders 
where EmployeeID > 8 
order by OrderDate desc;

/* BLAUS	1998-04-29 00:00:00.000
HANAR	1998-04-14 00:00:00.000
ERNSH	1998-04-13 00:00:00.000
AROUT	1998-04-10 00:00:00.000
MAISD	1998-03-26 00:00:00.000 */

select * from Orders;


select top 5 * 
from Orders 
where ShippedDate between  '1996-07-16' and '1998-02-04'
order by ShippedDate desc;

-- using RANGE with the help of BETWEEN-AND 


/* 10862	LEHMS	8	1998-01-30 00:00:00.000	1998-03-13 00:00:00.000	1998-02-02 00:00:00.000	2	53.23	Lehmanns Marktstand	Magazinweg 7	Frankfurt a.M.	NULL	60528	Germany
10860	FRANR	3	1998-01-29 00:00:00.000	1998-02-26 00:00:00.000	1998-02-04 00:00:00.000	3	19.26	France restauration	54, rue Royale	Nantes	NULL	44000	France
10859	FRANK	1	1998-01-29 00:00:00.000	1998-02-26 00:00:00.000	1998-02-02 00:00:00.000	2	76.10	Frankenversand	Berliner Platz 43	München	NULL	80805	Germany
10858	LACOR	2	1998-01-29 00:00:00.000	1998-02-26 00:00:00.000	1998-02-03 00:00:00.000	1	52.51	La corne d'abondance	67, avenue de l'Europe	Versailles	NULL	78000	France
10855	OLDWO	3	1998-01-27 00:00:00.000	1998-02-24 00:00:00.000	1998-02-04 00:00:00.000	1	170.97	Old World Delicatessen	2743 Bering St.	Anchorage	AK	99508	USA */


select * from Orders;

select distinct EmployeeID from Orders
where EmployeeID in (4,5,6);

--we can give use this dates or range as well
/* 4
5
6 */

select * from Orders;

-- to ckeck weather it worked out or not to use distinct
select distinct EmployeeID from Orders
where EmployeeID not in (4,5,6);
-- not in --revers
/*
1
2
3
7
8
9 */


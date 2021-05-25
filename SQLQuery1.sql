--Aras�nda ise x yazs�n
select sira,ad,soyad,kilo,sikleti=
CASE
when kilo>=40 and kilo<=50 THEN 'Sinek Sitlet'
when kilo>=51 and kilo<=60 THEN 'Sinek Sitlet'
when kilo>=61 and kilo<=80 THEN 'Sinek Sitlet'
when kilo>=81 and kilo<=100 THEN 'Sinek Sitlet'
when kilo>=101 and kilo<=120 THEN 'Sinek Sitlet'
ELSE 'Klasman D���'
END
from guresciler


--- (varsay�lan ayarla )bo�sa x yaz�ls�n
alter table guresciler
add constraint DF_kilo DEFAULT 80 for kilo
alter table guresciler
add constraint DF_ulke DEFAULT 'Not country' for ulke


--aral�k ta olsun
alter table guresciler
add constraint CK_kilo CHECK (kilo>=40 and kilo<=120)

alter table guresciler
add constraint CK_kilo CHECK (kilo between 40 and 120)

--Alan ekleme
ALTER TABLE guresciler
add sonma�tarihi smalldatetime,
galibiyetserisi tinyint, 
ma�lubiyetsayisi tinyint


----Sorgular-------

-- artt�rma
update guresciler set kilo=kilo+2




---left 3 harfi g�ster
select ad+' '+soyad, left(ulke,3) from guresciler
select left(ad,1)+' '+ soyad, LOWER(left(ulke,3)) from guresciler
select left(ad,1)+' '+ soyad, UPPER(left(ulke,3)) from guresciler

----ka� ki�i var
Select COUNT(*) as [ASG SAYISI] from guresciler
where kilo>=100 and kilo<=120

----ayr�m yapma
select distinct(ulke) from guresciler

---ortalama hesaplama
select AVG(kilo) from guresciler


select * from guresciler
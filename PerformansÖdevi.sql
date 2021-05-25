--create database performansodevi  (database oluşturma)
--create table veri (adi char(20) NOT NULL,soyadi char(20) NOT NULL,yas numeric(3,0) NOT NULL,id int IDENTITY(1,1) PRIMARY KEY,) (tablo oluşturma)
--select * from veri (tüm verileri getirme)
use performansodevi --veritabanı seçtik

select * from veri -- tabloyu açtık

select adi,id from veri -- veri tablosundan adi ve id yi sıralattık

select * from veri where yas=18  -- yaşı 18 olanları sıralattık

select * from veri where yas=18 and soyadi='Kurt'  -- yaşı 18 olan ve soyadı Kurt olanları sıralattık

select top 5 * from veri 

insert into veri(adi, soyadi, yas)
values ('Ali','�ahin',68)

delete from veri
where id=13   --- id'si 13 olanlar silindi veri tablosundan

select * from veri
order by adi

update veri
set yas=18
where id=3

delete from veri
where adi like 'Ali%'

select * from veri
where yas between 18 and 40

select MAX(yas) AS EnyuksekYas from veri

select * from veri where adi  is null -- adı boş olanları listeleme olması lazım

select adi,yas,id
from veri
where yas=18
and soyadi='Kurt'

select * from veri order by yas 

select * from veri order by newid()

select top 1 * from veri order by newid()
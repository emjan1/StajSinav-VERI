use sinav2
select AVG(kilo) from guresciler
-- kilosuy ortalamnýn altýnda klanalrý listele
select kilo,ad,soyad from gurescielr where kilo-AVG(kilo)
use sinav2
select AVG(kilo) from guresciler
-- kilosuy ortalamn�n alt�nda klanalr� listele
select kilo,ad,soyad from gurescielr where kilo-AVG(kilo)
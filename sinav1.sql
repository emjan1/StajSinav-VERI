use sinav2
select sira,ad,soyad,kilo,ulke,sikleti=
Case 
When kilo >= 40 and kilo <=55 Then 'Sinek Siklet'
When kilo >= 56 and kilo <=74 Then 'Tüy Siklet'
When kilo >= 75 and kilo <=99 Then 'Hafif Siklet'
When kilo >= 100 and kilo <=200 Then 'Ağır Siklet'
else 'Klasman Dışı'
end
from guresciler

-- siklet diye sütun ekler ve içini doldurur kilo sütununa göre



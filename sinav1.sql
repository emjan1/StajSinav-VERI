use sinav2
select sira,ad,soyad,kilo,ulke,sikleti=
Case 
When kilo >= 40 and kilo <=55 Then 'Sinek Siklet'
When kilo >= 56 and kilo <=74 Then 'T�y Siklet'
When kilo >= 75 and kilo <=99 Then 'Hafif Siklet'
When kilo >= 100 and kilo <=200 Then 'A��r Siklet'
else 'Klasman D���'
end
from guresciler

-- siklet diye s�tun ekler ve i�ini doldurur kilo s�tununa g�re



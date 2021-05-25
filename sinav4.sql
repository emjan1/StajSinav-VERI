use sinav2
alter table guresciler 
add constraint DF_ulke default 'No Country' for ulke

-- ülkeleri kýsýtlama kodu "in" kullanýlacak ve ülke default u eklenecek 
-- ülke girilmezse "no country" yazacak
use sinav2
alter table guresciler 
add constraint DF_ulke default 'No Country' for ulke

-- �lkeleri k�s�tlama kodu "in" kullan�lacak ve �lke default u eklenecek 
-- �lke girilmezse "no country" yazacak
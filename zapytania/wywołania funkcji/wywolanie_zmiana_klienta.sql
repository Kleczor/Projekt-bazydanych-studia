select * from dbo.kursanci where kursanci_id = 113;
exec ZMIANA_KLIENTA_DLA_KURSANTA @id_klient = 4, @id_kursant = 113;
select * from dbo.kursanci where kursanci_id = 113;

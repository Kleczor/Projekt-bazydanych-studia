CREATE PROCEDURE ZMIANA_KLIENTA_DLA_KURSANTA(@ID_KLIENT int, @ID_KURSANT int)
as begin
set nocount on;
UPDATE dbo.kursanci
SET dbo.kursanci.id_klienta=@ID_KLIENT
WHERE dbo.kursanci.kursanci_id=@ID_KURSANT;
end;

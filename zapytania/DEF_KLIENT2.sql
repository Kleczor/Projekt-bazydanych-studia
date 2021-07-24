CREATE TRIGGER DEF_KLIENT2 on dbo.kursanci
AFTER INSERT
AS
BEGIN
    SET nocount ON;
    UPDATE dbo.kursanci SET id_klienta=1
    from  inserted i where 
	dbo.kursanci.id_klienta IS NULL and
dbo.kursanci.kursanci_id=i.kursanci_id
END;
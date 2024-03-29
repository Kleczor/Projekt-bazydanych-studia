
CREATE FUNCTION RACHUNEK_DO_ZAPLATY(@ID_KLIENT int,@ID_KURS int)
RETURNS int AS
BEGIN
	DECLARE @return_value int;
	declare @ilosc_kursantow int;
	declare @koszt_netto int;
	set @ilosc_kursantow = (SELECT COUNT(*) FROM dbo.kursy inner join dbo.kursanci on dbo.kursy.kursanci_id=dbo.kursanci.kursanci_id
								WHERE dbo.kursy.id_kursu=@ID_KURS AND dbo.kursanci.id_klienta=@ID_KLIENT);
	set @koszt_netto = (SELECT TOP 1 kwota_netto FROM dbo.kursy inner join dbo.temat on dbo.KURSY.id_tematu=dbo.TEMAT.id_tematu
								WHERE dbo.KURSY.id_kursu=@ID_KURS);
	
	SET @return_value = @ilosc_kursantow*@koszt_netto	
	
	RETURN @return_value
END;
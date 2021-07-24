CREATE FUNCTION LICZBA_KLIENTOW_INDYWIDUALNYCH()
RETURNS int AS
BEGIN
	DECLARE @return_value int;
	set @return_value = (SELECT COUNT(*) FROM dbo.kursanci WHERE dbo.kursanci.id_klienta=1);
	RETURN @return_value
END;
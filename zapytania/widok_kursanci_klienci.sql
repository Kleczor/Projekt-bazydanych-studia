CREATE VIEW Kursanci_Klienci AS
select dbo.kursanci.kursanci_id, dbo.kursanci.kursant_nazw, dbo.kursanci.kursant_imie,
case when dbo.kursanci.id_klienta=1 then 'Klient Indywidualny' else dbo.klienci.nazwa_firmy end nazwa_firmy, dbo.klienci.nip
from dbo.kursanci
inner join dbo.klienci on dbo.kursanci.id_klienta=dbo.klienci.id_klienta
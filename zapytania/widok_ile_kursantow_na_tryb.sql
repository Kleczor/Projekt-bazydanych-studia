Create view Ile_kursantow_na_trybie as
select dbo.tryb.opis as 'Tryb realizacji kursu', count(dbo.kursy.id_trybu) as 'Liczba Kursant�w na danym trybie kurs�w'
from dbo.kursy inner join dbo.tryb on dbo.kursy.id_trybu=dbo.tryb.id_trybu
group by dbo.tryb.opis

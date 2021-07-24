Create view Popularnosc_kursow as
select dt.opis as 'Tryb realizacji kursu', count(dt.id) as 'Liczba zrealizowanych kursów'
from (select distinct dbo.kursy.id_kursu, dbo.tryb.opis as opis, dbo.kursy.id_trybu 
as id from dbo.kursy inner join dbo.tryb on dbo.kursy.id_trybu=dbo.tryb.id_trybu) as dt
group by dt.opis
Create view Popularnosc_kursow as
select dbo.temat.nazwa_tematu as 'Temat Kursu', dbo.temat.opis_tematu as 'Opis', 
dbo.szkoleniowcy.sz_nazwisko + ' '+ dbo.szkoleniowcy.sz_imiê as 'Szkoleniowiec', count(dbo.kursy.id_tematu) as 'Liczba Uczestników'
from dbo.kursy 
inner join dbo.szkoleniowcy on dbo.kursy.szkoleniowiec_id=dbo.szkoleniowcy.szkoleniowiec_id
inner join dbo.temat on dbo.kursy.id_tematu=dbo.temat.id_tematu
group by dbo.temat.nazwa_tematu, dbo.temat.opis_tematu, dbo.szkoleniowcy.sz_nazwisko, dbo.szkoleniowcy.sz_imiê
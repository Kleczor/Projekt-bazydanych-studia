insert into dbo.kursanci (kursanci_id, kursant_nazw, kursant_imie, kursant_tel, kursant_email, kursant_adres) 
values (113, 'Piotrowicz', 'Stanis³aw', '+48 518446797', 'piostan@wp.pl', 'ul. Batorego Stefana 666, Poznañ');
insert into dbo.kursanci (kursanci_id, kursant_nazw, kursant_imie, kursant_tel, kursant_email, kursant_adres, id_klienta) 
values (114, 'Piotrowicz', 'Stanis³aw', '+48 518446797', 'piostan@wp.pl', 'ul. Batorego Stefana 666, Poznañ',6);

select * from dbo.kursanci;
create table YerBilgi(
YerBilgiId int identity primary key,
YerAd varchar(100)

)

create table EvBilgi(
EvBilgiId int IDENTITY PRIMARY KEY,
YerBilgiIdFK int foreign key references YerBilgi(YerBilgiId),
BulunduguKat  int,
OdaSayi varchar (50),
MetreKare int

)

create view EvBilgiGoster as
SELECT YerBilgiIdFK 'yer id' ,BulunduguKat,OdaSayi,MetreKare FROM EvBilgi 

INNER JOIN YerBilgi ON YerBilgi.YerBilgiId = EvBilgi.EvBilgiId

SELECT * FROM EvBilgiGoster


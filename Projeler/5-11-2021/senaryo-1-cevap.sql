/* 
CREATE TABLE tbl_birimler(
birim_id_PK int identity primary key,
birim_adi varchar(100)
)

CREATE TABLE tbl_calisanlar(
calisan_id_PK int identity primary key,
adi varchar(40) not null,
soyadi varchar(40) not null,
maas decimal(18,2) check(maas > 499) default 500,
adresi varchar(200),
telefon_numarasi varchar(11) check(len(telefon_numarasi) = 11),
birim int foreign key references tbl_birimler(birim_id_PK)
)

CREATE TABLE tbl_bilgisayarlar(
bilgisayar_id_PK int identity primary key,
mac_adresi varchar(100) unique,
ekran_karti varchar(50),
islemci_modeli varchar(40),
ram_miktari varchar(3) default 4 check(ram_miktari >= 4),
calisan_id_FK int foreign key references tbl_calisanlar(calisan_id_PK)
)
*\

--INSERT INTO tbl_birimler(birim_adi) VALUES('Test 1')
--INSERT INTO tbl_calisanlar(adi,soyadi,maas,adresi,telefon_numarasi,birim) VALUES('B��ra','�zdemir',30000,'Mu�la','00000000002',2)


--INSERT INTO tbl_birimler(birim_adi) VALUES('Test 1')
--INSERT INTO tbl_calisanlar(adi,soyadi,maas,adresi,telefon_numarasi,birim) VALUES('B��ra','�zdemir',30000,'Mu�la','00000000002',2)


--SELECT * FROM tbl_calisanlar
--SELECT adi,soyadi FROM tbl_calisanlar
--SELECT adi+' '+soyadi as 'Ad� Soyad�' FROM tbl_calisanlar
--SELECT adi+' '+soyadi as 'Ad� Soyad�',maas FROM tbl_calisanlar
--SELECT adi+' '+soyadi as 'Ad� Soyad�',maas FROM tbl_calisanlar WHERE maas > 25000
--SELECT adi+' '+soyadi as 'Ad� Soyad�',maas FROM tbl_calisanlar WHERE adresi = '�stanbul'
--SELECT adi+' '+soyadi as 'Ad� Ve Soyad�', maas,adresi FROM tbl_calisanlar WHERE maas >= 25000 AND adresi = '�stanbul'
--SELECT adi+' '+soyadi as 'Ad� Ve Soyad�', maas,adresi,birim FROM tbl_calisanlar WHERE (maas > 20000 OR birim = 1) AND cinsiyet = 1


--UPDATE tbl_calisanlar SET maas = 1000 WHERE cinsiyet = 1
--UPDATE tbl_calisanlar SET maas = maas*0.90 + maas WHERE cinsiyet = 1
--UPDATE tbl_calisanlar SET maas = maas*0.90 + maas WHERE cinsiyet = 1

--UPDATE tbl_calisanlar SET cinsiyet = 1 WHERE adi='Buse' AND soyadi='Balc�'
--UPDATE tbl_calisanlar SET cinsiyet = 1, adi='abdurrahman' WHERE adi='Buse' AND soyadi='Balc�'
--UPDATE tbl_calisanlar SET cinsiyet = 1, adi='Abdurrahman', telefon_numarasi = '05357982124' WHERE calisan_id_PK = 3
--UPDATE tbl_calisanlar SET cinsiyet = 1 WHERE adi= 'Abdurrahman'
--UPDATE tbl_calisanlar SET maas = 4000 WHERE maas > 10000
--UPDATE tbl_calisanlar SET maas = maas*0.05 + maas WHERE maas <= 10000


--SELECT * FROM tbl_calisanlar WHERE (adresi = 'istanbul' AND maas > 4000) OR (soyadi = 'Kaya') 



-- Maa�lara %5 zam yap.
-- Soyad� Kaya olana %10 zam yap.
-- Ad� Beyza olan�n soyad�n� Kaya yap.
-- adresi istanbul olanlar�n departman�n� yaz�l�m yap.


-- �stanbul olan kay�tlar� getir.
-- �stanbul olan kay�tlar�n maas� 4000 den fazla olanlar� getir.
-- �stanbul olan kay�tlar�n cinsiyeti erkek ve maa�� 4000 den fazla olanlar� getir.
-- �stanbul olan kay�tlar�n telefon numaralar�n� getir.
CREATE TABLE test(
id int identity primary key,
ad varchar(400),
soyad varchar(400),
cinsiyet bit default 1, -- 1 kad�n, 0 erkek
maas varchar(4000) default 3201

)


INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Hasan','Kaya',0,'4000')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('�rem','Tun�',1,'5000')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Beyza','�ahin',1,'4500')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('B��ra','Ekinci',1,'6200')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Zehra','Y�lmaz',1,'5902')
INSERT INTO test(ad,soyad,cinsiyet,maas) VALUES('Yaren','�ak�r',1,'3200')
INSERT INTO test(ad,soyad) VALUES('Sena','�zdil')
INSERT INTO test(ad,soyad) VALUES('Sena','�lmez')


DELETE FROM test WHERE id = 10
DELETE FROM test WHERE ad = 'B��ra'
DELETE FROM test WHERE ad = 'Sena'
DELETE FROM test WHERE soyad = 'Y�lmaz'
DELETE FROM test WHERE ad = 'Beyza' AND soyad = '�ahin'
DELETE FROM test WHERE ad = 'Sena' OR soyad = 'Ekinci'
DELETE FROM test WHERE id < 18
DELETE FROM test WHERE id < 18 OR ad = '�rem'
DELETE FROM test WHERE id > 19  AND id< 22
DELETE FROM test WHERE ad = 'Beyza' OR soyad = '�ak�r'

UPDATE test SET ad = 'Asl�' WHERE ad = 'Sena' AND soyad = '�lmez'
UPDATE test SET ad = '�rem', soyad ='�zt�rk' WHERE id=7
UPDATE test SET maas = '4800' WHERE cinsiyet = 1
UPDATE test SET maas = '1500' WHERE cinsiyet = 0
UPDATE test SET maas = '2700' WHERE maas = '4800'
UPDATE test SET maas = '4800' WHERE id < 5
UPDATE test SET maas = '4600' WHERE id > 5 AND id<9
UPDATE test SET maas = '3200' WHERE id >= 1 AND id<5 AND cinsiyet = 0
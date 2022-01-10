

SELECT max(maas) FROM tbl_calisanlar -- en fazla verilen maa�� bulur.
SELECT min(maas) FROM tbl_calisanlar -- en az verilen maa�� bulur.
SELECT AVG(maas) FROM tbl_calisanlar -- Maa�lar�n ortalamas�n� bulur.
SELECT SUM(maas) FROM tbl_calisanlar -- Maa�lar�n toplam�n� bulur.
SELECT COUNT(maas) FROM tbl_calisanlar -- Maa� S�tununun say�s�n� bulur.


SELECT max(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti kad�n olanlar�n maksimum maa��n� bulur.
SELECT min(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti kad�n olanlar�n minimum maa��n� bulur.
SELECT AVG(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti kad�n olanlar�n ortalama maa��n� bulur.
SELECT SUM(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti Kad�n olanlar�n toplam maa��n� bulur.
SELECT COUNT(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 -- Cinsiyeti Kad�n olanlar�n MAA� s�tun say�s�n� bulur.

SELECT max(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1 -- Cinsiyeti kad�n olanlar�n ve birimi 1 olanlar�n maksimum maa��n� bulur.
SELECT min(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1 -- Cinsiyeti kad�n olanlar�n ve birimi 1 olanlar�n minimum maa��n� bulur.
SELECT AVG(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1-- Cinsiyeti kad�n olanlar�n ve birimi 1 olanlar�n ortalama maa��n� bulur.
SELECT SUM(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1-- Cinsiyeti Kad�n olanlar�n ve birimi 1 olanlar�n toplam maa��n� bulur.
SELECT COUNT(maas) FROM tbl_calisanlar WHERE cinsiyet = 0 AND birim = 1-- Cinsiyeti Kad�n olanlar�n ve birimi 1 olanlar�n MAA� s�tun say�s�n� bulur.



SELECT COUNT(maas) FROM tbl_calisanlar 
INNER JOIN tbl_birimler ON tbl_birimler.birim_id_PK = tbl_calisanlar.birim
WHERE birim_adi = 'Yaz�l�m' AND cinsiyet = 0 --birimi yaz�l�m olan ve cinsiyeti kad�n olanlar� bulur.
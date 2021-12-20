SELECT * FROM tbl_dersler
WHERE ogr_no = (SELECT numara FROM tbl_ogrenciler WHERE ad = 'Hasan')
AND ogretmen_no = (SELECT ogretmen_id_PK FROM tbl_ders_ogretmenler WHERE ogretmen_adi = 'Buse')
AND ders_notu > 60



SELECT ad AS 'Ad�',soyad as 'Soyad�',numara as 'Okul Numara',sinif as 'Okul S�n�f�',
ogretmen_Adi+' '+ogretmen_soyadi as '��retmen Ad� Soyad�',ders_adi as 'Dersin Ad�',
ders_notu AS 'Ders Notu'
FROM tbl_dersler,tbl_ogrenciler,tbl_ders_ogretmenler
WHERE ogr_no = numara AND ogretmen_id_PK = ogretmen_no 
AND ders_notu > 60 AND sinif = '11/B'
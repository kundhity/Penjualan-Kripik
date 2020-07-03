
Membuat user baru pada modul 5 :
- Buat tablespace baru (Bedakan namanya dengan tablespace yang pendahuluan) :
CREATE TABLESPACE sistemjual
DATAFILE 'D:\PRAKTIKUM BASIS DATA\TABLESPACE\sistem_jual.dbf'
SIZE 30M;

- Buat user baru bernama "oracle" dan password "oraclejava123" :
CREATE USER dzikir_06996
IDENTIFIED BY dzikir
DEFAULT TABLESPACE sistemjual
QUOTA 30M ON sistemjual;

- Beri hak akses penuh pada user oraclejava :
GRANT ALL PRIVILEGES TO dzikir_06996;

- Login ke user oraclejava :
CONN dzikir_06996/dzikir

- Buat semua tabel :
- Tabel pegawai :
CREATE TABLE Owner
(
Id_Owner INTEGER not null,
Nama_Owner VARCHAR2(15),
No_hp NUMBER(12),
constraint PK_Owner primary key (Id_Owner)
);


- Tabel Jenis Barang
CREATE TABLE Jenis_Barang
(
Id_Jenis_Barang INTEGER not null,
Nama_Jenis_Barang VARCHAR2(15),
constraint PK_Jenis_Barang primary key (Id_jenis_Barang)
);


- Tabel pelanggan :
create table Barang
(
Id_Barang INTEGER not null,
Nama_Barang VARCHAR2(20),
Harga_Barang NUMBER(9),
Id_Jenis_Barang INTEGER,
constraint PK_Barang primary key (Id_Barang),
constraint FK_Id_Jenis_Barang Foreign Key (Id_Jenis_Barang)
references Jenis_Barang (Id_jenis_Barang)
);

- Tabel Transaksi :
create table Transaksi
(
Id_Transaksi INTEGER not null,
Id_Owner INTEGER,
Id_Barang INTEGER,
Tgl_Transaksi DATE,
Nama_Barang VARCHAR2(20),
Jumlah_Barang NUMBER(4),
Total_Harga NUMBER(9),
Bayar NUMBER(9),
Kembalian NUMBER(9),
constraint PK_Transaksi primary key (Id_Transaksi),
constraint FK_Owner FOREIGN KEY (Id_Owner)
REFERENCES Owner(Id_Owner),
constraint FK_Barang FOREIGN KEY (Id_Barang)
REFERENCES Barang(Id_Barang)
);



- Buat sequence id_transaksi :
CREATE SEQUENCE id_transaksi
MINVALUE 1
MAXVALUE 999
START WITH 6
INCREMENT BY 1
CACHE 20;


- Insert data pada setiap tabel :
- Tabel Owner :
insert all
into owner (id_owner, nama_owner, no_hp) values (1, 'sutamto', '3456789')
into owner (id_owner, nama_owner, no_hp) values (2, 'surya', '4567890')
into owner (id_owner, nama_owner, no_hp) values (3, 'luki', '5678901')
INTO Owner (id_owner, nama_owner, no_hp) VALUES (4, 'Moko', '0812345673')
INTO Owner (id_owner, nama_owner, no_hp) VALUES (5, 'radit', '1812345675')
SELECT 1 FROM dual;

- Tabel Jenis_Barang :
INSERT ALL
INTO Jenis_Barang (id_jenis_barang, nama_jenis_barang) VALUES (1, 'Original')
INTO Jenis_Barang (id_jenis_barang, nama_jenis_barang) VALUES (2, 'Keju')
INTO Jenis_Barang (id_jenis_barang, nama_jenis_barang) VALUES (3, 'Madu')
INTO Jenis_Barang (id_jenis_barang, nama_jenis_barang) VALUES (4, 'Coklat')
INTO Jenis_Barang (id_jenis_barang, nama_jenis_barang) VALUES (5, 'Gurih')
SELECT 1 FROM dual;

- Tabel Barang :
INSERT ALL
INTO barang (id_barang, nama_barang, harga_barang, id_jenis_barang) VALUES (1, 'Kripik Pisang Ori', '50000', 1)
INTO barang (id_barang, nama_barang, harga_barang, id_jenis_barang) VALUES (2, 'Kripik Pisang Keju', '55000', 2)
INTO barang (id_barang, nama_barang, harga_barang, id_jenis_barang) VALUES (3, 'Kripik Pisang Madu', '60000', 3)
INTO barang (id_barang, nama_barang, harga_barang, id_jenis_barang) VALUES (4, 'Kripik Pisang Coklat', '50000', 4)
INTO barang (id_barang, nama_barang, harga_barang, id_jenis_barang) VALUES (5, 'Kripik Pisang Gurih', '50000', 5)
SELECT 1 FROM dual;

- Tabel Transaksi :
INSERT ALL
insert into transaksi (id_transaksi, id_owner, id_barang, nama_barang, tgl_transaksi, jumlah_barang, total_harga, bayar, kembalian) values (id_transaksi.nextval, 1, 1, 'kripik ori', to_date('01/01/2020','dd/mm/yyyy'), '1', '50000', '50000', '0');
insert into transaksi (id_transaksi, id_owner, id_barang, nama_barang, tgl_transaksi, jumlah_barang, total_harga, bayar, kembalian) values (id_transaksi.nextval, 2, 2, 'kripik keju', to_date('02/01/2020','dd/mm/yyyy'), '1', '55000', '60000', '5000');
insert into transaksi (id_transaksi, id_owner, id_barang, nama_barang, tgl_transaksi, jumlah_barang, total_harga, bayar, kembalian) values (id_transaksi.nextval, 3, 3, 'kripik madu', to_date('03/01/2020','dd/mm/yyyy'), '1', '60000', '100000', '40000');
insert into transaksi (id_transaksi, id_owner, id_barang, nama_barang, tgl_transaksi, jumlah_barang, total_harga, bayar, kembalian) values (id_transaksi.nextval, 4, 4, 'kripik coklat', to_date('04/01/2020','dd/mm/yyyy'), '1', '50000', '50000', '0');
insert into transaksi (id_transaksi, id_owner, id_barang, nama_barang, tgl_transaksi, jumlah_barang, total_harga, bayar, kembalian) values (id_transaksi.nextval, 5, 5, 'kripik gurih', to_date('05/01/2020','dd/mm/yyyy'), '1', '50000', '100000', '50000');



- Update tabel sesuai di modul 2 :
UPDATE pegawai_07053
SET nama_depan = 'Kim', nama_belakang = 'Jisoo'
WHERE id_pegawai = 1;

UPDATE pegawai_07053
SET nama_depan = 'Lee', nama_belakang = 'Kurniawan'
WHERE id_pegawai = 2;

- Hapus data pada tabel sesuai di modul 2 :
DELETE FROM detail_pemesanan_07053
WHERE id_produk = 4;

DELETE FROM detail_pemesanan_07053
WHERE id_produk = 5;

- Buat view sesuai di modul 4 :
CREATE VIEW list_pemasok
AS SELECT a.id_pemasok, a.nama_perusahaan, a.alamat, b.nama_produk
FROM pemasok_07053 a
JOIN produk_07053 b
ON a.id_pemasok = b.id_pemasok
JOIN kategori_07053 c
ON b.id_kategori = c.id_kategori;


- Jangan lupa ini agar tidak error CURRVAL-nya :
SELECT id_transaksi.NEXTVAL FROM dual;

- Lalu cek apakah CURRVAL telah muncul :
SELECT id_transaksi.CURRVAL FROM dual;

- Membuat View
create view data_transaksi
as select a.nama_owner, b.nama_barang, b.tgl_transaksi,
b.total_harga from owner a join transaksi b on
a.id_owner = b.id_owner;

- join table
SELECT OWNER.ID_OWNER, BARANG.ID_BARANG, 
BARANG.NAMA_BARANG,BARANG.HARGA_BARANG
FROM OWNER JOIN TRANSAKSI ON OWNER.ID_OWNER = 
TRANSAKSI.ID_OWNER JOIN BARANG ON
BARANG.ID_BARANG = TRANSAKSI.ID_BARANG

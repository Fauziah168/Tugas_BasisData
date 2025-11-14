Microsoft Windows [Version 10.0.22631.5909]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Hp>cd
C:\Users\Hp

C:\Users\Hp>cd
C:\Users\Hp

C:\Users\Hp>cd..

C:\Users>cd..

C:\>cd c:/xampp/mysql/bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 58
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database penyewaan_alat_fotografi;
Query OK, 0 rows affected (0.029 sec)

MariaDB [(none)]> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| d0224520                 |
| hahah                    |
| information_schema       |
| mysql                    |
| penyewaan_alat_fotografi |
| performance_schema       |
| phpmyadmin               |
| sembarang                |
| terserah                 |
| test                     |
| tugas1_d0224520          |
+--------------------------+
11 rows in set (0.001 sec)

MariaDB [(none)]> use penyewaan_alat_fotografi
Database changed
MariaDB [penyewaan_alat_fotografi]> show tables;
Empty set (0.001 sec)

MariaDB [penyewaan_alat_fotografi]> CREATE TABLE kamera_lensa (
    ->     id_alat INT AUTO_INCREMENT PRIMARY KEY,
    ->     nama_alat VARCHAR(100),
    ->     jenis VARCHAR(50),
    ->     harga_sewa INT,
    ->     stok INT,
    ->     kondisi VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.029 sec)

MariaDB [penyewaan_alat_fotografi]> desc kamera_lensa;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id_alat    | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama_alat  | varchar(100) | YES  |     | NULL    |                |
| jenis      | varchar(50)  | YES  |     | NULL    |                |
| harga_sewa | int(11)      | YES  |     | NULL    |                |
| stok       | int(11)      | YES  |     | NULL    |                |
| kondisi    | varchar(20)  | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
6 rows in set (0.007 sec)

MariaDB [penyewaan_alat_fotografi]> CREATE TABLE penyewa (
    ->     id_penyewa INT AUTO_INCREMENT PRIMARY KEY,
    ->     nama VARCHAR(100),
    ->     no_hp VARCHAR(20),
    ->     alamat VARCHAR(100),
    ->     ktp VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.015 sec)

MariaDB [penyewaan_alat_fotografi]> desc penyewa;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id_penyewa | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama       | varchar(100) | YES  |     | NULL    |                |
| no_hp      | varchar(20)  | YES  |     | NULL    |                |
| alamat     | varchar(100) | YES  |     | NULL    |                |
| ktp        | varchar(30)  | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
5 rows in set (0.007 sec)

MariaDB [penyewaan_alat_fotografi]> CREATE TABLE peminjaman (
    ->     id_pinjam INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_penyewa INT,
    ->     id_alat INT,
    ->     tgl_pinjam DATE,
    ->     tgl_kembali DATE,
    ->     total_bayar INT,
    ->
    ->     FOREIGN KEY (id_penyewa) REFERENCES penyewa(id_penyewa),
    ->     FOREIGN KEY (id_alat) REFERENCES kamera_lensa(id_alat)
    -> );
Query OK, 0 rows affected (0.034 sec)

MariaDB [penyewaan_alat_fotografi]> desc peminjaman;
+-------------+---------+------+-----+---------+----------------+
| Field       | Type    | Null | Key | Default | Extra          |
+-------------+---------+------+-----+---------+----------------+
| id_pinjam   | int(11) | NO   | PRI | NULL    | auto_increment |
| id_penyewa  | int(11) | YES  | MUL | NULL    |                |
| id_alat     | int(11) | YES  | MUL | NULL    |                |
| tgl_pinjam  | date    | YES  |     | NULL    |                |
| tgl_kembali | date    | YES  |     | NULL    |                |
| total_bayar | int(11) | YES  |     | NULL    |                |
+-------------+---------+------+-----+---------+----------------+
6 rows in set (0.006 sec)

MariaDB [penyewaan_alat_fotografi]> INSERT INTO kamera_lensa (nama_alat, jenis, harga_sewa, stok, kondisi)
    -> VALUES ('Canon EOS 80D', 'DSLR', 120000, 3, 'Baik'),
    -> ('Canon EOS 700D', 'DSLR', 90000, 2, 'Baik'),
    -> ('Sony A7III', 'Mirrorless', 180000, 2, 'Baik'),
    -> ('Sony A6400', 'Mirrorless', 150000, 1, 'Normal'),
    -> ('Fujifilm XT30', 'Mirrorless', 140000, 2, 'Baik'),
    -> ('Fujifilm XA5', 'Mirrorless', 90000, 3, 'Baik'),
    -> ('Nikon D5600', 'DSLR', 110000, 2, 'Normal'),
    -> ('Canon 50mm f/1.8', 'Lensa Fix', 60000, 4, 'Baik'),
    -> ('Sigma 30mm f/1.4', 'Lensa Fix', 70000, 3, 'Baik'),
    -> ('Tamron 17-50mm f/2.8', 'Lensa Zoom', 80000, 2, 'Baik'),
    -> ('Sony 35mm f/1.8', 'Lensa Fix', 90000, 3, 'Baik'),
    -> ('Tripod Takara Eco-173A', 'Aksesoris', 30000, 4, 'Baik'),
    -> ('Monopod Yunteng VCT-288', 'Aksesoris', 25000, 4, 'Baik'),
    -> ('Gimbal Zhiyun Crane M2', 'Aksesoris', 80000, 1, 'Normal'),
    -> ('LED Godox SL-60W', 'Lighting', 90000, 2, 'Baik');
Query OK, 15 rows affected (0.008 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [penyewaan_alat_fotografi]> select * from kamera_lensa;
+---------+-------------------------+------------+------------+------+---------+
| id_alat | nama_alat               | jenis      | harga_sewa | stok | kondisi |
+---------+-------------------------+------------+------------+------+---------+
|       1 | Canon EOS 80D           | DSLR       |     120000 |    3 | Baik    |
|       2 | Canon EOS 700D          | DSLR       |      90000 |    2 | Baik    |
|       3 | Sony A7III              | Mirrorless |     180000 |    2 | Baik    |
|       4 | Sony A6400              | Mirrorless |     150000 |    1 | Normal  |
|       5 | Fujifilm XT30           | Mirrorless |     140000 |    2 | Baik    |
|       6 | Fujifilm XA5            | Mirrorless |      90000 |    3 | Baik    |
|       7 | Nikon D5600             | DSLR       |     110000 |    2 | Normal  |
|       8 | Canon 50mm f/1.8        | Lensa Fix  |      60000 |    4 | Baik    |
|       9 | Sigma 30mm f/1.4        | Lensa Fix  |      70000 |    3 | Baik    |
|      10 | Tamron 17-50mm f/2.8    | Lensa Zoom |      80000 |    2 | Baik    |
|      11 | Sony 35mm f/1.8         | Lensa Fix  |      90000 |    3 | Baik    |
|      12 | Tripod Takara Eco-173A  | Aksesoris  |      30000 |    4 | Baik    |
|      13 | Monopod Yunteng VCT-288 | Aksesoris  |      25000 |    4 | Baik    |
|      14 | Gimbal Zhiyun Crane M2  | Aksesoris  |      80000 |    1 | Normal  |
|      15 | LED Godox SL-60W        | Lighting   |      90000 |    2 | Baik    |
+---------+-------------------------+------------+------------+------+---------+
15 rows in set (0.001 sec)

MariaDB [penyewaan_alat_fotografi]> INSERT INTO penyewa (nama, no_hp, alamat, ktp) VALUES
    -> ('Andi Wijaya', '081234111001', 'Jakarta Selatan', '3201019900001'),
    -> ('Budi Putra', '081234111002', 'Bekasi', '3201029900002'),
    -> ('Rizky Alfarizi', '081234111003', 'Jakarta Timur', '3201039900003'),
    -> ('Siti Rahma', '081234111004', 'Depok', '3201049900004'),
    -> ('Laila Azzahra', '081234111005', 'Tangerang', '3201059900005'),
    -> ('Putri Amelia', '081234111006', 'Bogor', '3201069900006'),
    -> ('Aldi Saputra', '081234111007', 'Bandung', '3201079900007'),
    -> ('Citra Wulandari', '081234111008', 'Karawang', '3201089900008'),
    -> ('Farhan Nugraha', '081234111009', 'Tasikmalaya', '3201099900009'),
    -> ('Naufal Ramadhan', '081234111010', 'Jakarta Barat', '3201109900010'),
    -> ('Wawan Prasetyo', '081234111011', 'Jakarta Pusat', '3201119900011'),
    -> ('Maulana Rizki', '081234111012', 'Bogor', '3201129900012'),
    -> ('Dinda Ayu', '081234111013', 'Bekasi', '3201139900013'),
    -> ('Rara Salsabila', '081234111014', 'Depok', '3201149900014'),
    -> ('Kevin Pratama', '081234111015', 'Tangerang Selatan', '3201159900015');
Query OK, 15 rows affected (0.006 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [penyewaan_alat_fotografi]> select * from penyewa;
+------------+-----------------+--------------+-------------------+---------------+
| id_penyewa | nama            | no_hp        | alamat            | ktp           |
+------------+-----------------+--------------+-------------------+---------------+
|          1 | Andi Wijaya     | 081234111001 | Jakarta Selatan   | 3201019900001 |
|          2 | Budi Putra      | 081234111002 | Bekasi            | 3201029900002 |
|          3 | Rizky Alfarizi  | 081234111003 | Jakarta Timur     | 3201039900003 |
|          4 | Siti Rahma      | 081234111004 | Depok             | 3201049900004 |
|          5 | Laila Azzahra   | 081234111005 | Tangerang         | 3201059900005 |
|          6 | Putri Amelia    | 081234111006 | Bogor             | 3201069900006 |
|          7 | Aldi Saputra    | 081234111007 | Bandung           | 3201079900007 |
|          8 | Citra Wulandari | 081234111008 | Karawang          | 3201089900008 |
|          9 | Farhan Nugraha  | 081234111009 | Tasikmalaya       | 3201099900009 |
|         10 | Naufal Ramadhan | 081234111010 | Jakarta Barat     | 3201109900010 |
|         11 | Wawan Prasetyo  | 081234111011 | Jakarta Pusat     | 3201119900011 |
|         12 | Maulana Rizki   | 081234111012 | Bogor             | 3201129900012 |
|         13 | Dinda Ayu       | 081234111013 | Bekasi            | 3201139900013 |
|         14 | Rara Salsabila  | 081234111014 | Depok             | 3201149900014 |
|         15 | Kevin Pratama   | 081234111015 | Tangerang Selatan | 3201159900015 |
+------------+-----------------+--------------+-------------------+---------------+
15 rows in set (0.000 sec)

MariaDB [penyewaan_alat_fotografi]> INSERT INTO peminjaman (id_penyewa, id_alat, tgl_pinjam, tgl_kembali, total_bayar) VALUES
    -> (1, 3, '2025-01-02', '2025-01-04', 360000),
    -> (4, 12, '2025-01-03', '2025-01-03', 30000),
    -> (2, 1, '2025-01-05', '2025-01-06', 120000),
    -> (5, 10, '2025-01-06', '2025-01-08', 160000),
    -> (8, 7, '2025-01-08', '2025-01-09', 110000),
    -> (3, 14, '2025-01-10', '2025-01-11', 80000),
    -> (10, 5, '2025-01-12', '2025-01-14', 280000),
    -> (6, 4, '2025-01-13', '2025-01-14', 150000),
    -> (7, 9, '2025-01-15', '2025-01-16', 70000),
    -> (11, 2, '2025-01-16', '2025-01-17', 90000),
    -> (14, 6, '2025-01-17', '2025-01-19', 180000),
    -> (9, 11, '2025-01-18', '2025-01-18', 90000),
    -> (13, 8, '2025-01-19', '2025-01-21', 120000),
    -> (15, 15, '2025-01-21', '2025-01-22', 90000),
    -> (12, 3, '2025-01-22', '2025-01-24', 360000);
Query OK, 15 rows affected (0.009 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [penyewaan_alat_fotografi]> select * from peminjaman;
+-----------+------------+---------+------------+-------------+-------------+
| id_pinjam | id_penyewa | id_alat | tgl_pinjam | tgl_kembali | total_bayar |
+-----------+------------+---------+------------+-------------+-------------+
|         1 |          1 |       3 | 2025-01-02 | 2025-01-04  |      360000 |
|         2 |          4 |      12 | 2025-01-03 | 2025-01-03  |       30000 |
|         3 |          2 |       1 | 2025-01-05 | 2025-01-06  |      120000 |
|         4 |          5 |      10 | 2025-01-06 | 2025-01-08  |      160000 |
|         5 |          8 |       7 | 2025-01-08 | 2025-01-09  |      110000 |
|         6 |          3 |      14 | 2025-01-10 | 2025-01-11  |       80000 |
|         7 |         10 |       5 | 2025-01-12 | 2025-01-14  |      280000 |
|         8 |          6 |       4 | 2025-01-13 | 2025-01-14  |      150000 |
|         9 |          7 |       9 | 2025-01-15 | 2025-01-16  |       70000 |
|        10 |         11 |       2 | 2025-01-16 | 2025-01-17  |       90000 |
|        11 |         14 |       6 | 2025-01-17 | 2025-01-19  |      180000 |
|        12 |          9 |      11 | 2025-01-18 | 2025-01-18  |       90000 |
|        13 |         13 |       8 | 2025-01-19 | 2025-01-21  |      120000 |
|        14 |         15 |      15 | 2025-01-21 | 2025-01-22  |       90000 |
|        15 |         12 |       3 | 2025-01-22 | 2025-01-24  |      360000 |
+-----------+------------+---------+------------+-------------+-------------+
15 rows in set (0.000 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT * FROM penyewa
    -> WHERE nama LIKE '%Budi%';
+------------+------------+--------------+--------+---------------+
| id_penyewa | nama       | no_hp        | alamat | ktp           |
+------------+------------+--------------+--------+---------------+
|          2 | Budi Putra | 081234111002 | Bekasi | 3201029900002 |
+------------+------------+--------------+--------+---------------+
1 row in set (0.006 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT * FROM peminjaman
    -> WHERE id_penyewa = 3;
+-----------+------------+---------+------------+-------------+-------------+
| id_pinjam | id_penyewa | id_alat | tgl_pinjam | tgl_kembali | total_bayar |
+-----------+------------+---------+------------+-------------+-------------+
|         6 |          3 |      14 | 2025-01-10 | 2025-01-11  |       80000 |
+-----------+------------+---------+------------+-------------+-------------+
1 row in set (0.001 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT * FROM peminjaman
    -> WHERE id_alat = 5;
+-----------+------------+---------+------------+-------------+-------------+
| id_pinjam | id_penyewa | id_alat | tgl_pinjam | tgl_kembali | total_bayar |
+-----------+------------+---------+------------+-------------+-------------+
|         7 |         10 |       5 | 2025-01-12 | 2025-01-14  |      280000 |
+-----------+------------+---------+------------+-------------+-------------+
1 row in set (0.002 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT * FROM penyewa
    -> WHERE alamat = 'Malang';
Empty set (0.001 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT * FROM peminjaman
    -> WHERE tgl_pinjam BETWEEN '2025-01-01' AND '2025-01-31';
+-----------+------------+---------+------------+-------------+-------------+
| id_pinjam | id_penyewa | id_alat | tgl_pinjam | tgl_kembali | total_bayar |
+-----------+------------+---------+------------+-------------+-------------+
|         1 |          1 |       3 | 2025-01-02 | 2025-01-04  |      360000 |
|         2 |          4 |      12 | 2025-01-03 | 2025-01-03  |       30000 |
|         3 |          2 |       1 | 2025-01-05 | 2025-01-06  |      120000 |
|         4 |          5 |      10 | 2025-01-06 | 2025-01-08  |      160000 |
|         5 |          8 |       7 | 2025-01-08 | 2025-01-09  |      110000 |
|         6 |          3 |      14 | 2025-01-10 | 2025-01-11  |       80000 |
|         7 |         10 |       5 | 2025-01-12 | 2025-01-14  |      280000 |
|         8 |          6 |       4 | 2025-01-13 | 2025-01-14  |      150000 |
|         9 |          7 |       9 | 2025-01-15 | 2025-01-16  |       70000 |
|        10 |         11 |       2 | 2025-01-16 | 2025-01-17  |       90000 |
|        11 |         14 |       6 | 2025-01-17 | 2025-01-19  |      180000 |
|        12 |          9 |      11 | 2025-01-18 | 2025-01-18  |       90000 |
|        13 |         13 |       8 | 2025-01-19 | 2025-01-21  |      120000 |
|        14 |         15 |      15 | 2025-01-21 | 2025-01-22  |       90000 |
|        15 |         12 |       3 | 2025-01-22 | 2025-01-24  |      360000 |
+-----------+------------+---------+------------+-------------+-------------+
15 rows in set (0.005 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT * FROM peminjaman
    -> WHERE total_bayar BETWEEN 100000 AND 300000;
+-----------+------------+---------+------------+-------------+-------------+
| id_pinjam | id_penyewa | id_alat | tgl_pinjam | tgl_kembali | total_bayar |
+-----------+------------+---------+------------+-------------+-------------+
|         3 |          2 |       1 | 2025-01-05 | 2025-01-06  |      120000 |
|         4 |          5 |      10 | 2025-01-06 | 2025-01-08  |      160000 |
|         5 |          8 |       7 | 2025-01-08 | 2025-01-09  |      110000 |
|         7 |         10 |       5 | 2025-01-12 | 2025-01-14  |      280000 |
|         8 |          6 |       4 | 2025-01-13 | 2025-01-14  |      150000 |
|        11 |         14 |       6 | 2025-01-17 | 2025-01-19  |      180000 |
|        13 |         13 |       8 | 2025-01-19 | 2025-01-21  |      120000 |
+-----------+------------+---------+------------+-------------+-------------+
7 rows in set (0.001 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT * FROM penyewa
    -> WHERE id_penyewa BETWEEN 5 AND 10;
+------------+-----------------+--------------+---------------+---------------+
| id_penyewa | nama            | no_hp        | alamat        | ktp           |
+------------+-----------------+--------------+---------------+---------------+
|          5 | Laila Azzahra   | 081234111005 | Tangerang     | 3201059900005 |
|          6 | Putri Amelia    | 081234111006 | Bogor         | 3201069900006 |
|          7 | Aldi Saputra    | 081234111007 | Bandung       | 3201079900007 |
|          8 | Citra Wulandari | 081234111008 | Karawang      | 3201089900008 |
|          9 | Farhan Nugraha  | 081234111009 | Tasikmalaya   | 3201099900009 |
|         10 | Naufal Ramadhan | 081234111010 | Jakarta Barat | 3201109900010 |
+------------+-----------------+--------------+---------------+---------------+
6 rows in set (0.001 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT p.id_pinjam, py.nama, p.tgl_pinjam, p.total_bayar
    -> FROM peminjaman p
    -> JOIN penyewa py ON p.id_penyewa = py.id_penyewa
    -> WHERE p.tgl_pinjam BETWEEN '2025-02-01' AND '2025-02-15';
Empty set (0.001 sec)

MariaDB [penyewaan_alat_fotografi]> SELECT p.id_pinjam, k.nama_alat, p.total_bayar
    -> FROM peminjaman p
    -> JOIN kamera_lensa k ON p.id_alat = k.id_alat
    -> WHERE p.total_bayar BETWEEN 150000 AND 300000;
+-----------+----------------------+-------------+
| id_pinjam | nama_alat            | total_bayar |
+-----------+----------------------+-------------+
|         4 | Tamron 17-50mm f/2.8 |      160000 |
|         7 | Fujifilm XT30        |      280000 |
|         8 | Sony A6400           |      150000 |
|        11 | Fujifilm XA5         |      180000 |
+-----------+----------------------+-------------+
4 rows in set (0.003 sec)

MariaDB [penyewaan_alat_fotografi]>

Microsoft Windows [Version 10.0.22631.5909]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Hp>cd..

C:\Users>cd..

C:\>cd c:/xampp/mysql/bin

c:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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

MariaDB [(none)]> use penyewaan_alat_fotografi;
Database changed
MariaDB [penyewaan_alat_fotografi]> show tables;
+------------------------------------+
| Tables_in_penyewaan_alat_fotografi |
+------------------------------------+
| kamera_lensa                       |
| peminjaman                         |
| penyewa                            |
+------------------------------------+
3 rows in set (0.001 sec)

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
15 rows in set (0.000 sec)

MariaDB [penyewaan_alat_fotografi]> INSERT INTO kamera_lensa (nama_alat, jenis, harga_sewa, stok, kondisi) VALUES
    -> ('Canon R6', 'Mirrorless', 200000, 2, 'Baik'),
    -> ('Canon R10', 'Mirrorless', 160000, 3, 'Baik'),
    -> ('Sony A7IV', 'Mirrorless', 220000, 2, 'Baik'),
    -> ('Sony A6300', 'Mirrorless', 140000, 2, 'Normal'),
    -> ('Nikon Z50', 'Mirrorless', 150000, 2, 'Baik'),
    -> ('Nikon D750', 'DSLR', 170000, 1, 'Baik'),
    -> ('Fujifilm XH2', 'Mirrorless', 250000, 1, 'Baik'),
    -> ('Canon 85mm f/1.8', 'Lensa Fix', 70000, 3, 'Baik'),
    -> ('Sony 85mm f/1.8', 'Lensa Fix', 90000, 2, 'Baik'),
    -> ('Nikon 35mm f/1.8', 'Lensa Fix', 70000, 3, 'Baik'),
    -> ('Godox AD600BM', 'Lighting', 150000, 1, 'Baik'),
    -> ('Godox TT685', 'Flash', 40000, 4, 'Baik'),
    -> ('Yongnuo YN300 III', 'Lighting', 30000, 4, 'Normal'),
    -> ('Tripod Manfrotto MKCOMPACT', 'Aksesoris', 60000, 2, 'Baik'),
    -> ('Rode Videomic Pro', 'Audio', 50000, 3, 'Baik'),
    -> ('Zoom H1n', 'Audio Recorder', 70000, 2, 'Baik'),
    -> ('Canon RF 24-105mm', 'Lensa Zoom', 120000, 2, 'Baik'),
    -> ('Sony 24-70mm GM', 'Lensa Zoom', 200000, 1, 'Baik'),
    -> ('DJI RS3 Mini', 'Gimbal', 150000, 1, 'Baik'),
    -> ('DJI Ronin SC', 'Gimbal', 120000, 2, 'Normal');
Query OK, 20 rows affected (0.012 sec)
Records: 20  Duplicates: 0  Warnings: 0

MariaDB [penyewaan_alat_fotografi]> select * from kamera_lensa;
+---------+----------------------------+----------------+------------+------+---------+
| id_alat | nama_alat                  | jenis          | harga_sewa | stok | kondisi |
+---------+----------------------------+----------------+------------+------+---------+
|       1 | Canon EOS 80D              | DSLR           |     120000 |    3 | Baik    |
|       2 | Canon EOS 700D             | DSLR           |      90000 |    2 | Baik    |
|       3 | Sony A7III                 | Mirrorless     |     180000 |    2 | Baik    |
|       4 | Sony A6400                 | Mirrorless     |     150000 |    1 | Normal  |
|       5 | Fujifilm XT30              | Mirrorless     |     140000 |    2 | Baik    |
|       6 | Fujifilm XA5               | Mirrorless     |      90000 |    3 | Baik    |
|       7 | Nikon D5600                | DSLR           |     110000 |    2 | Normal  |
|       8 | Canon 50mm f/1.8           | Lensa Fix      |      60000 |    4 | Baik    |
|       9 | Sigma 30mm f/1.4           | Lensa Fix      |      70000 |    3 | Baik    |
|      10 | Tamron 17-50mm f/2.8       | Lensa Zoom     |      80000 |    2 | Baik    |
|      11 | Sony 35mm f/1.8            | Lensa Fix      |      90000 |    3 | Baik    |
|      12 | Tripod Takara Eco-173A     | Aksesoris      |      30000 |    4 | Baik    |
|      13 | Monopod Yunteng VCT-288    | Aksesoris      |      25000 |    4 | Baik    |
|      14 | Gimbal Zhiyun Crane M2     | Aksesoris      |      80000 |    1 | Normal  |
|      15 | LED Godox SL-60W           | Lighting       |      90000 |    2 | Baik    |
|      16 | Canon R6                   | Mirrorless     |     200000 |    2 | Baik    |
|      17 | Canon R10                  | Mirrorless     |     160000 |    3 | Baik    |
|      18 | Sony A7IV                  | Mirrorless     |     220000 |    2 | Baik    |
|      19 | Sony A6300                 | Mirrorless     |     140000 |    2 | Normal  |
|      20 | Nikon Z50                  | Mirrorless     |     150000 |    2 | Baik    |
|      21 | Nikon D750                 | DSLR           |     170000 |    1 | Baik    |
|      22 | Fujifilm XH2               | Mirrorless     |     250000 |    1 | Baik    |
|      23 | Canon 85mm f/1.8           | Lensa Fix      |      70000 |    3 | Baik    |
|      24 | Sony 85mm f/1.8            | Lensa Fix      |      90000 |    2 | Baik    |
|      25 | Nikon 35mm f/1.8           | Lensa Fix      |      70000 |    3 | Baik    |
|      26 | Godox AD600BM              | Lighting       |     150000 |    1 | Baik    |
|      27 | Godox TT685                | Flash          |      40000 |    4 | Baik    |
|      28 | Yongnuo YN300 III          | Lighting       |      30000 |    4 | Normal  |
|      29 | Tripod Manfrotto MKCOMPACT | Aksesoris      |      60000 |    2 | Baik    |
|      30 | Rode Videomic Pro          | Audio          |      50000 |    3 | Baik    |
|      31 | Zoom H1n                   | Audio Recorder |      70000 |    2 | Baik    |
|      32 | Canon RF 24-105mm          | Lensa Zoom     |     120000 |    2 | Baik    |
|      33 | Sony 24-70mm GM            | Lensa Zoom     |     200000 |    1 | Baik    |
|      34 | DJI RS3 Mini               | Gimbal         |     150000 |    1 | Baik    |
|      35 | DJI Ronin SC               | Gimbal         |     120000 |    2 | Normal  |
+---------+----------------------------+----------------+------------+------+---------+
35 rows in set (0.000 sec)

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
15 rows in set (0.004 sec)

MariaDB [penyewaan_alat_fotografi]> INSERT INTO penyewa (nama, no_hp, alamat, ktp) VALUES
    -> ('Yuda Saputra', '082111010016', 'Bantul', '3201169900016'),
    -> ('Farel Ibrahim', '082111010017', 'Sleman', '3201179900017'),
    -> ('Riko Maulana', '082111010018', 'Surabaya', '3201189900018'),
    -> ('Rania Putri', '082111010019', 'Malang', '3201199900019'),
    -> ('Dewi Kurnia', '082111010020', 'Solo', '3201209900020'),
    -> ('Hendra Gunawan', '082111010021', 'Makasar', '3201219900021'),
    -> ('Zahra Melani', '082111010022', 'Padang', '3201229900022'),
    -> ('Rendi Priatna', '082111010023', 'Medan', '3201239900023'),
    -> ('Dito Nurhadi', '082111010024', 'Palembang', '3201249900024'),
    -> ('Vina Oktaviani', '082111010025', 'Pontianak', '3201259900025'),
    -> ('Agus Firmansyah', '082111010026', 'Denpasar', '3201269900026'),
    -> ('Syifa Aulia', '082111010027', 'Banjarmasin', '3201279900027'),
    -> ('Azzam Khalid', '082111010028', 'Balikpapan', '3201289900028'),
    -> ('Riko Aditya', '082111010029', 'Manado', '3201299900029'),
    -> ('Intan Maharani', '082111010030', 'Kupang', '3201309900030'),
    -> ('Hafiz Rahman', '082111010031', 'Cirebon', '3201319900031'),
    -> ('Gilang Pratama', '082111010032', 'Tegal', '3201329900032'),
    -> ('Widiya Lestari', '082111010033', 'Semarang', '3201339900033'),
    -> ('Samsul Arifin', '082111010034', 'Yogyakarta', '3201349900034'),
    -> ('Adelia Putri', '082111010035', 'Bandar Lampung', '3201359900035');
Query OK, 20 rows affected (0.005 sec)
Records: 20  Duplicates: 0  Warnings: 0

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
|         16 | Yuda Saputra    | 082111010016 | Bantul            | 3201169900016 |
|         17 | Farel Ibrahim   | 082111010017 | Sleman            | 3201179900017 |
|         18 | Riko Maulana    | 082111010018 | Surabaya          | 3201189900018 |
|         19 | Rania Putri     | 082111010019 | Malang            | 3201199900019 |
|         20 | Dewi Kurnia     | 082111010020 | Solo              | 3201209900020 |
|         21 | Hendra Gunawan  | 082111010021 | Makasar           | 3201219900021 |
|         22 | Zahra Melani    | 082111010022 | Padang            | 3201229900022 |
|         23 | Rendi Priatna   | 082111010023 | Medan             | 3201239900023 |
|         24 | Dito Nurhadi    | 082111010024 | Palembang         | 3201249900024 |
|         25 | Vina Oktaviani  | 082111010025 | Pontianak         | 3201259900025 |
|         26 | Agus Firmansyah | 082111010026 | Denpasar          | 3201269900026 |
|         27 | Syifa Aulia     | 082111010027 | Banjarmasin       | 3201279900027 |
|         28 | Azzam Khalid    | 082111010028 | Balikpapan        | 3201289900028 |
|         29 | Riko Aditya     | 082111010029 | Manado            | 3201299900029 |
|         30 | Intan Maharani  | 082111010030 | Kupang            | 3201309900030 |
|         31 | Hafiz Rahman    | 082111010031 | Cirebon           | 3201319900031 |
|         32 | Gilang Pratama  | 082111010032 | Tegal             | 3201329900032 |
|         33 | Widiya Lestari  | 082111010033 | Semarang          | 3201339900033 |
|         34 | Samsul Arifin   | 082111010034 | Yogyakarta        | 3201349900034 |
|         35 | Adelia Putri    | 082111010035 | Bandar Lampung    | 3201359900035 |
+------------+-----------------+--------------+-------------------+---------------+
35 rows in set (0.000 sec)

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

MariaDB [penyewaan_alat_fotografi]> INSERT INTO peminjaman (id_penyewa, id_alat, tgl_pinjam, tgl_kembali, total_bayar) VALUES
    -> (16, 20, '2025-02-01', '2025-02-02', 120000),
    -> (17, 22, '2025-02-02', '2025-02-04', 300000),
    -> (18, 25, '2025-02-03', '2025-02-05', 340000),
    -> (19, 28, '2025-02-04', '2025-02-06', 180000),
    -> (20, 30, '2025-02-05', '2025-02-07', 140000),
    -> (21, 32, '2025-02-06', '2025-02-06', 40000),
    -> (22, 34, '2025-02-07', '2025-02-08', 150000),
    -> (23, 18, '2025-02-08', '2025-02-10', 300000),
    -> (24, 19, '2025-02-08', '2025-02-09', 120000),
    -> (25, 21, '2025-02-09', '2025-02-10', 90000),
    -> (26, 27, '2025-02-10', '2025-02-12', 180000),
    -> (27, 29, '2025-02-10', '2025-02-11', 70000),
    -> (28, 31, '2025-02-11', '2025-02-12', 60000),
    -> (29, 33, '2025-02-12', '2025-02-13', 50000),
    -> (30, 23, '2025-02-13', '2025-02-15', 300000),
    -> (31, 26, '2025-02-14', '2025-02-15', 150000),
    -> (32, 17, '2025-02-15', '2025-02-17', 240000),
    -> (33, 15, '2025-02-15', '2025-02-15', 50000),
    -> (34, 12, '2025-02-16', '2025-02-16', 30000),
    -> (35, 10, '2025-02-17', '2025-02-18', 80000);
Query OK, 20 rows affected (0.011 sec)
Records: 20  Duplicates: 0  Warnings: 0

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
|        36 |         16 |      20 | 2025-02-01 | 2025-02-02  |      120000 |
|        37 |         17 |      22 | 2025-02-02 | 2025-02-04  |      300000 |
|        38 |         18 |      25 | 2025-02-03 | 2025-02-05  |      340000 |
|        39 |         19 |      28 | 2025-02-04 | 2025-02-06  |      180000 |
|        40 |         20 |      30 | 2025-02-05 | 2025-02-07  |      140000 |
|        41 |         21 |      32 | 2025-02-06 | 2025-02-06  |       40000 |
|        42 |         22 |      34 | 2025-02-07 | 2025-02-08  |      150000 |
|        43 |         23 |      18 | 2025-02-08 | 2025-02-10  |      300000 |
|        44 |         24 |      19 | 2025-02-08 | 2025-02-09  |      120000 |
|        45 |         25 |      21 | 2025-02-09 | 2025-02-10  |       90000 |
|        46 |         26 |      27 | 2025-02-10 | 2025-02-12  |      180000 |
|        47 |         27 |      29 | 2025-02-10 | 2025-02-11  |       70000 |
|        48 |         28 |      31 | 2025-02-11 | 2025-02-12  |       60000 |
|        49 |         29 |      33 | 2025-02-12 | 2025-02-13  |       50000 |
|        50 |         30 |      23 | 2025-02-13 | 2025-02-15  |      300000 |
|        51 |         31 |      26 | 2025-02-14 | 2025-02-15  |      150000 |
|        52 |         32 |      17 | 2025-02-15 | 2025-02-17  |      240000 |
|        53 |         33 |      15 | 2025-02-15 | 2025-02-15  |       50000 |
|        54 |         34 |      12 | 2025-02-16 | 2025-02-16  |       30000 |
|        55 |         35 |      10 | 2025-02-17 | 2025-02-18  |       80000 |
+-----------+------------+---------+------------+-------------+-------------+
35 rows in set (0.000 sec)

MariaDB [penyewaan_alat_fotografi]>

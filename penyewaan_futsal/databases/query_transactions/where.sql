SELECT *
FROM customer
WHERE alamat LIKE '%Jakarta%';

SELECT *
FROM transaksi
WHERE status_transaksi = 'belum dibayar';

SELECT *
FROM lapangan
WHERE status_lapangan = 'maintenance';

SELECT *
FROM pegawai
WHERE id_cabang = 2;

SELECT *
FROM customer
WHERE kontak = '081234567890';

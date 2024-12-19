SELECT p.nama_lengkap, c.nama_cabang
FROM pegawai p
JOIN cabang c ON p.id_cabang = c.id_cabang;

SELECT t.id_transaksi, t.total_pembayaran, c.nama_customer
FROM transaksi t
JOIN customer c ON t.id_customer = c.id_customer;

SELECT dr.tanggal_reservasi, l.nama_lapangan
FROM detail_reservasi dr
JOIN lapangan l ON dr.id_lapangan = l.id_lapangan;

SELECT c.nama_customer, l.status_langganan
FROM customer c
JOIN langganan l ON c.id_customer = l.id_customer
WHERE l.status_langganan = 'aktif';

SELECT l.nama_lapangan, j.tanggal_libur
FROM lapangan l
JOIN jadwal_libur j ON l.id_lapangan = j.id_lapangan;

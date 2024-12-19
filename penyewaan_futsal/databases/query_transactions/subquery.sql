SELECT nama_customer
FROM customer
WHERE id_customer IN (
    SELECT id_customer
    FROM transaksi
    WHERE total_pembayaran > 1000000
);

SELECT nama_lengkap
FROM pegawai
WHERE id_pegawai IN (
    SELECT id_pegawai
    FROM transaksi
);

SELECT nama_lapangan
FROM lapangan
WHERE id_lapangan IN (
    SELECT id_lapangan
    FROM jam_tutup
);

SELECT nama_customer
FROM customer
WHERE id_customer IN (
    SELECT id_customer
    FROM detail_reservasi
    WHERE id_lapangan = 3
);

SELECT *
FROM transaksi
WHERE total_pembayaran > (
    SELECT AVG(total_pembayaran)
    FROM transaksi
);

CREATE TABLE detail_reservasi (
    id_detail INTEGER PRIMARY KEY AUTO_INCREMENT,
    tanggal_reservasi DATE NOT NULL,
    jam_mulai TIME NOT NULL,
    jam_selesai TIME NOT NULL,
    sub_total INTEGER DEFAULT 0 NOT NULL,
    status_penggunaan ENUM('dijadwalkan', 'berlangsung', 'selesai', 'batal') NOT NULL,
    id_lapangan INTEGER NOT NULL,
    id_pegawai INTEGER NOT NULL,
    id_customer INTEGER NOT NULL,
    id_transaksi INTEGER NOT NULL,
    FOREIGN KEY (id_lapangan) REFERENCES lapangan(id_lapangan),
    FOREIGN KEY (id_pegawai) REFERENCES pegawai(id_pegawai),
    FOREIGN KEY (id_customer) REFERENCES customer(id_customer),
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi)
);

CREATE TABLE transaksi (
    id_transaksi INTEGER PRIMARY KEY AUTO_INCREMENT,
    tanggal_transaksi DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    total_pembayaran INTEGER DEFAULT 0 NOT NULL,
    total_dibayar INTEGER DEFAULT 0 NOT NULL,
    status_transaksi ENUM('draft', 'belum dibayar', 'lunas', 'batal') 
        DEFAULT 'draft' NOT NULL,
    metode_pembayaran ENUM('none', 'tunai', 'transfer', 'ewallet') 
        DEFAULT 'none' NOT NULL,
    id_pegawai INTEGER NOT NULL,
    id_customer INTEGER NOT NULL,
    FOREIGN KEY (id_pegawai) REFERENCES pegawai(id_pegawai),
    FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
);

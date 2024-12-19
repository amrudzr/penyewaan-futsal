CREATE TABLE langganan (
    id_langganan INTEGER PRIMARY KEY AUTO_INCREMENT,
    tanggal_mulai DATE NOT NULL,
    tanggal_selesai DATE NOT NULL,
    status_langganan ENUM('aktif', 'nonaktif') DEFAULT 'aktif' NOT NULL,
    harga_langganan INTEGER DEFAULT 0 NOT NULL,
    id_customer INTEGER NOT NULL,
    FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
);

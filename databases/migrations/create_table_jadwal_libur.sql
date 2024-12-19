CREATE TABLE jadwal_libur (
    id_libur INTEGER PRIMARY KEY AUTO_INCREMENT,
    tanggal_libur DATE NOT NULL,
    keterangan TEXT NULL,
    id_lapangan INTEGER NOT NULL,
    FOREIGN KEY (id_lapangan) REFERENCES lapangan(id_lapangan)
);


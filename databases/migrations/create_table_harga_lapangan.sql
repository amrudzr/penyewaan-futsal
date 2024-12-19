CREATE TABLE harga_lapangan (
    id_harga INTEGER PRIMARY KEY AUTO_INCREMENT,
    jenis_hari ENUM('reguler', 'weekday', 'holiday', 'special day') 
        DEFAULT 'reguler' NOT NULL,
    jam_mulai TIME NOT NULL,
    jam_selesai TIME NOT NULL,
    harga INTEGER DEFAULT 0 NOT NULL,
    id_lapangan INTEGER NOT NULL,
    FOREIGN KEY (id_lapangan) REFERENCES lapangan(id_lapangan)
);

CREATE TABLE jam_tutup (
    id_jam_tutup INTEGER PRIMARY KEY AUTO_INCREMENT,
    jam_mulai TIME NOT NULL,
    jam_selesai TIME NOT NULL,
    id_lapangan INTEGER NOT NULL,
    FOREIGN KEY (id_lapangan) REFERENCES lapangan(id_lapangan)
);

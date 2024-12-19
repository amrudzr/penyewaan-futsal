CREATE TABLE pegawai (
    id_pegawai INTEGER PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(20) NOT NULL,
    nama_lengkap VARCHAR(30) NOT NULL,
    alamat VARCHAR(200) NOT NULL,
    kontak VARCHAR(15) NOT NULL,
    id_cabang INTEGER NOT NULL,
    FOREIGN KEY (id_cabang) REFERENCES cabang(id_cabang)
);

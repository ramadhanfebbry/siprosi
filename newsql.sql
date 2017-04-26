create table tb_user(
  `userId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL PRIMARY KEY,
  `Password` varchar(128) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL,
  `level` varchar(10) NOT NULL
);

create table tb_MPO(
  `no_mpo` varchar(128) PRIMARY KEY,
  `plan_date` date,
  `item_name` varchar(10),
  `site` varchar(20),
  `Schedule_qty` int(10),
  `pool` varchar(10) NOT NULL
);

create table tb_PB(
  `no_pb` varchar(128) PRIMARY KEY,
  `no_mpo` varchar(128),
  `Jumlah_bhn` int(10),
  `konfirmasi` varchar(128)
);

create table tb_IP(
  `no_ip` varchar(128) PRIMARY KEY,
  `no_pb` varchar(128),
  `date` date,
  `Jumlah_bhn` int(10)
);


create table tb_cetakgtg(
  `no_cetakgtg` varchar(128) PRIMARY KEY,
  `no_ip` varchar(128),
  `cetakgtg` date,
  `Jumlah_cetak_gtg` int(10),
  `Jumlah_rusak` int(10),
  `ket` varchar(128)
);

create table tb_cetakblock(
  `no_cetakblock` varchar(128) PRIMARY KEY,
  `no_ip` varchar(128),
  `Tanggal_produksi` date,
  `Jumlah_cetak_block` int(10),
  `Jumlah_rusak` int(10),
  `ket` varchar(128)
);

create table tb_rendam(
  `no_crendam` varchar(128) PRIMARY KEY,
  `no_cetakgtg` varchar(128),
  `Tanggal_produksi` date,
  `Jumlah_rendam` int(10),
  `Jumlah_rusak` int(10),
  `ket` varchar(128)
);


create table tb_gosok(
  `no_gosok` varchar(128) PRIMARY KEY,
  `no_rendam` varchar(128),
  `Tanggal_produksi` date,
  `Jumlah_gosok` int(10),
  `Jumlah_rusak` int(10),
  `ket` varchar(128)
);

create table tb_cat_block(
  `no_cat_block` varchar(128) PRIMARY KEY,
  `no_cetakblock` varchar(128),
  `Tanggal_produksi` date,
  `Jumlah_hasil_cat` int(10),
  `Jumlah_rusak` int(10),
  `ket` varchar(128)
);


create table tb_hasil_produksi(
  `no_hasil_prod` varchar(128) PRIMARY KEY,
  `no_cat_gtg` varchar(128),
  `no_cat_block` varchar(128),
  `tanggal` date,
  `Jumlah_hasil_prod` int(10),
  `Sesuai_target` ENUM('sesuai', 'tidak')
);


create table tb_hasil_produksi(
  `no_prd` varchar(128) PRIMARY KEY,
  `no_hasil_prod` varchar(128),  
  `total_qty_bagus` int(10),
  `total_qty_rusak` int(10)
);
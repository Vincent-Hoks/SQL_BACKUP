
SELECT barang.* FROM barang
left JOIN stock_barang ON barang.id_barang = stock_barang.id_barang
WHERE barang.id_barang
NOT IN (SELECT id_barang FROM stock_barang)
-- mengambil dari m_barang tabel yang tidak ada di tabel stock_barang

INSERT INTO stock_barang(id_barang)
SELECT barang.id_barang FROM barang
left JOIN stock_barang ON barang.id_barang = stock_barang.id_barang
WHERE barang.id_barang
NOT IN (SELECT id_barang FROM stock_barang)
-- meng insert id_barang yang tidak ada di tabel stock_barang ke tabel stock_barang


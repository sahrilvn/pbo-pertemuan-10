from django.db import models

# MOdels Product
class Product(models.Model):
    kode_barang = models.CharField(max_length=5)
    nama_barang = models.CharField(max_length=30)
    jumlah      = models.IntegerField()
    harga       = models.IntegerField()

    def __str__(self):
        return "{}".format(self.nama_barang)

# Triger Barang Terjual
class Terjual(models.Model):
    nama_barang = models.CharField(max_length=30)
    kode_barang = models.CharField(max_length=5)
    qtyterjual  = models.IntegerField()
    tglterjual  = models.DateField()

    def __str__(self):
        return "{}".format(self.nama_barang)

# Triger Barang Terjual
class Tambah(models.Model):
    nama_barang = models.CharField(max_length=30)
    kode_barang = models.CharField(max_length=5)
    qtymasuk  = models.IntegerField()
    tglmasuk = models.DateField()

    def __str__(self):
        return "{}".format(self.nama_barang)
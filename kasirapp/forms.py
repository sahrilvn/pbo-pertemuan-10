from django import forms
from django.forms import fields
from .models import Product

# tidak terpakai
class ProdukForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = [
            'kode_barang',
            'nama_barang',
            'jumlah',
            'harga',
        ]
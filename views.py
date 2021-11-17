from django.shortcuts import redirect, render, redirect

# Create your views here.

from .models import Product
from .models import Terjual,Tambah
from .forms import ProdukForm

def index(request):
    #queryset product
    produk = Product.objects.all()
    tambah = Tambah.objects.all()
    terjual = Terjual.objects.all()
    konteks = {
        'judul' : 'judulhalaman',
        'isi' : 'isihalaman',
        'Products' : produk,
        'Terjuals' : terjual,
        'Tambahs'  : tambah,
    }

    return render(request, 'index.html',konteks)



def create(request):
    produk_form = ProdukForm(request.POST or None)

    if request.method == 'POST':
        if produk_form.is_valid():
            produk_form.save()

        return redirect('index') 
    
    context = {
        "page_title":"Tambah Produk",
    } 

    return render(request, 'create.html',context)

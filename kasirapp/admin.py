from django.contrib import admin

# Register Product
from .models import Product
admin.site.register(Product)

# Register Terjual
from .models import Terjual
admin.site.register(Terjual)

# Register Terjual
from .models import Tambah
admin.site.register(Tambah)


# Tugas 7
# Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget: widget yang tidak membutuhkan kondisi mutable. Penampilan dan properti dari stateless widget tidak berubah.

Stateful widget: berbeda dengan stateless widget, stateful widget merupakan widget yang tampilan dan propertinya dapat berubah atau bersifat mutable.

 # Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
AppBar: Membuat toolbar.

Text: menampilkan sebuah text.

Center: membuat child menjadi centered

Column: Layout child secara vertikal.

Row: Layout child secara horizontal.

FloatingActionButton: Tombol mengambang 

Container: menggabungkan properti, posisi, dan ukuran umum dari sebuah widget.

 # Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState adalah cara Flutter untuk membangun kembali widget dan turunannya. pada pemanggilan setstate pada kode saya variaber yang terdampak adalah _counter.


 # Jelaskan perbedaan antara const dengan final.
saat mendefinisikan dengan keyword final kita tidak dapat mengganti kembali nilai tersebut sedangkan. const hampir mirip dengan final namun namun const hanya membuat variabel tersebut konstan dari waktu kompilasi saja.


 # Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. saya membuat pp baru bernama _counter7
2. menambahkan button decrement dan membuat method decrement
3. kemudian menambahkan case ganjil genap menggunakan method setText() yang mengembalikan text sesuai dengan kondisi
4. untuk bonus saya menggunakan if else statement untuk memunculkan button decrement atau container kosong


# Tugas 8
# Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
- Navigator.push : Menambahkan rute ke stack
- Navigator.pushReplacement : Menambahkan rute ke stack dan menghapus rute-rute sebelumnya

# Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- ListTile: menampilkan budget
- ListView: menaruh list tile

# Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onHover
- onFocusChange

# Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Halaman pada flutter bekerja seperti stack yang saling tumpuk, jika kita hendak pindah ke halaman lain maka ditambahkan rute yang berupa halaman ke stack. jika hendak kembali maka stack akan di pop.

# Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
menambahkan form.dart dan mengimplementasikan filed yang dibutuhkan
menghubungkan main dengan form menggunakan drawer yang sudah dibuat di method getDrawer()
membuat class budget untuk menyimpan objek budget di array of budget nantinya
pada budget_data.dart dilakukan pengambilan budgetArr dan dengan listView Builder melakukan iterasi untuk setiap objek di array sekaligus membuat budget tersebut ke listTile

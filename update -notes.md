# Update Notes

## V4 

Menyatukan semua file json menjadi satu file json.

Saya telah menetapkan statistik yang Saya ingin hasilkan. Statistik yang ingin Saya hasilkan ada 2 yaitu statistik pemain dan statistik game.
Statistik pemain itu terdiri dari

- Total Game Played
- Total Win
- Total Lost
- Total Survived
- Total MVP
- Total MMC
- Total Modkill

Nah, dari statistik-statistik di atas bisa di cari lagi angka yang lain seperti win rate, MVP rate, Survive by Alignment Rate, dll. Tapi yang terpenting 8 statistik di atas harus bisa Saya hasilkan.

Sementara itu, Statistik Game terdiri dari

- Game Duration by date
- Game Duration by phase
- Total Game Won by Alignment
- Total Winstreak by Alignment
- Total Players by Alignment
- Total Modkill
- Game Theme list

## V3

*Last person gets all the credit*. Ketika terjadi pergantian pemain, bianya akan ada informasi *subbed* dalam informasi para pemain. informasi *subbed* ini akan dihilangkan sebab hanya pemain yang menggantikan tersebut yang direkap (informasi mvp, deadnya, dll.). Oleh karena itu, dalam update ini fitur *subbed* akan dihilangkan.

Menambahkan informasi *mvp* di luar dari informasi *player*. 
Perubahan ini dilakukan untuk menghindari kebingungan kepemilikan mvp. Apakah MVP diberikan kepada pemain awal atau kepada pemain penggganti?. informasi *mvp* di luar *player* akan sangat membantu.


Menambahkan informasi pengecualian, bagi TWG yang terlalu sulit untuk direkap informasinya.

Pada update ini juga, khusus untuk TWG [Red Riding Hood - "Red Moon"](http://kask.us/hIipQ) akan dilakukan perubahan.
TWG ini menggunakan semua ak TWG yang *fullclone*, rasanya akan lebih susah jika saya harus menambahan satu lagi informasi *realid*.
Untuk memudahkan nanti ketika disandingkan dengan TWG-TWG lain, maka ada beberapa pilihan 

1. Tidak merekap TWG ini (akan masuk ke pengecualian), atau
2. Memasukkannya ke database, namun fitur realid akan dihilangkan. 

Saya pikir pilihan nomor 2 adalah jalan terbaik, namun memang akan sedikit menyusahkan saya ketika melakukan rekapan. Namun saya berpikir lebih baik kesusahan ketika merekap daripada nanti ketika dilakukan pengolahan.

## V2 (DONE)

Menyamakan format waktu. Beberapa TWG menggunakan format KASKUS Archive yaitu **dd/mm/yyyy hh:mm AM/PM** format 12 jam sementara Kaskus sendiri menggunakan **dd-mm-yy hh:ss** format 24 jam. Keduanya akan disamakan mengikuti format yang dd-mm-yy.

Bagian waktu jam dan menit (**hh:mm**)juga akan dihilangkan sebab kendala teknis. Waktu di Kaskus mengikuti zona waktu tempat kita mengakses kaskus (WIB/WITA/WIT). Saya mengerkan proyek ini di 2 zona waktu yang berbeda (dulu WIB sekarang WITA). Agar tidak membuat saya sendiri bingung ketika mengarsip, maka diputuskan agar bagian waktu dihilangkan saja.

Update V2 juga ditambahkan informasi *theme* untuk tiap TWG. Ini agar menambah informasi mengenai inpirasi tema suatu TWG.

## V1 (DONE)

Menghilangkan informasi waktu di bagian *phases*. TWG per tahun dibagi menjadi file-nya masing-masing. Ini berbeda dengan sebelumnya ketika semua TWG BIG berada dalam satu file. Perubahan ini dilakukan untuk memudahkan saya memetakan TWG.

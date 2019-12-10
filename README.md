---
title : TWG Big Database
output: 
  html_document: 
    keep_md: yes
---

## Pendahuluan

Segala yang yang memiliki permulaan pasti akan berakhir.
Sama seperti forum KASKUS yang kian sepi, komunitas CYSTG pun kian sepi. 
Disaat repo ini dibuat, bisa dibilang kalau komunitas atau sub forum CYSTG sedang mati suri.

Cukup disayangkan, mengingat komunitas ini telah mengisi masa remaja saya, mulai dari SMP sampai lulus kuliah.
Dengan semakin sepinya KASKUS dan CYSTG, menurut saya komunitas kami hanya akan ditelan bumi.
Repository ini mempunyai fungsi sebagai database untuk permainan The Werewolf Game (TWG) BIG dari sub forum [CYSTG](https://www.kaskus.co.id/forum/18/can-you-solve-this-game/)
Repository ini berisikan memori yang ingin saya kenang selamanya.

Terima Kasih bagi kalian yang telah mengisi hari-hari remaja ku.

## Data yang dikumpulkan

Ada Beberapa data yang dikumpulkan, seperti 

- Nama TWG, tidak termasuk nomor romawi di depan nama TWG.

- Tautan dari TWG Tersebut. Beberapa TWG sudah lama dan masuk *KASKUS archive*, sedangkan yang lebih baru dapat diakses langsung dari situs KASKUS yang sekarang.

- Kapan (tanggal dan jam) *thread* dibuka,  mulai permainan (biasanya permainan dimulai dengan fase siang 1), dan akhir permainan (fase terakhir sebelum BTS).

- id GM dan co-GM.

- informasi mengenai pemain seperti *aligment*, *role*, kapan pemain tersebut *dead*, status MVP, dan pemain cadangan (jika pemain bersangkutan digantikan oleh pemain cadangan).

Data disimpan dalam betuk JSON (JavaScript Object Notation).
Bentuk ini dipilih mengingat bentuk informasi yang *nested*.
Sebagai contoh, di bawah ini adalah data yang disimpan untuk TWG [Menuju Indonesia Merdeka](https://kask.us/h53gF).

```
{
        "name" : "Menuju Indonesia Merdeka",
        "gm" : "jedith3",
        "cogm" : "Dzboy",
        "open" : "18-08-2015 17:51",
        "start" : "20-08-2015 06:39",
        "end" : "29-08-2015 15:59",
        "firstphase" : "D1",
        "lastphase" : "D6",
        "players" : [
            { 
                "id" : "helium.rusak", 
                "alignment" : "baddies",
                "role" : "Roleblocker",
                "death" : "23-08-2015 20:40"
            },
            { 
                "id" : "Solahart",
                "alignment" : "goodies",
                "role" : "Villager"
            },
            { 
                "id" : "akhirx.punya.id",
                "alignment" : "baddies",
                "role" : "Seer"
            },
            { 
                "id" : "owlsmile",
                "alignment" : "goodies",
                "role" : "Villager",
                "death" : "25-08-2015 20:54"
            },
            { 
                "id" : "portgazzz",
                "alignment" : "goodies", 
                "subbed" : "nalfiadi",
                "role" : "Tracker"
            },
            { 
                "id" : "Mr.Avalanche",
                "alignment" : "goodies",
                "role" : "Guardian Angel",
                "death" : "29-08-2015 19:20"
            },
            { 
                "id" : "kantongerz",
                "alignment" : "baddies",
                "role" : "Werewolf" 
            },
            { 
                "id" : "ranggagreat",
                "alignment" : "goodies",
                "role" : "Tracker"
            },
            { 
                "id" : "anon009",
                "alignment" : "goodies",
                "role" : "Villager",
                "death" : "26-08-2015 20:54"
            },
            { 
                "id" : "xemp.phax",
                "alignment" : "goodies",
                "role" : "Tracker",
                "death" : "22-08-2015 21:11"
            },
            { 
                "id" : "zed96",
                "alignment" : "goodies",
                "role" : "Tracker"
            },
            { 
                "id" : "Sherry24",
                "alignment" : "goodies",
                "role" : "Guardian Angel",
                "death" : "28-08-2015 21:10"
            },
            { 
                "id" : "tmofer.mashiro",
                "alignment" : "baddies",
                "role" : "Werewolf",
                "MVP" : true,
                "death" : "29-08-2015 19:20"
            },
            { 
                "id" : "reinforcedboy",
                "alignment" : "goodies",
                "role" : "Villager",
                "death" : "22-08-2015 21:11"
            },
            { 
                "id" : "11sphere92",
                "alignment" : "goodies",
                "role" : "Tracker",
                "death" : "22-08-2015 21:11"
            },
            { 
                "id" : "2nd.zett",
                "alignment" : "goodies",
                "role" : "Villager",
                "death" : "28-08-2015 21:10"
            },
            { 
                "id" : "unqsn",
                "alignment" : "goodies", 
                "subbed" : "terigucampurair",
                "role" : "Hunter",
                "death" : "22-08-2015 21:11"
            },
            { 
                "id" : "ADITMILANISTI",
                "alignment" : "goodies",
                "role" : "Villager",
                "death" : "21-08-2015 20:39"
            },
            { 
                "id" : ".falcongirl.",
                "alignment" : "goodies",
                "role" : "Villager",
                "death" : " 24-08-2015 20:24"
            },
            { 
                "id" : "hunterismyname",
                "alignment" : "goodies",
                "role" : "Tracker",
                "death" : "27-08-2015 21:37"
            },
            { 
                "id" : "sallamx28",
                "alignment" : "goodies",
                "role" : "Tracker",
                "death" : "25-08-2015 20:54"
            } 
        ]
    }
```

Terdapat 2 file penyimpanan, yaitu `new_kaskus.json` untuk TWG yang masih dapat diakses kaskus sekarnag (belum masuk arsip KASKUS) dan `old_kaskus.json` untuk TWG yang telah masuk arsip KASKUS.
TWG yang telah masuk arsip KASKUS menggunakan waktu AM/PM dalam informasi waktu sementara TWG yang lebih baru menggunakan satuan 24 jam dalam informasi waktu.

Berikut adalah Tautan TWG BIG yang bisa saya temukan.
Untuk tanya, *request*, kritik dan saran, silahkan hubungi saya via KASKUS maupun langsung di GitHub.

##  Daftar TWG untuk old_kaskus.json

Status  | TWG
--------|---------
[]      | [Kutukan Sri dan Gala](https://archive.kaskus.co.id/thread/8765940)
[]      | [H19N Terror!](http://archive.kaskus.co.id/thread/8972518)
[]      | [Werewolves vs Vampires :::Twilight:::](http://archive.kaskus.co.id/thread/9227137)
[]      | [Massive Attack at Hogwarts](http://archive.kaskus.co.id/thread/9494605)
[]      | [Calamity of The Hidden Leaf Village](http://archive.kaskus.co.id/thread/9772548)
[]      | [An Infiltration Destinies](http://archive.kaskus.co.id/thread/10108649)
[]      | [Chaos at Yorkshin City](http://archive.kaskus.co.id/thread/10342165)
[]      | [Game of D (Deception, Denial, Death)](http://archive.kaskus.co.id/thread/10446494)
[]      | [How To Save a Life](http://archive.kaskus.co.id/thread/10761235)
[]      | [Waking The Demon](http://archive.kaskus.co.id/thread/11118743)
[]      | [Celestia](http://archive.kaskus.co.id/thread/11421415)
[]      | [Van Helsing](http://archive.kaskus.co.id/thread/11759074)
[]      | [SinCity](http://archive.kaskus.co.id/thread/12356185)
[]      | [Curse of 14th Benizakura](http://archive.kaskus.co.id/thread/13091781)
[]      | [The Dark Knight](http://archive.kaskus.co.id/thread/13708071)
[]      | [Membunuh atau Dibunuh](http://archive.kaskus.co.id/thread/14482535)
[]      | [Tales of Minakami Village](http://archive.kaskus.co.id/thread/15359906)
[]      | [The Dark Age](http://archive.kaskus.co.id/thread/15858591)

##  Daftar TWG untuk new_kaskus.json

Status  | TWG
--------|---------
[]      | [Be Lucky on West (Justice on Bet)](http://kask.us/gWPzz)
[]      | [Lord of The Rings (The Chosen Ringbearer)](http://kask.us/gV5NT)
[]      | [S.H.I.E.L.D](http://kask.us/gWu3t)
[]      | [Battle of Analysis](http://kask.us/gVUlF)
[]      | [The End of The Dragon World?](http://kask.us/g353e)
[]      | [The Hanged Man](http://kask.us/g5DaG)
[]      | [Apartment 312](http://kask.us/g9d8f)
[]      | [The Mansion Behind the Scarlet Mist](http://kask.us/haK0K)
[]      | [**Remake** Chaos at Yorkshin City](http://kask.us/hb5oJ)
[]      | [The World of Sacfron](http://kask.us/hewh1)
[]      | [Set World on Fire](http://kask.us/hgCuF)
[]      | [99th Expeditions!](http://kask.us/hh1od)
[]      | [Attack On...](http://kask.us/hlWor)
[]      | [Taintful War of Gods (TWG)](http://kask.us/hnd05)
[]      | [It 's MoeLand !](http://kask.us/hsLsS)
[]      | [The Secret Tomb of Lord Hircine](http://kask.us/hwF2N)
[]      | [Invasi Alam Gaib Bumi Nusantara](http://kask.us/hDMkD)
[]      | ["Red Moon"](http://kask.us/hIipQ)
[]      | [Das Ruhenheim](http://kask.us/hKZBJ)
[]      | [The DPR & Dangerous Viruses](http://kask.us/hNFBO)
[]      | [CheckMate!](http://kask.us/hQHBC)
[]      | [Trust & Betrayal](https://kask.us/hV1Bo)
[]      | [Paradise : Brave New World](https://kask.us/h0j4e)
[]      | [Tales of the Psycho Villains](https://kask.us/h1sVd)
[]      | [The Dawn Of Monster](https://kask.us/h3igc)
[x]      | [Menuju Indonesia Merdeka](https://kask.us/h53gF)
[]      | [Bulan November 2015](https://kask.us/h9gNK)
[]      | [BOOM! part II](https://kask.us/ibxhD)
[]      | [The Conjuring Theme](https://kask.us/igU6j)
[]      | [Lovers All The Way](https://kask.us/ihXsw)
[]      | [Teror @ Kost-Kostan](https://kask.us/imZCL)
[]      | [Matrix (Season 1) - When The Ancients Fall](https://kask.us/iqDDq)
[]      | [Hisashiburi](https://kask.us/iyBPW)

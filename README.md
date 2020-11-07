# TWG BIG CYSTG Database

Untuk melihat pemutakhiran terbaru, silahkan periksa Update Notes.

## Pendahuluan

Segala yang yang memiliki permulaan pasti akan berakhir.
Sama seperti forum KASKUS yang kian sepi, komunitas CYSTG pun kian sepi.
Disaat repo ini dibuat, bisa dibilang kalau komunitas atau sub forum CYSTG sedang mati suri.

Cukup disayangkan, mengingat komunitas ini telah mengisi masa remaja saya, mulai dari SMP sampai lulus kuliah.
Dengan semakin sepinya KASKUS dan CYSTG, menurut saya komunitas kami hanya akan ditelan bumi.
Repository ini mempunyai fungsi sebagai database untuk permainan The Werewolf Game (TWG) BIG dari sub forum [CYSTG](https://www.kaskus.co.id/forum/18/can-you-solve-this-game/)
Repository ini berisikan memori yang ingin saya kenang selamanya.

**Terima Kasih bagi kalian yang telah mengisi hari-hari remaja saya.**

## Data yang dikumpulkan

Ada Beberapa data yang dikumpulkan, seperti nama, tautan, waktu *thread* dibuka, data mengenai fase dan pemain.
Variabel dan penjelasannya dapat dilihat pada tabel dibawah ini.

Variabel | Deskripsi
---------|---------
name        | Nama TWG, tidak termasuk nomor romawi di depan nama TWG
link        | Tautan dari TWG Tersebut. Beberapa TWG yang sudah lama dan masuk *KASKUS archive*, sedangkan yang lebih baru dapat diakses langsung dari situs KASKUS yang sekarang.
gm          | Game Master / Host dari TWG tersebut
cogm        | co-Game Master. Seperti co-pilot, co-Game Master membantu Game Master dalam menjalankan permainan.
open        | Tanggal *thread* dibuka
start       | Tanggal fase pertama dimulai
finish      | Tanggal fase terakhir selesai
won         | Aligment yang memenangkan permainan (goodies, baddies, neutral).
phases      | Informasi mengenai fase seperti waktu dimulainya suatu fase dan pemain yang mati / *dead* pada akhir fase tersebut.
players     | Informasi mengenai pemain seperti *aligment*, *role*, status MVP, dan pemain cadangan (jika pemain bersangkutan digantikan oleh pemain cadangan)

### phase

Variabel | Deskripsi
---------|---------
phase | fase (Day 1, Night 1, dst.)
subsitutions | pergantian pemain yang terjadi pada fase tersebut
subout | id pemain yang digantikan
subin | id pemain yang menggantikan
dies | pemain yang mati pada akhir fase

### players

Variabel | Deskripsi
---------|---------
id | merujuk kepada pemain TWG yang sedang berlangsung
mvp | status pemain sebagai *Most Valuable Player*
aligment | aligmet pemain (goodies, baddies, neutral)
role | peran pemain
Realid | id sesungguhnya dari pemain. variabel ini muncul jika setup yang dimainkan adalah **fullclone**.

Data yang dikumpulkan kemudian disimpan dalam betuk JSON (JavaScript Object Notation).
Bentuk ini dipilih mengingat data yang dikupulkan merupakan data yang *nested*.
Informasi setiap fase dan pemain dibuat dalam 1 line agar file tidak kelihatan panjang ke bawah.

```{json}
    {
        "name" : "Kutukan Sri dan Gala",
        "link" : "https://archive.kaskus.co.id/thread/8765940",
        "gm" : "Huzaiv",
        "theme" : "Werewolves",
        "open" : "25-05-2011",
        "start" :  "26-05-2011",
        "finish" : "05-06-2011",
        "won" : "baddies",
        "phases" : [
            {"phase" : "D1", "dies" : ["lukystar"]},
            {"phase" : "N1", "dies" : ["jagoan_baru"]},
            {"phase" : "D2", "dies" : ["pushplay"]}
            ....
        ],
        "players" : [
            { "alignment" : "goodies", "role" : "Villager", "id" : "YosoRoso.ver2"},
            { "alignment" : "goodies", "role" : "Villager", "id" : "00H3nnyCute00"},
            { "alignment" : "goodies", "role" : "Mason", "id" : "ryuzakichibi"},
            { "alignment" : "goodies", "role" : "Hunter", "id" : "xlimitedx"},
            { "alignment" : "goodies", "role" : "Seer", "id" : "CeKilatoZ" },
            { "alignment" : "goodies", "role" : "Guardian Angel", "id" : "jagoan_baru" },
            { "alignment" : "baddies", "role" : "Werewolf", "id" : "cobaltblue"},
            { "alignment" : "baddies", "role" : "Werewolf", "id" : "pasirjengkol"}
            ....
        ]
    }
```

Berikut adalah Tautan TWG BIG yang bisa saya temukan. Data dikumpulkan berasal dari masing-masing tautan.
Jika kamu ingin bertanya, *request*, ataupun menyampaikan kritik dan saran, silahkan hubungi [saya via KASKUS](https://www.kaskus.co.id/@Tmofer) maupun langsung di GitHub.

## TWG 2011

Status   | TWG
---------|---------
[x]      | [Kutukan Sri dan Gala](https://archive.kaskus.co.id/thread/8765940)
[x]      | [H19N Terror!](http://archive.kaskus.co.id/thread/8972518)
[x]      | [Werewolves vs Vampires :::Twilight:::](http://archive.kaskus.co.id/thread/9227137)
[x]      | [Massive Attack at Hogwarts](http://archive.kaskus.co.id/thread/9494605)
[x]      | [Calamity of The Hidden Leaf Village](http://archive.kaskus.co.id/thread/9772548)
[x]      | [An Infiltration Destinies](http://archive.kaskus.co.id/thread/10108649)
[x]      | [Chaos at Yorkshin City](http://archive.kaskus.co.id/thread/10342165)
[x]      | [Game of D (Deception, Denial, Death)](http://archive.kaskus.co.id/thread/10446494)
[x]      | [How To Save a Life](http://archive.kaskus.co.id/thread/10761235)
[x]      | [Waking The Demon](http://archive.kaskus.co.id/thread/11118743)
[x]      | [Celestia](http://archive.kaskus.co.id/thread/11421415)
[x]      | [Van Helsing](http://archive.kaskus.co.id/thread/11759074)

## TWG 2012

Status   | TWG
---------|---------
[x]      | [SinCity](http://archive.kaskus.co.id/thread/12356185)
[x]      | [Curse of 14th Benizakura](http://archive.kaskus.co.id/thread/13091781)
[x]      | [The Dark Knight](http://archive.kaskus.co.id/thread/13708071)
[x]      | [Membunuh atau Dibunuh](http://archive.kaskus.co.id/thread/14482535)
[x]      | [Tales of Minakami Village](http://archive.kaskus.co.id/thread/15359906)
[x]      | [The Dark Age](http://archive.kaskus.co.id/thread/15858591)
[x]      | [Be Lucky on West (Justice on Bet)](http://kask.us/gWPzz)
[x]      | [Lord of The Rings (The Chosen Ringbearer)](http://kask.us/gV5NT)
[x]      | [S.H.I.E.L.D](http://kask.us/gWu3t)
[x]      | [Battle of Analysis](http://kask.us/gVUlF)

## TWG 2013

Status   | TWG
---------|----------
[ ]      | [The End of The Dragon World?](http://kask.us/g353e)
[ ]      | [The Hanged Man](http://kask.us/g5DaG)
[ ]      | [Apartment 312](http://kask.us/g9d8f)
[x]      | [The Mansion Behind the Scarlet Mist](http://kask.us/haK0K)
[ ]      | [**Remake** Chaos at Yorkshin City](http://kask.us/hb5oJ)
[ ]      | [The World of Sacfron](http://kask.us/hewh1)
[ ]      | [Set World on Fire](http://kask.us/hgCuF)
[ ]      | [99th Expeditions!](http://kask.us/hh1od)
[ ]      | [Attack On...](http://kask.us/hlWor)
[ ]      | [Taintful War of Gods (TWG)](http://kask.us/hnd05)
[x]      | [It's MoeLand !](http://kask.us/hsLsS)
[ ]      | [The Secret Tomb of Lord Hircine](http://kask.us/hwF2N)

## TWG 2014

Status   | TWG
---------|----------
[ ]      | [Invasi Alam Gaib Bumi Nusantara](http://kask.us/hDMkD)
[x]      | [Red Riding Hood - "Red Moon"](http://kask.us/hIipQ)
[x]      | [Das Ruhenheim](http://kask.us/hKZBJ)
[ ]      | [The DPR & Dangerous Viruses](http://kask.us/hNFBO)
[x]      | [CheckMate!](http://kask.us/hQHBC)

## TWG 2015

Status   | TWG
---------|----------
[ ]      | [Trust & Betrayal](https://kask.us/hV1Bo)
[ ]      | [Paradise : Brave New World](https://kask.us/h0j4e)
[ ]      | [Tales of the Psycho Villains](https://kask.us/h1sVd)
[ ]      | [The Dawn Of Monster](https://kask.us/h3igc)
[x]      | [Menuju Indonesia Merdeka](https://kask.us/h53gF)
[ ]      | [Bulan November 2015](https://kask.us/h9gNK)
[ ]      | [Serigala Berbulu Qurban](https://kask.us/h7EyC)

## TWG 2016

Status   | TWG
---------|----------
[ ]      | [BOOM! part II](https://kask.us/ibxhD)
[ ]      | [The Conjuring Theme](https://kask.us/igU6j)
[ ]      | [Lovers All The Way](https://kask.us/ihXsw)

## TWG 2017

Status   | TWG
---------|----------
[ ]      | [Teror @ Kost-Kostan](https://kask.us/imZCL)
[ ]      | [Matrix (Season 1) - When The Ancients Fall](https://kask.us/iqDDq)
[ ]      | [TWG: Gathering Berdarah](https://kask.us/itxtJ)

## TWG 2018

Status   | TWG
---------|----------
[x]      | [Hisashiburi](https://kask.us/iyBPW)

## TWG 2019

Status   | TWG
---------|----------

## TWG 2020

Status   | TWG
---------|----------
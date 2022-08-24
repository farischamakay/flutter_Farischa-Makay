# (03) Basic Version and Branch Management (Git)
## Data diri
Nomor Urut  :  1_009FLB_38 <br>
Nama        : Farischa Makay


## Summary
Pada section 3 ini saya belajar mengenai `Basic Version and Branch Management (Git). Git adalah salah satu version control system populer yang digunakan para developer untuk mengembangkan software serta memanajement project, dengan bekerja mengguanakan git developer dapat melacak (tracking) setiap perubahan yang dilakukan terhadap project.<br>

Pada praktik kerja kelas Flutter Alterra, git hosting service yang digunakan untuk menampung repository ialah Github. Berikut contoh repository pada Github : 
![MembuatRepository](screenshots/001_membuat%20repository.jpg) <br><br>
Setelah saya mempelajari video dan materi yang diberikan berikut hal wajib yang perlu diketahui dalam bekerja menggunakan Git : <br>
**- Membuat Repository** <br>
Pembuatan repository dapat secara langsung dibuat pada Github ataupun menuliskan perintah ``` git init --nama project``` pada git bash atau terminal pada vscode. Perintah git init akan membuat sebuah direktori bernama .git di dalam proyek. Direktori ini digunakan Git sebagai database untuk menyimpan perubahan yang kita lakukan.

**- Melakukan remote pada Repository project** <br>
Pada proyek pengembangan software yang melibatkan banyak orang (tim), kita tidak hanya akan menyimpan sendiri repository proyeknya. Semua tim yang terlibat dalam pengkodean (coding) akan menyimpan repository lokal di komputernya masing-masing.
Sebelum kita bisa upload semua revisi yang ada di repository lokal, kita harus menambahkan remote-nya terlebih dahulu dengan perintah ```git remote add <remote_name> <remote_repo_url>```

**- Membuat salinan / clone repository** <br>
Git clone adalah perintah untuk mengunduh / membuat salinan kode sumber yang ada dari repositori git service ke repositori lokal. Perintah dari git clone : ```git clone <alamat_ssh://>```

**- Melakukan perubahan pada repositori target** <br>
Proses bekerja menggunakanan git dapat dibagi menjadi 3 area yakni :  Working directory, staging area, dan repository.
![stage area](https://git-scm.com/book/en/v2/images/areas.png) <br>
Sederhananya ketika kita sedang melakukan editing pada repositori lokal kita sedang berada pada working directory, setelah kita melakukan ```git add``` (Git add : menambahkan file baru pada repositori yang dipilih) kita akan berada pada staging area. Ketika kita melakukan ```git commit``` (perintah untuk menyimpan perubahan yang dilakukan, tetapi tidak ada perubahan pada remote repository) kita akan berada pada repository area. Dan untuk mengirimkan perubahan file setelah di commit ke repositori target kita menggunakan perintah ```git push```.

**- Membuat, delete, remote branch/cabang** <br>
Git memang mendukung satu proyek dikerjakan oleh beberapa orang di dalam tim namun apabila dikerjakan dalam satu berkas yang sama akan mengakibatkan **_conflict_**. _Conflict_ umumnya terjadi ketika dua orang telah mengubah satu berkas yang sama atau jika salah satunya mengubah berkas dan yang lainnya menghapus berkas tersebut. Dalam hal ini, git tidak dapat secara otomatis menentukan perubahan mana yang akan diambil dan disimpan. Oleh karena itu, git sudah menyediakan **_branch_** (cabang). Untuk membuat branch kita dapat menuliskan perintah ```git branch <nama branch>```, kemudian untuk menghapus branch dapat menggunakan perintah ```git branch -D <branch>```, dan untuk melakukan remote pada branch dapat melakukan perintah ```git branch -a```.

**- Melakukan merge/penggabungan branch** <br>
Merge/penggabungan adalah suatu command dalam git untuk membuat branch yang bercabang menjadi satu kembali atau dengan kata lain mengintegrasikan kembali branch tersebut menjadi satu. Untuk melakukan penggabungan, pertama-tama kita perlu berpindah ke target branch yang diinginkan dengan memberi perintah ```git checkout <branch_utama>```. Kemudian kita merge source branch yang akan digabung kepada target branch dengan memberi perintah ```git merge <branch yang akan menggabung>```. <br>

**- Mengatasi conflict** <br>
Conflict adalah masalah yang sering dijumpai ketika melakukan kolaborasi, untuk mengatasi Conflict dapat melakukan diskusi bersama team ataupun melakukan revert atau reset.<br>
Mengembalikan kondisi (Revert) <br>
Revert adalah proses dimana ia akan mengambil kondisi file yang ada di masa lalu, kemudian menggabungkannya dengan commit terakhir dengan perintah ```git revert <kodeunik>```. <br>
Melakukan reset <br>
Reset adalah proses dimana kita akan kembali ke kondisi file tertentu dimasa lalu namun tidak bisa kembali lagi mengambil kondisi file saat ini. Perintah reset ```git reset --<kondisi>```. Perintah ini memiliki tiga argumen atau opsi utama, yaitu --soft, --mixed, dan --hard.<br>
--soft akan mengebalikan dengan kondisi file dalam keadaan staged <br>
--mixed akan mengebalikan dengan kondisi file dalam keadaan modified <br>
--hard akan mengebalikan dengan kondisi file dalam keadaan commited <br>








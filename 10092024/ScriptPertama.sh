# echo "Siapa nama anda? " 

# command ini untuk berinteraksi dengan terminal
# setelah "read" merupakana nama variabel yang digunakan untuk menampung jawaban atau interaksi dari user/pengguna terhadap terminal

# read name
# untuk memanggil variabel yang kita gunakan untuk menampung jawaban atau interaksi gunakan $

# echo "nama saya adalah $name"

# echo "Selamat datang di kalkulator PP"
# echo "Berapa panjang persegi panjang?"
# read panjang
# echo "Berapa lebar persegi panjang?"
# read lebar
# keliling=$(( 2 * (panjang + lebar) ))
# echo "Keliling persegi panjang adalah: $keliling"

# echo "Selamat datang di kalkulator VK"
# echo "Berapa radius nya?"
# read radius
# echo "Berapa tingginya?"
# read tinggi 
# volume=$(((22/7)*radius*radius*tinggi/3))
# echo "Volume Kerucut nya adalah: $volume"

# untuk membuat sebuah function cukup hanya memberikan nama fungsi saja setelah function tanpa menggunakan parameter
# function nm_fungsi(){
#      echo "test"
# }

# untuk pemanggilan function cukup panggil nama functionnya saja
# nm_fungsi

# function hello(){
#     echo "dimana tempat tinggal anda?"
# }

# hello

# function welcome(){
#     echo "selamat datang"
# }

# welcome


# function gaya(){
#     echo "Masukkan Massa Benda"
#     read m
#     echo "Masukkan Percepatan Benda"
#     read a
#     gaya=$((m*a))
#     echo "Gaya nya adalah $gaya"
# }
# gaya
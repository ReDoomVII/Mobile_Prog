function hitungharga() {
    echo "Berapa jumlah siswa yang ikut?: "
    read siswa

    echo "Berapa biaya transportasi per siswa? (dalam rupiah): "  
    read transcost

    echo "Berapa biaya tiket masuk objek wisata per siswa? (dalam rupiah): "
    read tickcost

    echo "Berapa biaya konsumsi per siswa? (dalam rupiah): "
    read conscost
    
    echo "Berapa anggaran yang dimiliki? (dalam rupiah): "
    read modal

    totaltrans=$((siswa * transcost))
    totaltiket=$((siswa * tickcost))
    totalkonsum=$((siswa * conscost))
    totalbiaya=$((totaltrans + totaltiket + totalkonsum))
    sisamodal=$((modal - totalbiaya))

    echo "=========================="
    echo "Jadi, total biaya untuk transportasi siswa adalah adalah: Rp $totaltrans" 
    echo "Jadi, total biaya untuk tiket siswa adalah: Rp $totaltiket" 
    echo "Jadi, total biaya untuk konsumsi siswa adalah: Rp $totalkonsum" 
    echo "=========================="
    echo "Jadi, total biaya untuk perjalanan wisata sekolah adalah: Rp $totalbiaya"
    echo "Jadi, sisa anggarannya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Perjalanan ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo "Perjalanan ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga
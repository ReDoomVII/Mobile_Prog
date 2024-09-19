function hitungharga() {
    echo "Berapa jumlah komputernya?: "
    read pc

    echo "Berapa harga komputer per unit? (dalam rupiah): "  
    read pcost

    echo "Berapa biaya meja per set? (dalam rupiah): "
    read meja
    
    echo "Berapa biaya kursi per set? (dalam rupiah): "
    read kursi

    echo "Berapa biaya pengiriman dan instalasinya? (dalam rupiah): "
    read instal

    echo "Berapa anggaran yang tersedia? (dalam Rupiah): "
    read modal

    totalpcost=$((pc * pcost))
    totaltbcost=$((pc * meja))
    totalchcost=$((pc * kursi))
    totalcost=$((totalpcost + totaltbcost + totalchcost + instal))
    sisamodal=$((modal - totalcost))

    echo "=========================="
    echo "Jadi, total biaya pc adalah: Rp $totalpcost" 
    echo "Jadi, total biaya meja adalah: Rp $totaltbcost"
    echo "Jadi, total biaya kursi adalah: Rp $totalchcost"
    echo "=========================="
    echo "Jadi, total biaya keseluruhan pengadaan peralatan kantor adalah: Rp $totalcost"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga
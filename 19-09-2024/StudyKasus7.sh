function hitungharga() {
    echo "Berapa jumlah area parkir per slot?: "
    read parkir

    echo "Berapa biaya per slot parkir? (dalam rupiah): "  
    read prkcost

    echo "Berapa paving serta marka jalannya? (dalam rupiah): "
    read mark
    
    echo "Berapa anggaran yang dimiliki? (dalam rupiah): "
    read modal

    totalparkir=$((parkir * prkcost))
    totalbiaya=$((totalparkir + mark))
    sisamodal=$((modal - totalbiaya))

    echo "=========================="
    echo "Jadi, total biaya untuk slot parkir adalah: Rp $totalparkir" 
    echo "=========================="
    echo "Jadi, total biaya untuk area parkir adalah: Rp $totalbiaya"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga
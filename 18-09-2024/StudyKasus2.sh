function hitungharga() {
    echo "Berapa jumlah pekerja?: "
    read jumlahworker

    echo "Berapa jumlah gaji per pekerja per hari? (dalam Rupiah): "  
    read gajiworker

    echo "Berapa hari proyek ini dikerjakan?: "
    read projectdur

    echo "Berapa biaya material? (dalam Rupiah): "
    read matcost
    
    echo "Berapa biaya arsitek? (dalam Rupiah): "
    read arscost

    echo "Berapa biaya izin dan operasional lainnya? (dalam Rupiah): "
    read operationcost

    echo "Berapa anggaran yang tersedia? (dalam Rupiah): "
    read modal

    totalgaji=$((jumlahworker * gajiworker * projectdur))
    totalcost=$((totalgaji + matcost + arscost + operationcost))
    sisamodal=$((modal - totalcost))

    echo "=========================="
    echo "Jadi, total biaya gaji pekerjanya adalah: Rp $totalgaji" 
    echo "Jadi, total biaya materialnya adalah: Rp $matcost"
    echo "Jadi, total biaya arstieknya adalah: Rp $arscost"
    echo "Jadi, total biaya operasionalnya adalah: Rp $operationcost"
    echo "=========================="
    echo "Jadi, total biaya keseluruhan proyeknya adalah: Rp $totalcost"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga
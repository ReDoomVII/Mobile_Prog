function hitungharga() {
    echo "Berapa biaya pengembangan produknya? (dalam rupiah): "
    read newcost

    echo "Berapa biaya pemasaran produknya? (dalam rupiah): "  
    read prodcost

    echo "Berapa perikiraan unit yang akan dijual?: "
    read unit
    
    echo "Berapa harga per unit produk yang akan dijual? (dalam rupiah): "
    read unitcost

    totalaunch=$((newcost + prodcost))
    totalprodcost=$((unit * unitcost))
    profit=$((totalprodcost - totalaunch))

    echo "=========================="
    echo "Jadi, total biaya pengembangan dan pemasaran produk adalah: Rp $totalaunch" 
    echo "Jadi, total penghasilan penjualan produknya adalah: Rp $totalprodcost"
    echo "=========================="
    echo "Jadi, total keuntungan yang didapat oleh perusahaan ini adalah: Rp $profit"

}

hitungharga
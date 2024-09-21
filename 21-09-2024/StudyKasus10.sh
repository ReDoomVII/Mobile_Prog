function hitungharga() {
    echo "Berapa jumlah buku yang akan dijual?: "
    read buku

    echo "Berapa harga jual bukunya? (dalam rupiah): "  
    read bukuprof

    echo "Berapa harga produksi bukunya? (dalam rupiah): "  
    read bukuprod

    echo "Berapa biaya penerbitannya? (dalam rupiah): "
    read bitcost
    
    totalprofit=$((buku * bukuprof))
    totalbuy=$((buku * bukuprod))
    totalcost=$((totalbuy + bitcost))
    profit=$((totalprofit - totalcost))

    echo "=========================="
    echo "Jadi, total keuntungan jika semua buku terjual adalah: Rp $totalprofit" 
    echo "Jadi, total biaya yang dikeluarkan untuk memproduksi buku adalah: Rp $totalbuy"
    echo "Jadi, total uang yang dikeluarkan adalah: Rp $totalcost"
    echo "=========================="
    echo "Jadi, total keuntungan yang didapat oleh penulis ini adalah: Rp $profit"
    
    if [ $profit -lt 0 ]; then
        echo "Penulis mendapatkan kerugian sebesar Rp ${profit#-}"
    else
        echo "Penulis ini mendapatkan keuntungan."
    fi
}

hitungharga
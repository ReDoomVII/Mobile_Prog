function hitungharga() {
    echo "Berapa jumlah televisi yang akan dijual?: "
    read tv

    echo "Berapa harga jual tvnya? (dalam rupiah): "  
    read tvprof

    echo "Berapa harga pembelian tvnya? (dalam rupiah): "  
    read tvbuy

    echo "Berapa biaya operasionalnya? (dalam rupiah): "
    read opercost
    
    totalprofit=$((tv * tvprof))
    totalbuy=$((tv * tvbuy))
    totalcost=$((totalbuy + opercost))
    profit=$((totalprofit - totalcost))

    echo "=========================="
    echo "Jadi, total keuntungan jika semua tv terjual adalah: Rp $totalprofit" 
    echo "Jadi, total biaya yang dikeluarkan untuk membeli tv adalah: Rp $totalbuy"
    echo "Jadi, total uang yang dikeluarkan adalah: Rp $totalcost"
    echo "=========================="
    echo "Jadi, total keuntungan yang didapat oleh perusahaan ini adalah: Rp $profit"
    
    if [ $profit -lt 0 ]; then
        echo "Penjualan ini mendapatkan kerugian sebesar Rp ${profit#-}"
    else
        echo "Penjualan tv ini menghasilkan keuntungan."
    fi
}

hitungharga
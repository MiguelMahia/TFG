cd ../data/inputs/ # Moverse a carpeta donde se encuentran los .pcap
for i in `ls nonVpnPcap/3` # Indica la carpeta donde se encuentran los .pcap
do
tshark -r nonVpnPcap/3/$i -Y "tcp && tcp.len != 0 || ssl || gquic || data " -w nonVpnfiltered/3/f_$i
echo "$i filtrado y copiado"
done

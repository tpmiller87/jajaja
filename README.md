# jajaja
A Bash script that extracts ja3 hashes from pcaps and runs them against ja3er.com

Syntax:

./jajaja.sh path/to/example.pcap

Outputs two files, one containing only the ja3s extracted from the pcap (ja3s.txt) and one that contains the ja3, IP source and destination, and fingerprint found on ja3er.com (if one is found).

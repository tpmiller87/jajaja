#!/bin/bash

tshark -r $1 -T fields -e tls.handshake.ja3 | grep -v -e '^$' | sort -u > ja3s.txt

while IFS= read -r line; do
	tshark -r $1 -Y tls.handshake.ja3==$line -T fields -e tls.handshake.ja3 -e ip.src -e ip.dst | sort -u
	curl -X GET "https://ja3er.com/search/$line"
	printf "\n\n\n"
done < ja3s.txt | tee final_ja3.txt
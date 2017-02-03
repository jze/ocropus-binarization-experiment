#!/bin/sh

ocropus-nlbin left.jpg right.jpg 
ocropus-gpageseg -n --csminheight 100000 --usegauss left.bin.png right.bin.png 
./ren.sh

for d in OCRpus-nlbin scantailor+0 scantailor+10 scantailor+20 scantailor+30 scantailor-300+30 scantailor+40; do
	echo $d
	cp ground-truth/*.gt.txt $d/
	ocropus-rpred -q -m ../ocropus-model_oesterreich-ungarn/verlustliste_österreich-ungarn.pyrnn.gz "$d/*.bin.png"
	ocropus-errs -e "$d/*.gt.txt"
done

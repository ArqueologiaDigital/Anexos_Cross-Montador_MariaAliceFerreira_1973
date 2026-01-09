width=600
echo "Generating lowres pages:"
for f in originais/*.png
do
    echo "Converting $f ..."
    convert $f -resize $width $f.lowres.jpg
done

echo "Generating the final PDF ..."
convert originais/capa*.lowres.jpg originais/sinopse*.lowres.jpg originais/indice*.lowres.jpg originais/p*.lowres.jpg PDF/Anexo_21_Maria_Alice.pdf
echo "done."

#!/bin/bash
# Exemplo Yad
Saida=$( yad --form --image oblog-min.png --image-on-top \
    --title "Terminal Root" \
    --text "Exemplo <b>YAD</b> por <big><b>Terminal Root</b></big>" \
    --field Nome "Debora" \
    --field Nascimento:DT 10/03/1999 \
    --field "Há quanto tempo usa <b>Linux</b>:NUM" '1!0..20!1' \
    --field "Sites preferidos:CB" 'Terminal Root!BR-Linux!Dicas-l!Viva o Linux!Outros' \
    --field "Vou passar a usar o yad:CHK" TRUE \
    --field "Vou continuar usando zenity:CHK")
	
#echo $Saida
#IFS=',' read Nome Nascimento HaQtoTempo Sites Yad Zenity <<< "$Saida"
echo $Saida | tr '|' ',' >> saida.csv
#echo $Nome ^ $Nascimento ^ $HaQtoTempo ^ $Sites ^ $Yad ^ $Zenity

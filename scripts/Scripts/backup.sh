#!/bin/bash
#BACKUP
# Source: https://u.teknik.io/0QdKc.png

CMD="rsync -rtv"
DEST=""

if [ -d "$DEST" ]; then
	#MEDIA
	$CMD $HOME/Imágenes/ $DEST/Imágenes/
	#SCRIPTS
	$CMD $HOME/Documentos/ $DEST/Documentos/
	notify-send "BACKUP COMPLETADO"
else
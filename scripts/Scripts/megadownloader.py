#!/usr/bin/env python
# -*- coding: utf-8 -*-

import subprocess
import argparse
from time import sleep
from sys import exit


# Configuracion
path = "/home/xblyed/Vídeos/"


# ArgumentParser
parser = argparse.ArgumentParser(
    description='Descarga multiple con megatools desde un archivo de texto')
parser.add_argument('-f', '--file', help='Archivo de texto', required=True)
parser.add_argument('-p', '--path', help='Directorio de descarga', required=False)
args = parser.parse_args()

txt = args.file
if args.path is True:
    path = args.path


# Abrimos el txt
with open(txt) as f:
    content = f.readlines()

# Imprimimos lo que vamos a bajar
print "\nMegaDownloader script for megatools by xbLyed"
print "[+] Descargando \033[1m" + str(len(content) - 1) + "\033[0m links en \033[1m" + path + "\033[0m"
print "[+] Recuerda poner la terminal a pantalla completa para que ver bien el output."
print "[?] Error al bajar? Inicia el script desde su misma carpeta.\n"
sleep(3)

# Vamos iterando linea por linea y bajamos las que sean direcciones
for line in content:
    if "https" in line:
        try:
            subprocess.check_call(["megadl", line[:-1], "--path", path])
            print
        except KeyboardInterrupt:
            print "\n[!] CTRL+C Caught, quitting"
            break
            sleep(2)
            exit(0)
        except:  # Mal habito pero w/e :>
            print "[!] Script error: el archivo ya existe?\n"

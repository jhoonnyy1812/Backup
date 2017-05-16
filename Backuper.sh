#!/bin/bash
echo "Este programa faz um backup. Deseja continuar (s/n)?"
read $resposta
if [ $resposta -eqs ]
then
	data=$(date +%d%m%y)
	mkdir /home/jhoonnyy1812/Backup/
	cp -R /home/jhoonnyy1812/Área\ de\ Trabalho/Faculdade /home/jhoonnyy1812/Backup/
	cp -R /home/jhoonnyy1812/Área\ de\ Trabalho/SHELL /home/jhoonnyy1812/Backup
	cp -R /home/jhoonnyy1812/Área\ de\ Trabalho/:D /home/jhoonnyy1812/Backup
	rm -rf /home/jhoonnyy1812/:D
	cd /home/jhoonnyy1812/
	tar -cf {$data}.tar /home/jhoonnyy1812/Backup/
	gzip -9 {$data}.tar
	gpg -c {$data}.tar.gz
	rm -rf {$data}.tar.gz
	rm -rf /home/jhoonnyy1812/Backup/
fi
if [ $resposta -eqn ]
then 
	exit
fi

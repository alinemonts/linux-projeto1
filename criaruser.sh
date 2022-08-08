#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo "Criando usuários do sistema..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls1) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls2) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls3) -G GRP_ADM

useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls4) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls5) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls6) -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls7) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls8) -G GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd Wno8-Hpls9) -G GRP_SEC

echo "Usuários criados!"

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!"

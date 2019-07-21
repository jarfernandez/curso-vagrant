#!/bin/bash
echo "Provisionando desde script..."
echo "Hola mundo" > mi_fichero_$(date '+%F_%H:%M').txt

echo "Se crea el usuario \"usuario\" si no existe"
awk -F: '{ print $1}' /etc/passwd | grep usuario > /dev/null 2>&1
if [ $? -eq 1 ]
then
  echo "Creando el usuario \"usuario\"..."
  useradd -ms /bin/bash usuario
else
  echo "El usuario \"usuario\" ya exite"
fi

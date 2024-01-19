# Backup-Utility

Para este ejercicio se utilizo un ambiente virtualizado de 2 VM con kali linux, ambas maquinas fueron creadas en una red NAT con una direccion MAC diferente para cada una asi de esta forma podian tomar una direccion IP en automatico mediante el protocolo DHCP.

Una vez ambas maquinas se vieron en la red, se procede a generar una clave publica del protocolo SSH para una autenticacion automatica utilizando el comando ssh-keygen en el servidor 1. Generada la clave publica se envia la misma al servidor 2 con el siguiente comando ssh-copy-id kali@192.168.20.5, de esta forma se copiará automáticamente la clave pública del servidor 1 al archivo ~/.ssh/authorized_keys del usuario kali en el servidor 2, donde previamente se habia creado el archivo authorized_keys con el comando touch ~/.ssh/authorized_keys.

Con el comando ssh kali@192.168.20.5 se pudo comprobar la conexion automatica desde el servidor 1 al servidor 2.

En el bash solo se agrego la conexion ssh para la transmision de los archivos.

En el video adjunto, se configuro una tarea en crontab que se ejecuta cada 1 minuto para las pruebas donde se ejecuta correctamente y envia los archivos comprimidos al servidor 2.

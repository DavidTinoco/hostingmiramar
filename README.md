## Hostingmiramar

- Se utilizará un servidor LDAP como sistema para autenticar a los usuarios virtuales
- Los ficheros del nuevo usuario se almacenaran en un volumen lógico individual para limitar el tamaño disponible de dicho usuario. (100 Mb)
- Creación de una aplicación web para administrar las diferentes opciones:
  - Alta del usuario (Usuario, password y Dominio) FTP y LDAP
  - Crear un nuevo subdominio una vez iniciada la sesión en la aplicación web
  - Cancelar la contratación de un dominio
  - Darse de baja, eliminando todo el contenido del usuario
  - El usuario podrá cambiarse la contraseña de su cuenta o la de su usuario en la base de datos MySQL.

Automatizado:

- Si el usuario o nombre de dominio ya existen se le informará mediante un mensaje en la página web.
- Si el usuario y el nombre de dominio están disponibles, se creará un volumen logico de 100MB montado en un directorio personal, Ej: /srv/ftp/ftp_user/www/

- Se da de alta un nuevo Virtual Host , donde el DocumentRoot será /srv/ftp/ftp_user/www/

- Se creará un usuario distinto mysql para dicho usuario, donde podrá visualizarlo en el panel web. Ej: my_user. Y se generará una contraseña aleatoria.

- Y se creará una nueva zona para el dominio del usuario, con su zona de resolución directa para los servicios.

- Y una zona de resolución inversa para el direccionamiento de todos los usuarios.

OPCIONAL:

- Darle la posibilidad al usuario desde el panel web, de crear un wordpress con un click!

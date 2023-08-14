USE mysql;

CREATE USER 'lector@localhost' IDENTIFIED BY 'lector2023'; -- Creacion del usuario con el permiso solo de lectura y la contraseña de este
GRANT SELECT ON *.* TO 'lector@localhost'; --  Permiso de select para la lectura de todas las tablas al usuario
SHOW GRANTS FOR 'lector@localhost';

CREATE USER 'modificador@localhost' IDENTIFIED BY 'modificador2023'; -- Creacion del usuario con los permisos de lectura, insercion y modificacion de datos y la contraseña de este
GRANT SELECT, INSERT, UPDATE ON *.* TO 'modificador@localhost'; -- Permisos de select, insert y update para la lectura, insercion y modifacion de datos
SHOW GRANTS FOR 'modificador@localhost';
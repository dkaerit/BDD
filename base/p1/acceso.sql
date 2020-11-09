######### SESIÓN ADMINISTRADOR -------------------------------------------------------------------------
# Comprobar que eres el administrador
SHOW USER                 

# Crear el usuario
create user alu0101014326 
identified by xxxxx
default tablespace users
temporary tablespace temp;

grant connect, resource, unlimited tablespace
to alu0101014326; 

exit

######### SESIÓN DE ALUMNO ------------------------------------------------------------------------------
# En la bash
sqlplus2 alu0101014326

# Desde otra sesión de SQL
connect alu0101014326@orclpdb1

# Grabar la práctica en un fichero
spool p1 append # append: si existe el fichero en vez de sobrescribirlo lo añade por el final.
spool off       # cerrar el buffer
spool p1 append # reabrir el buffer

# Ayudas
help connect # Documentación del uso de CONNECT

# mostrar el contenido completo de la tabla dual (tabla creada por el sistema diseñada para hacer cálculos)
select * 
from dual;

# Descripción/esquema de la tabla dual (tipos de datos, etc)
describe dual

# Muestra el contenido del buffer de instrucciones
l

# Lista y ejecuta el contenido del buffer de instrucciones
# La barra especifica que solaente lo ejecuta (no lo lista)
run /

# salva el contenido del buffer de instrucciones
save consulta1
get consulta1

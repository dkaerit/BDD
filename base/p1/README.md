# Sesión de administardor
1) Acceder al Centro de cálculo
2) Acceder como administrador *(pass administrador ese único día)*
 
```bash
$ ssh alu0101014326@exthost.etsii.ull.es
$ sqlplus2 administrador 
```
3) Comprobar que eres el administrador
```sql
SQL> 
show user
```
4) Crear usuario alu y dar los permisos correspondientes
5) Salir de la sesión
```sql
SQL> 
create user alu0101014326 
identified by xxxxx
default tablespace users
temporary tablespace temp;

grant connect, resource, unlimited tablespace
to alu0101014326; 

exit
```

# Sesión de alu 
1) Conectarte al sistema gestor desde la bash
```
$ sqlplus2 alu0101014326
```
2) Estando dentro de otra sesión del sisema gestor.
```sql
SQL>
connect alu0101014326@orclpdb1
```

3) Grabar la práctica en un fichero
```sql
SQL>
spool p1 append # append: si existe el fichero en vez de sobrescribirlo lo añade por el final.
spool off       # cerrar el buffer
spool p1 append # reabrir el buffer
```

4) Ver las ayudas de un comando
```sql
SQL>
help connect # Documentación del uso de CONNECT
```

5) Mostrar el contenido de la tabla dual (tabla creada por el sistema diseñada para hacer cálculos)
```sql
SQL> 
select * from dual;

D
-
X
```
6) Descripción/esquema de la tabla dual (tipos de datos, etc)

```sql
SQL>
describe dual
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DUMMY                                              VARCHAR2(1)
```

7) Muestra el contenido del buffer de instrucciones
```sql
SQL>
l
  1* select * from dual
```


8) Lista y ejecuta el contenido del buffer de instrucciones. 
```sql
SQL> 
run / # La barra especifica que solaente lo ejecuta (no lo lista)
  1* select * from dual

D
-
X
```


9) salva el contenido del buffer de instrucciones
```sql
SQL>
save consulta1
get consulta1
```

10) Comprueba y Cambia los parametros de visualización de tablas
```sql
SQL>
show linesize # tamaño de línea 
show pagesize # tamaño de página (14)
set linesize 130
set pagesize 20
```

Para guardar los valores de confguración podría poner los valores en un fichero de configuración que se establezcan al arrancar 

11) Mostrar todos los parámetros
```sql
SQL>
show all
```


12) Permite ejecutar la sentencia del sistema operativo desde sqlplus
```sql
SQL>
host ls
host # abre un subproceso bash dentro de sqlplus
exit # saca del subproceso
```


13) variales de sustitución
```sql
SQL>
select *
from &tabla; # pediría el nombre de la tabla
: dual

run # vuelve a pedir el valor del parametro
```

14) doble &&: si el valor de la variable existe no te pide valor, y si no existe solo te lo pide una vez
```sql
SQL>
select *
from &&tabla;

SQL>
run # pide valor

SQL>
run # ya no pide valor

SQL>
select *
from &&tabla
where &&tabla.dummy='x';
```


15) Paramos el spool
```sql
SQL>
spool of
exit # salimos de sqlplus2
more p1.lst # leer lo que se guardó en el p1
```

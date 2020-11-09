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

```sql
SQL>

```

```sql
SQL>

```

```sql
SQL>

```

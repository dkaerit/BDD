# Sesión de administardor
1) Acceder al Centro de cálculo
2) Acceder como administrador *(pass administrador ese único día)*
 
```bash
$ ssh alu0101014326@exthost.etsii.ull.es
$ sqlplus2 administrador 
```
3) Comprobar que eres el administrador
```sql
SQL> show user
```
4) Crear usuario alu y dar los permisos correspondientes
5) Salir de la sesión
```sql
SQL> create user alu0101014326 
identified by xxxxx
default tablespace users
temporary tablespace temp;

SQL> grant connect, resource, unlimited tablespace
to alu0101014326; 

SQL> exit
```

# Sesión de alu 
1) Conectarte al sistema gestor desde la bash
```

```
2) Estando dentro de otra sesión del sisema gestor.
```
```

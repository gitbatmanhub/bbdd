SELECT * FROM novared.ordenestrabajo;
use novared;

#Switch and Case bbdd
select area,
case
when maquina="Producción" then "Estas son las areas de produccion"
when maquina="Compactadora" then "Estas son las de la compactadora"
else area
end as Consultas
from ordenesTrabajo;

select * from ordenestrabajo;
#If & else
select if(1 > 2, true, false) as resultados;

select id,
       if(id > 2, area, descripcion) as total
from ordenestrabajo;

select
    area,
if(fecha < '2022-11-10', concat(id, '-22'),
   if(fecha > '2023-11-11', concat(id, '-23'),
      concat(id, '-20')
    )
    ) as codigo
from ordenestrabajo;


#ifNull NullIf

select ifnull(null, "text") as resultados;

select * from users;

select fullname, ifnull(sobreMi, empresa) as contacto
from users;


select fullname, ifnull((select pais where id=3),
    'No tiene pais registarado') as pais
from users
where id= 3;


select nullif(2, 2)
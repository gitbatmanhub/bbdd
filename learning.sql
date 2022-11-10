SELECT * FROM novared.ordenestrabajo;
use novared;

#Switch and Case bbdd
select area,
case
when maquina="Producción" then "Estas son las areas de produccion"
when maquina="Compactadora" then "Estas son las de la compactadora"
else area
end as consulta
from ordenesTrabajo

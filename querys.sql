use novared;
show tables;
select * from ordenestrabajo;

SELECT ordenestrabajo.*, users.fullname, ordenesaprobadas.comentariosSupervisor FROM novared.ordenestrabajo inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=1 inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id where ordenestrabajo.id =51;



SELECT create_at, date_format(ordenestrabajo.fecha, "%Y-%M-%d"), ordenestrabajo.hora as fecha
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=1
    inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id where ordenestrabajo.id=51;

select date_format(ordenestrabajo.fecha, "%Y-%m-%d") as fecha from ordenestrabajo;

describe ordenestrabajo;

select * from users;
  UPDATE users SET idRol= 4 WHERE id = 4;
  UPDATE users SET idRol= 4 WHERE id = 9;
select * from rolusuarios;


select * from users ;

describe ordenestrabajo;

show tables ;
select * from ordenesaprobadas;
select * from ordenestrabajo;
select * from users where idRol=4;



create table ordenesasignadas
(
    id_OrAs int(100),
    create_at timestamp not null default current_timestamp,
    fecha_create DATE DEFAULT (CURDATE()),
    hora_create time DEFAULT (DATE_FORMAT(NOW(), "%H:%i:%S")),
    idTecnico1 int(4),
    idTecnico2 int(4),
    idAyudante1 int(4),
    idAyudante2 int(4),
    tipoMantenimiento int(4),
    descripcionMantenimiento text(1000),
    fechaHoraInicio datetime,
    fechaHoraFinal datetime
);





);

create table tipoMantenimiento
(
    idTipoMantenimiento int(2),
    nameTipoMantenimiento char(50)
);
select * from users;


/*ordenestrabajo.*
  SELECT ordenestrabajo.*, users.fullname, ordenesaprobadas.comentariosSupervisor FROM novared.ordenestrabajo inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=1 inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id where ordenestrabajo.id =51;


select * from users;
select date_format(ordenestrabajo.create_at, "%Y-%m-%d") as fecha  from ordenestrabajo;
SELECT date_format(ordenestrabajo.create_at, "%Y-%m-%d") as fecha, ordenestrabajo.id, ordenestrabajo.area, ordenestrabajo.descripcion, ordenestrabajo.user_id, ordenestrabajo.prioridad, ordenestrabajo.maquina, ordenestrabajo.estado, ordenestrabajo.hora, users.*, ordenesaprobadas.*
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=1
    inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id
where ordenestrabajo.id =51;
SELECT date_format(ordenestrabajo.create_at, "%Y-%m-%d") as fecha from ordenestrabajo;

 */



SELECT users.*, ordenestrabajo.*, ordenesasignadas.*
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=2
    inner join ordenesasignadas on ordenesasignadas.idTecnico1= 9 or ordenesasignadas.idTecnico2= 9 or ordenesasignadas.idAyudante1= 9 or ordenesasignadas.idAyudante2= 9;
    #inner join ordenesasignadas on ordenesasignadas.id_OrAs = ordenestrabajo.id;



select * from ordenestrabajo where id=54;


use novared;
select * from ordenesasignadas;

select * from ordenestrabajo;
describe ordenestrabajo;



SELECT users.*, ordenestrabajo.*, ordenesasignadas.*
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=2
    inner join ordenesasignadas on ordenesasignadas.idTecnico1= 9 or ordenesasignadas.idTecnico2= 9 or ordenesasignadas.idAyudante1= 9 or ordenesasignadas.idAyudante2= 9;


select ordenesasignadas.idTecnico1
from ordenesasignadas
where idAyudante1=9 or idTecnico2= 9 or idTecnico1= 9 or idAyudante2=9 ;

select * from ordenestrabajo;

select  ordenesasignadas.*, ordenestrabajo.*
from  ordenesasignadas, ordenestrabajo
where idAyudante1=9 or idTecnico2= 9 or idTecnico1= 9 or idAyudante2=9 and ordenestrabajo.idStatus=(select * from ordenestrabajo where idStatus=2)  ;





select * from ordenestrabajo;
select * from ordenesasignadas;
select * from users;

describe ordenesasignadas;


SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo, novared.users
where ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=2;





SELECT ordenestrabajo.*, users.fullname, ordenesaprobadas.comentariosSupervisor
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=1
    inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id
        where ordenestrabajo.id =51;


select  ordenesasignadas.*, o.*, u.fullname
from  novared.ordenesasignadas
inner join ordenestrabajo o on ordenesasignadas.idOrden = o.id
inner join users u on o.user_id = u.id
where idAyudante1=9 or idTecnico2= 9 or idTecnico1= 9 or idAyudante2=9 and o.idStatus=2  ;


SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo, novared.users
where ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=2;




select * from users;


select * from rolusuarios;

select * from users;
  UPDATE users SET idRol= 4 WHERE id = 10;

SELECT ordenestrabajo.*, users.fullname, ordenesaprobadas.comentariosSupervisor
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=2
    inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id
        where ordenestrabajo.id =57;


select * from ordenestrabajo;
select * from users;
select * from ordenesasignadas;
describe ordenesasignadas;
select * from statusorden;


select * from ordenesasignadas;
select * from users;


SELECT fullname as ayudante1
FROM novared.ordenesasignadas
    inner join users u on ordenesasignadas.idAyudante1 = u.id
where id_OrAs=5;

SELECT fullname as ayudante2
FROM novared.ordenesasignadas
    inner join users u on ordenesasignadas.idAyudante2 = u.id
where id_OrAs=5;

SELECT fullname as tecnico1
FROM novared.ordenesasignadas
    inner join users u on ordenesasignadas.idTecnico1 = u.id
where idOrden=57;

SELECT fullname as tecnico2
FROM novared.ordenesasignadas
    inner join users u on ordenesasignadas.idTecnico2 = u.id
where id_OrAs=5;




select * from ordenesasignadas;
select * from tipoMantenimiento;


select date_format(ordenesasignadas.fechaHoraInicio, "%H-%i-%S") as horaInicio , date_format(ordenesasignadas.fechaHoraFinal, "%Y-%m-%d") as fechaHoraFinal
from novared.ordenesasignadas
inner join tipomantenimiento t on ordenesasignadas.tipoMantenimiento = t.idTipoMantenimiento
where idOrden=58;

select * from ordenesasignadas where id_OrAs=7;
select * from users;

select * from rolusuarios;

SELECT ordenestrabajo.*, users.fullname, ordenesaprobadas.comentariosSupervisor FROM novared.ordenestrabajo inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=2 inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id where ordenestrabajo.id =57;


select nameTipoMantenimiento ,descripcionMantenimiento, date_format(ordenesasignadas.fechaHoraInicio, "%Y-%m-%d") as fechaInicio, date_format(ordenesasignadas.fechaHoraInicio, "%H:%m") as horaInicio,date_format(ordenesasignadas.fechaHoraFinal, "%H:%m") as horaFinal , date_format(ordenesasignadas.fechaHoraFinal, "%Y-%m-%d") as fechaFinal from novared.ordenesasignadas inner join tipomantenimiento t on ordenesasignadas.tipoMantenimiento = t.idTipoMantenimiento where idOrden=58;
select * from ordenestrabajo;
select * from statusorden;

select * from ordenesaprobadas;
select * from ordenestrabajo;
select * from ordenesasignadas where idOrden=57;
select * from estadomaquina;
select * from ordenesaprobadas;


select * from ordenestrabajo;
select * from ordenesasignadas;
select * from ordenesatendidas;
select * from users;





SELECT ordenestrabajo.*, users.fullname, statusorden.nombreStatus
FROM novared.ordenestrabajo, novared.users, novared.statusorden
where 6 = users.id AND ordenestrabajo.idStatus=0;


SELECT ordenestrabajo.*, users.fullname  FROM novared.ordenestrabajo, novared.users where 6 = users.id AND ordenestrabajo.idStatus=0;

select ordenestrabajo.*, users.fullname, e.nameEstado
from ordenestrabajo
join users on users.id = ordenestrabajo.user_id
join estadomaquina e on e.idEstadoMaquina = ordenestrabajo.estadoMaquina;



select * from ordenestrabajo;
describe ordenestrabajo;

select * from estadomaquina;
select ordenestrabajo.*, users.fullname, e.nameEstado from ordenestrabajo join users on users.id = 6
    join estadomaquina e on e.idEstadoMaquina = ordenestrabajo.estadoMaquina;

select * from statusorden;
  UPDATE ordenestrabajo SET idStatus=0 WHERE id = 77;

select * from ordenestrabajo;

SELECT ordenestrabajo.*, users.fullname  FROM novared.ordenestrabajo, novared.users where ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=2;
SELECT Count(idStatus) as contador from ordenestrabajo where idStatus=0;

select * from users;
select * from statusorden;
SELECT ordenestrabajo.*, users.fullname  FROM novared.ordenestrabajo, novared.users where 6 = users.id AND ordenestrabajo.idStatus=3;


SELECT ordenestrabajo.*, users.fullname, ordenesaprobadas.comentariosSupervisor
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=3
    inner join ordenesaprobadas on ordenesaprobadas.idOrden= ordenestrabajo.id;

select * from ordenestrabajo;


select * from statusorden;

select * from users;

SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo
    inner join users on users.id=ordenestrabajo.user_id and ordenestrabajo.idStatus=2
    inner join ordenesasignadas on ordenesasignadas.id_OrAs= ordenestrabajo.id
where ordenestrabajo.id =84;


    SELECT ordenestrabajo.*, users.fullname
    FROM novared.ordenestrabajo, novared.users
    where ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=2;


select ordenesasignadas.*, ot.*, u.fullname
from novared.ordenesasignadas
inner join ordenestrabajo ot on ordenesasignadas.idOrden = ot.id
inner join users u on ot.user_id = u.id
where idOrden=84;

select * from ordenesasignadas;
select * from ordenesatendidas;
describe ordenesasignadas;

select * from users;



SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo, novared.users


select * from ordenesatendidas;



#where ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=3


select * from statusorden;
SELECT Count(idStatus) as contador from ordenestrabajo where idStatus=3

SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo, novared.users
where 1 = users.id AND ordenestrabajo.idStatus=3;

select ordenesatendidas.*, u.fullname as Atendió, o2.*
from ordenesatendidas
join ordenestrabajo o on o.id = ordenesatendidas.id_orden
join users u on u.id = ordenesatendidas.user_id
join ordenestrabajo o2 on o2.id = ordenesatendidas.id_orden
where o2.user_id=1;

SELECT Count(user_id) as contador from ordenesatendidas where user_id=10
select * from ordenesatendidas;

select * from ordenestrabajo; where user_id=85;
    select * from users where id=7;

SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo, novared.users
where ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=0;


select ordenestrabajo.*
from ordenestrabajo
join users u on u.id = ordenestrabajo.user_id
where ordenestrabajo.user_id = 5 and ordenestrabajo.idStatus=0;

select * from users;


select ordenestrabajo.id, users.id
from ordenestrabajo, users
         where ordenestrabajo.idStatus=0;


SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo, novared.users
where ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=0;

select * from statusorden;

select * from ordenestrabajo;
describe ordenestrabajo;
select * from users;

select ordenestrabajo.*, users.fullname, e.nameEstado from ordenestrabajo join users on users.id = 6 join estadomaquina e on e.idEstadoMaquina = ordenestrabajo.estadoMaquina;




select * from ordenesatendidas;
DELETE FROM ordenesatendidas
    WHERE id_orden = 84;


select * from ordenesasignadas;

select * from ordenesasignadas;
DELETE FROM ordenesasignadas
    WHERE idOrden = 85;

select * from ordenesaprobadas;

select * from users;


SELECT Count(user_id) as contador from ordenesatendidas where user_id=10
select * from ordenesatendidas;


SELECT Count(id_OrAs) as contador from ordenesasignadas where id_OrAs=5;
select * from ordenesasignadas;


select * from ordenestrabajo;
select * from ordenesasignadas;
select * from ordenesatendidas;
describe ordenesatendidas;

alter table ordenestrabajo AUTO_INCREMENT=1;
alter table ordenesatendidas AUTO_INCREMENT=1;
alter table ordenesaprobadas AUTO_INCREMENT=1;
alter table ordenesasignadas AUTO_INCREMENT=1;


UPDATE ordenestrabajo SET idStatus=3 WHERE id = 1;

select * from ordenestrabajo;
select * from users;

SELECT Count(id_OrAs) as contador from ordenesasignadas where idTecnico1=10 or idTecnico2=10 or idAyudante1=10 or idAyudante2=10;
select * from ordenesasignadas;
select * from ordenestrabajo;

select  ordenesasignadas.*, o.* , u.fullname
from  novared.ordenesasignadas
    inner join ordenestrabajo o on ordenesasignadas.idOrden = o.id
    inner join users u on o.user_id = u.id
where idAyudante1 in (select idAyudante1, idAyudante2, idTecnico1,idTecnico2
                    from ordenesasignadas where idAyudante1= ? or idTecnico2= ? or idTecnico1= ? or idAyudante2=?) and o.idStatus=2;


SELECT ordenestrabajo.*, users.fullname
FROM novared.ordenestrabajo, novared.users
where
    ordenestrabajo.user_id = users.id AND ordenestrabajo.idStatus=2;


select * from ordenestrabajo where idStatus=3;

select * from ordenesasignadas;

select  count(ordenesasignadas.id_OrAs) as contador
from  novared.ordenesasignadas
    inner join ordenestrabajo o on ordenesasignadas.idOrden = o.id
    inner join users u on o.user_id = u.id
    where (idAyudante1= ? or idTecnico2= ? or idTecnico1= ? or idAyudante2=?) and o.idStatus=3;


select * from ordenesasignadas;
select * from ordenesatendidas;

delete from ordenesatendidas where id=8;

select * from ordenesasignadas;
describe ordenesasignadas;


select count(id) from ordenestrabajo
where user_id=6 and idStatus=1;

select * from users;

select * from ordenesatendidas;


select * from ordenesatendidas;

select *
from ordenesatendidas
inner join ordenestrabajo o on ordenesatendidas.id_orden = o.id
inner join ordenesaprobadas o2 on o.id = o2.idOrden;


select  ordenesasignadas.*, o.* , u.fullname from  novared.ordenesasignadas inner join ordenestrabajo o on ordenesasignadas.idOrden = o.id inner join users u on o.user_id = u.id where (idAyudante1= ? or idTecnico2= ? or idTecnico1= ? or idAyudante2=?) and o.idStatus=3
select * from rolusuarios;
select * from especialidadtecnico;
select * from statusorden;

describe sessions;
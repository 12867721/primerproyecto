/**Creación del Objeto: Procedimiento Almacenado sp ConsultaEmpleado_id**/

		create proc [dbo]. [sp_consultaempleado_id]
		@idempleado int
		as
		select
		e. cedula as identificacion, e.nombre, e, apellido, e. fecha_nacimiento as "fecha nacimiento, e.direccion, e.telefono,
		e.email, e.fecha_creacion as "fecha creacion, c.descripcion as cargo,
		d.descripcion as departamento, x.descripcion as sexo,
		s.descripcion as sector, m.descripcion as municipio, p.descripcion as provincia,
		r.descripcion as region
		from empleado as e

		inner join cargo as c on e.idcargo = c.idcargo
		inner join departamento as d on  e.id_departamento = d.id_departamento
		inner join sexo as x on e.idsexo = x.idsexo
		inner join sector as s on e.idsector = s.idsector
		inner join municipio as m on s.idsector = m.idmunicipio
		inner join provincia as p on m.idprovincia = p.idprovincia 
		inner join region as r on p.idregion =  .ridregion

		where idempleado = @idempleado
		go
		 
		 exec sp_consultaempleado_id 9
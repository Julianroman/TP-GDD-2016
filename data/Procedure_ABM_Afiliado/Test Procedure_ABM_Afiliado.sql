USE [GD2C2016]
GO

--select * from TRIGGER_EXPLOSION.Afiliado where Numero_documento = 42138922;
--select * from TRIGGER_EXPLOSION.PlanMedico
--select * from TRIGGER_EXPLOSION.Afiliado

DECLARE	@return_value int

EXEC	@return_value = [TRIGGER_EXPLOSION].[alta_afiliado]
		@nombre = N'Juan',
		@apellido = N'Pepon',
		@descripcion_tipo_documento = N'DNI',
		@numero_documento = 42138922,
		@direccion = N'sadasf',
		@telefono = 12341234,
		@mail = N'asdasfasfasf',
		@fecha_nacimiento = N'12/10/1990',
		@sexo = N'masculino',
		@descripcion_estado_civil = N'Soltero',
		@descripcion_plan_medico = N'Plan Medico 110',
		@rol_habilitado = 1

SELECT	'Return Value' = @return_value

GO


----------------------------------------------------------------------
-----------------------modificar_afiliado-----------------------------
----------------------------------------------------------------------

--select * from TRIGGER_EXPLOSION.Modificaciones_afiliado where id_afiliado = 202;
--select * from TRIGGER_EXPLOSION.Afiliado where Id_afiliado = 202;

DECLARE	@return_value int

EXEC	@return_value = [TRIGGER_EXPLOSION].[modificar_afiliado]
		@sexo = N'masculino',
		@direccion = N'sadasf',
		@telefono = 12341234,
		@mail = N'asdasfasfasf',
		@descripcion_estado_civil = N'Divorciado',
		@descripcion_plan_medico = N'Plan Medico 150',
		@motivo_modificacion = N'Modificacion de test',
		@id_afiliado = 202

SELECT	'Return Value' = @return_value

GO

----------------------------------------------------------------------
--------------------------baja_afiliado-------------------------------
----------------------------------------------------------------------

--select * from TRIGGER_EXPLOSION.Modificaciones_afiliado where id_afiliado = 202;
--select * from TRIGGER_EXPLOSION.Afiliado where Id_afiliado = 202;

DECLARE	@return_value int

EXEC	@return_value = [TRIGGER_EXPLOSION].[baja_afiliado]
		@id_afiliado = 202

SELECT	'Return Value' = @return_value

GO

/*
GESTIÓN DE BASE DE DATOS
		TRAMITES DE IGLESIAS II
ALUMNO:
	QUIMIS ANCHUNDIA MANUEL ALEJANDRO
CURSO:
	QUINTO B
*/ 

CREATE TABLE public.iglesia (
	id_iglesia integer NOT NULL,
	nom_iglesia character varying(50),
	telf_iglesia character(10),
	dirc_iglesia character varying(50),
	CONSTRAINT iglesia_pk PRIMARY KEY (id_iglesia)

);
---------------------------------------------------------------------
insert into iglesia values ('1', 'Basílica Menor de la Virgen de Monserrat', '595-447824', 'Montecristi');
insert into iglesia values ('2', 'Iglesia Divino Niño', '658-144781', 'Manta');
---------------------------------------------------------------------


	CREATE TABLE public.tramite (
		id_tramite integer NOT NULL,
		nom_tramite character varying(15),
		precio_tramite numeric(5,2),
		id_iglesia_iglesia integer NOT NULL,
		max_tramite int,
		CONSTRAINT tramite_pk PRIMARY KEY (id_tramite)
	);
	
---------------------------------------------------------------------
insert into tramite values ('1','Bautismo','50.00','1','1');
insert into tramite values ('2','Comunión','15.00','1','1');
insert into tramite values ('3','Confirma','15.00','1','1');
insert into tramite values ('4','Matrimonio','200.00','1','1');
---------------------------------------------------------------------


CREATE TABLE public.sacerdote (
	id_sacerdote integer NOT NULL,
	cc_sacerdote character(10),
	nom_apell_sacerdote character varying(30),
	genero_sacerdote character(1),
	telf_sacerdote character(10),
	dirc_sacerdote character varying(50),
	id_iglesia_iglesia integer NOT NULL,
	fecha_nacimiento_s date,
	CONSTRAINT sacerdote_pk PRIMARY KEY (id_sacerdote)

);
---------------------------------------------------------------------
insert into sacerdote values ('1','1316360701','Juan Zambrano Garcia','H','0995141801','Aníbal San Andres, Montecristi','1','05/05/1977');
insert into sacerdote values ('2','1316360702','Cesas Bravo Castaño','H','0995141802','Montecristi, Montecristi','1','25/05/1975');
insert into sacerdote values ('3','1316360703','Mario Santana Lopez','M','0995141803','Eloy Alfaro, Montecristi','1','30/06/1974');
---------------------------------------------------------------------


CREATE TABLE public.ceremonia (
	id_ceremonia integer NOT NULL,
	fecha_ceremonia date,
	id_persona_persona1 integer NOT NULL,
	id_sacerdote_sacerdote1 integer NOT NULL,
	asistencia_ceremonia char(2),
	CONSTRAINT ceremonia_pk PRIMARY KEY (id_ceremonia)

);
---------------------------------------------------------------------

-- Bautismos
insert into ceremonia values ('1','07/11/2020','1','1','si');
insert into ceremonia values ('2','07/11/2020','2','2','si');
insert into ceremonia values ('3','17/11/2020','3','3','si');
insert into ceremonia values ('4','18/11/2020','4','1','no');
--Comunión 
insert into ceremonia values ('5','07/11/2020','5','2','si');
insert into ceremonia values ('6','07/11/2020','6','3','no');
insert into ceremonia values ('7','17/11/2020','7','1','si');
insert into ceremonia values ('8','18/11/2020','8','2','si');
--Confirma
insert into ceremonia values ('9','22/11/2020','9','3','si');
insert into ceremonia values ('10','29/11/2020','10','1','si');
insert into ceremonia values ('11','12/12/2020','11','1','no');
insert into ceremonia values ('12','18/12/2020','12','3','si');
--Matrimonio
insert into ceremonia values ('13','22/11/2020','13','3','si');
insert into ceremonia values ('14','12/11/2020','14','2','si');
insert into ceremonia values ('15','12/12/2020','15','1','si');
insert into ceremonia values ('16','18/11/2020','16','1','no');
---------------------------------------------------------------------


CREATE TABLE public.persona (
	id_persona integer NOT NULL,
	cc_persona character(10),
	nom_persona character varying(30),
	apell_persona character varying(30),
	fecha_nacimiento date,
	genero_persona character(1),
	telf_persona character(10),
	dirc_persona character varying(50),
	email_persona character varying(30),
	id_tramite_tramite1 integer NOT NULL,
	fecha_tramite date,
	estado_civil_persona character varying(15),
	CONSTRAINT persona_pk PRIMARY KEY (id_persona)
);
---------------------------------------------------------------------

-- Bautismo
insert into persona values ('1','1316360711','Juan Carlos','Sánchez Mendoza','13/12/2019','H','0954547851',
'Montecristi, Montecristi','sanchezda@gmail.com','1','01/11/2020','Soltero');

insert into persona values ('2','1316360712','Pedro Alexander','Santana Merchan','13/06/2020','H','0954547852',
'La Pila, Montecristi','sanranada@gmail.com','1','1/11/2020','Soltero');

insert into persona values ('3','1316360713','Karen Elizabeth','Perez Zambrano','13/12/2015','M','0954547853',
'LeonidasProaño, Montecristi','perezda@gmail.com','1','10/11/2020','Soltero');

insert into persona values ('4','1316360714','Karla Nicole','Jaramillo Reyes','13/06/2020','M','0954547854',
'Montecristi, Montecristi','jaramilloda@gmail.com','1','11/11/2020','Soltero');

-- Comunión
insert into persona values ('5','1316360715','Santiago Andres','Macias Mera','10/05/2012','H','0954547855',
'Montecristi, Montecristi','maciasda@gmail.com','2','01/11/2020','Soltero');

insert into persona values ('6','1316360716','Victor Manuel','Delgado Castro','15/08/2005','H','0954547856',
'La Pila, Montecristi','delgadoda@gmail.com','1','1/11/2020','Soltero');

insert into persona values ('7','1316360717','Mirella Andrea','Lucas Perez','13/12/2015','M','0954547857',
'LeonidasProaño, Montecristi','lucasda@gmail.com','1','10/11/2020','Soltero');

insert into persona values ('8','1316360718','Dayana Listhe','Villafuerte Mendoza','15/08/2002','M','0954547858',
'Montecristi, Montecristi','villafuerteda@gmail.com','1','11/11/2020','Soltero');

-- Confirma
insert into persona values ('9','1316360719','Elias Martin','Quiros Jimenez','18/01/2002','H','0954547859',
'Montecristi, Montecristi','quirozda@gmail.com','3','15/11/2020','Soltero');

insert into persona values ('10','1316360710','Paul Javier','Toala Medina','18/11/2011','H','0954547810',
'La Pila, Montecristi','toalada@gmail.com','3','21/11/2020','Soltero');

insert into persona values ('11','1316360711','Marcela Andrea','Reyes Manzaba','25/02/2002','M','0954547811',
'LeonidasProaño, Montecristi','reyezda@gmail.com','3','5/12/2020','Soltero');

insert into persona values ('12','1316360712','Listhe Nicole','Alcivar Mendoza','18/09/2004','M','0954547812',
'Montecristi, Montecristi','alcivarda@gmail.com','3','11/12/2020','Soltero');

-- Matrimonio
insert into persona values ('13','1316360713','Martin Eduardo','Gutierrez Mena','25/02/1995','H','0954547851',
'Montecristi, Montecristi','gutierrezda@gmail.com','4','15/11/2020','Soltero');

insert into persona values ('14','1316360714','Javier P','Jaramillo Donoso','18/11/1995','H','0954547814',
'La Pila, Montecristi','jaramilloda@gmail.com','4','5/11/2020','Soltero');

insert into persona values ('15','1316360715','Andrea Camila','Solorzano Manzaba','25/02/1994','M','0954547815',
'LeonidasProaño, Montecristi','solorzanoda@gmail.com','4','5/12/2020','Soltero');

insert into persona values ('16','1316360716','Melisa Nicole','Alcivar Mendoza','18/09/1999','M','0954547816',
'Montecristi, Montecristi','alcivarda@gmail.com','4','11/12/2020','Soltero');
---------------------------------------------------------------------


CREATE TABLE public.familiar_persona (
	id_familiar integer NOT NULL,
	noms_familiar character varying(50),
        estado_civil_familiar character varying(15),
	parentesco_familiar character varying(15),
	nom_padrinos character varying(50),
	estado_civil_padrinos character varying(15),
	id_persona_persona1 integer NOT NULL,
	nom_pareja character varying(50),
	CONSTRAINT familiar_persona_pk PRIMARY KEY (id_familiar)

);
---------------------------------------------------------------------

-- Bautismo
insert into familiar_persona values ('1','Carlos Sánchez & Carmen Mendoza','Casados','Padres','Carlos Alonso & Maria Ester','Casados','1','null');
insert into familiar_persona values ('2','Jose Santana & Maira Merchan','Casados','Padres','Andres Mendez & Sofia ALcivar','Solteros','2','null');
insert into familiar_persona values ('3','Andres Perez & Monica Zambrano','Casados','Padres','Armando Fernandez & Monica Juarez','Solteros','3','null');
insert into familiar_persona values ('4','Luis Jaramillo & Lorena Reyes','Casados','Padres','Antoni Jimenes & Elisabeh Tuarez','Casados','4','null');
--Comunión
insert into familiar_persona values ('5','Santiago Macias & Fernanda Mera','Casados','Padres','Juan Castro & Guadalupe Mero','Casados','5','null');
insert into familiar_persona values ('6','Mario Delgado & Marcela Castro','Divorciados','Padres','Miguel Quijano & Sofia Bazurto','Solteros','6','null');
insert into familiar_persona values ('7','Julio Lucas & Lila Perez','Divorciados','Padres','Dilan Fernandez & Monica Mina','Casados','7','null');
insert into familiar_persona values ('8','Luis Villafuerte(+) & Lorena Mendoza','Viudo','Padres','Julio Bazuto & Elisabeh Valanzuela','Casados','8','null');
--Confirma
insert into familiar_persona values ('9','Vanessa Jimenez','Casados','Otros','Carlos Alonso','','9','null');
insert into familiar_persona values ('10','Mauricio Toala & Nicol Medina','Casados','Padres','Cristian Salcedo & Kerly Leon','Solteros','10','null');
insert into familiar_persona values ('11','Keila Barcia','Casados','Otros','Sofia ALcivar','','11','null');
insert into familiar_persona values ('12','Luis Alcivar(+) & Mariana Mendoza','Viudo','Padres','Kevin Jimenez & Michelle Quiroz','Solteros','12','null');
-- Matrimonio
insert into familiar_persona values ('13','Eduardo Gutierres & Martha Mena','Casados','Padres','Mario Alonso & Julieta Ester','Casados','13','Vanessa Jimenez');
insert into familiar_persona values ('14','Javier Jaramillo & Paula Donoso(+)','Viudo','Padres','Karl Mendez & Luisa Mero','Casados','14','Julieta Medina');
insert into familiar_persona values ('15','Andres Solorzano & Marisol MAnzaba','Divorciados','Padres','Hernan Fernandez & Gema Juarez','Casados','15','Julio Reyez');
insert into familiar_persona values ('16','Medardo Alcivar & Katerine Mendoza','Casados','Padres','Joel Jimenes & ELsa Tuarez','Casados','16','Luis Alcivar');
---------------------------------------------------------------------


---------------------------------------------------------------------
-- Constraint
ALTER TABLE public.tramite ADD CONSTRAINT iglesia_fk FOREIGN KEY (id_iglesia_iglesia)
REFERENCES public.iglesia (id_iglesia) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE public.sacerdote ADD CONSTRAINT iglesia_fk FOREIGN KEY (id_iglesia_iglesia)
REFERENCES public.iglesia (id_iglesia) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE public.persona ADD CONSTRAINT tramite_fk FOREIGN KEY (id_tramite_tramite1)
REFERENCES public.tramite (id_tramite) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE public.ceremonia ADD CONSTRAINT persona_fk FOREIGN KEY (id_persona_persona1)
REFERENCES public.persona (id_persona) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE public.ceremonia ADD CONSTRAINT sacerdote_fk FOREIGN KEY (id_sacerdote_sacerdote1)
REFERENCES public.sacerdote (id_sacerdote) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE public.familiar_persona ADD CONSTRAINT persona_fk FOREIGN KEY (id_persona_persona1)
REFERENCES public.persona (id_persona) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
---------------------------------------------------------------------



--				CONSULTAS		


/*	Realizar un Trigger que no permita a una persona realizar más de un trámite del mismo tipo.	*/

	create or replace function control_tramite() 
		returns trigger as $control_tramite$
			declare
				contador_tramite int;
				tramite_limite int;
		begin 
		select count(*) into contador_tramite 
			from persona where (id_tramite_tramite1 = new.id_tramite_tramite1) 
				and (cc_persona = new.cc_persona);
		select max_tramite into tramite_limite from tramite;
			if (contador_tramite >= tramite_limite) then
				raise exception 'La persona que desea registrar ya ha realizado este tramite'; 
			end if; 
	   return new;
	end;
	$control_tramite$ language plpgsql;
	/* si se cumple el bloquer anterio se crear el trigger y se realiza la inserción de datos */
	create trigger control_tramite before insert 
		on persona for each row
		execute procedure control_tramite();
		
		
		
/*	Procedimiento almacenado que permita mostrar el total de ingresos monetarios generados por todos los trámites del tipo boda.	*/
	create or replace function ingresos_de_tramites()
		returns numeric(6,3) 
			as $ingresos_total_de_tramites$
			
		select sum(precio_tramite) from tramite, persona
		
				$ingresos_total_de_tramites$
	language sql;
	
	select ingresos_de_tramites();
	
/*	Reporte que en base al total de trámites realizados en la iglesia muestre de froma grafica todos los tramites realizados
	y que los clasifique en dos: Si-> para las personas que solicitaron un tramite y si asistieron a la ceremonia, o No->para 
	las personas que solocitaron el	tramite pero no se presentaron a la ceremonia respectiva.	*/
	SELECT
	     iglesia.id_iglesia,
	     iglesia.nom_iglesia,
	     iglesia.telf_iglesia,
	     iglesia.dirc_iglesia,
	     tramite.id_tramite,
	     tramite.nom_tramite,
	     persona.fecha_tramite,
	     ceremonia.asistencia_ceremonia AS asistencia
	FROM tramite 
		INNER JOIN iglesia ON 
			tramite.id_iglesia_iglesia = iglesia.id_iglesia
		INNER JOIN persona ON 
			tramite.id_tramite = persona.id_tramite_tramite1
		INNER JOIN ceremonia ON 
			persona.id_persona = ceremonia.id_persona_persona1
	ORDER BY
	     fecha_tramite ASC;
	


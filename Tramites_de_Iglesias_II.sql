





/*	Realizar un Trigger que no permita a una persona realizar más de un trámite del mismo tipo. */
create or replace function control_tramite() 
	returns trigger as $control_tramite$
  		declare
  			contador_tramite int;
  			tramite_limite int;
  	begin 
   	select count(*) into contador_tramite 
		from persona where id_tramite_tramite1 = new.id_tramite_tramite1;
   	select max_tramite into tramite_limite from tramite;
	
   		if (contador_tramite >= tramite_limite) then
   			raise exception 'la persona ya ha realizado este tramite'; 
		end if; 
   return new;
end;
$control_tramite$ language plpgsql;

/* si se cumple el bloquer anterio crear trigger y se realiza la inserción de datos */
create trigger control_tramite before insert 
    on persona for each row
    execute procedure control_tramite();

use class1
create procedure fetch_dataa
@id int=null,
@event varchar(max)=null,
@last_name varchar(50)=null,
@salary varchar(50)=null,
@job_id varchar(50)=null
as
begin
if  @event='select'
	begin
	select* from employeees
	end
else if  @event='delete'
	begin
	delete from employeees where id=@id 
	select *from employeees
	end
else if  @event='update'
	begin
	update employeees set last_name=@last_name,salary=@salary,job_id=@job_id where id=@id
	select * from employeees
	end
else if  @event='insert'
	begin
	insert into employeees (last_name,salary,job_id) values(@last_name,@salary,@job_id) 
	select *from employeees
	end
	end
exec fetch_dataa @event='insert',@last_name='aniq',@salary=9743,@job_id=93
exec fetch_dataa @event='delete',@id=4
exec fetch_dataa @event='update',@last_name='aneeq',@salary=9789,@job_id=94,@id=5
exec fetch_dataa @event='select'
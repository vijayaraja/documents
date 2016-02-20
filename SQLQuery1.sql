create  trigger tr_adr_employees on t_adr_employees after INSERT,UPDATE,DELETE
as
begin
select concat('print no of column affected -> ' , @@ROWCOUNT )
set nocount off
set ansi_padding off

	select concat('print no of column affected -> ' , @@ROWCOUNT )
end

delete from employees

select	*	from employees
insert into employees values(+'raja')
insert into employees values(NULL)

create table employees (id int identity, name varchar(100))

SET ANSI_NULLS  Off
select	*
from	employees
where	name = null

select @@OPTIONS

DECLARE @ANSI_NULLS VARCHAR(3) = 'OFF';
IF ( (32 & @@OPTIONS) = 32 ) SET @ANSI_NULLS = 'ON';
SELECT @ANSI_NULLS AS ANSI_NULLS;
use quiz;

##show tables;

# 4. 

DELIMITER //
#drop trigger if exists Q4_before_update_trigger;
create trigger Q4_before_update_trigger before update on orders
for each row
begin
declare msg varchar(128);
if (old.status = "shipped") then
set msg = "The Order is already on its way!";
signal sqlstate '45000' set message_text = msg;
end if;
end;
//

# 5.

DELIMITER ??
#drop trigger if exists Q5_after_delete_trigger;
create trigger Q5_after_delete_trigger after delete on orders
for each row
begin
	insert into cancelledorders values (old.orderid, old.name, old.email, current_timestamp());
end

??
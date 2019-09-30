CREATE OR REPLACE TRIGGER add_amount
before INSERT OR UPDATE on shipping
FOR EACH ROW
declare
s_date shipping.shipping_date%type;
s_c_id SHIPPING.CUSTOMER_ID%type;

begin
s_date:= trunc(sysdate())-1;
s_c_id:= :new.customer_id;
:new.amount := customer_amount(s_date, s_c_id);
end;
/

show error;
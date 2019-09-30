set serveroutput on
declare
amount shipping.amount%type;

begin
amount:=customer_amount('09-Apr-18',3005);
dbms_output.put_line(amount);
end;
CREATE OR REPLACE TRIGGER check_before_insert_products
before insert on products
for each row
declare
supplier_availability Suppliers.status%type;

begin
select status into supplier_availability from Suppliers where supplier_id = :new.supplier_id;

if(supplier_availability = 'n')
then
RAISE_APPLICATION_ERROR(-20000,'Supplier not available');
end if;

end;
/
CREATE OR REPLACE
PROCEDURE delete_supplier
(supplier_id_to_delete IN suppliers.supplier_id%type)
AS
availability char;
BEGIN
select status into availability from suppliers where supplier_id=supplier_id_to_delete;
if(availability ='y')
then
update suppliers
set status='n'
where supplier_id=supplier_id_to_delete;
else
RAISE_APPLICATION_ERROR(-20000,'Supplier already does not exist');
end if;
END;
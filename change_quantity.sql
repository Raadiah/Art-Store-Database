CREATE OR REPLACE TRIGGER change_quantity
before insert or update on c_order
for each row
declare
amount PRODUCTS.QUANTITY%type;

begin
select quantity into amount from products where product_id = :new.product_id;
amount := amount - :new.quantity;

if(amount >= 0)
then 
update products
set quantity = amount
where product_id = :new.product_id;
else
RAISE_APPLICATION_ERROR(-20000,'Not enough available');
end if;

end;
/
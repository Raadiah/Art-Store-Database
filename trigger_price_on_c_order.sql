CREATE OR REPLACE TRIGGER price_on_c_order
before insert on c_order
for each row
declare
total_price PRODUCTS.PRICE%type;

begin
select price into total_price from products where product_id = :new.product_id;

:new.total_price := total_price * :new.quantity;

end;
/
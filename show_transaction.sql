CREATE OR REPLACE 
PROCEDURE show_transaction 
(
start_date IN DATE,
end_date IN DATE
)
AS
   CURSOR transaction_by_date
   IS
      SELECT *
        FROM c_order natural join customer natural join shipping where (order_date>=start_date) and (order_date<=end_date) order by order_date desc;
BEGIN
    if(start_date<=end_date)
    then
    DBMS_OUTPUT.PUT_LINE('c_id     o_id      p_id    price    o_date          s_date      track_id    city    amount');
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------');
   FOR transc 
   IN transaction_by_date
   LOOP
      DBMS_OUTPUT.put_line (
         transc.customer_id ||'     '|| transc.order_id ||'      '|| transc.product_id ||'      '|| transc.total_price ||'      '||transc. order_date ||'       '||transc.shipping_date ||'     '|| transc.track_id||'       '||transc.city'       '||transc.amount);
   END LOOP;
   else
   RAISE_APPLICATION_ERROR(-20000,'Date entry not correct');
   end if;
END;
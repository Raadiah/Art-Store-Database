CREATE OR REPLACE FUNCTION customer_amount(order_date_given IN DATE, customer_id_given IN NUMBER) 
   RETURN INT
   IS amount INT:=0;
   BEGIN 
       select sum(total_price) into amount from c_order where order_date = order_date_given and customer_id = customer_id_given;
       return amount;
    END;/
    show error;
    
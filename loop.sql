SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE getinfo IS 
   cnt        customer.customer_id%TYPE;
   cname      customer.first_name%TYPE;
   cname2      customer.last_name%TYPE;
   phone       customer.phone_number%TYPE;
  
BEGIN

   FOR cnt IN 3001..3008
   LOOP

      SELECT first_name, last_name, phone_number 
      INTO cname, cname2, phone
      FROM customer
      WHERE
      customer_id = cnt;

      DBMS_OUTPUT.PUT_LINE ('Record ' || cnt);
      DBMS_OUTPUT.PUT_LINE ('Name: ' || cname ||' '|| cname2);
      DBMS_OUTPUT.PUT_LINE ('Phone: ' || phone);
      DBMS_OUTPUT.PUT_LINE ('-----------');
      
   END LOOP;

   EXCEPTION
      WHEN others THEN
         DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;

SHOW ERRORS;


BEGIN
   getinfo;
END;

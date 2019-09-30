SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE alter_availability(
    p_id IN products.product_id%TYPE,
    p_availability IN products.availability%type) IS

BEGIN
    UPDATE products
        SET availability = p_availability 
        WHERE PRODUCT_ID= p_id;
        dbms_OUTPUT.PUT_LINE('Availability altered');
   COMMIT;
END;


BEGIN
    alter_availability (2001, 'N');
END;
set serveroutput on
declare
    f utl_file.file_type;
    cursor c is select * from shipping;
   
begin
    f:= utl_file.fopen('DATABASE', 'billing.txt', 'w');
        utl_file.put(f,'Courrier Service'||','|| 'Shipping Date'||','|| 'Customer Id'|| ','||'Track Id'||','||'Amount');
    utl_file.new_line(f);
    for shipping_record in c
     loop
      utl_file.put(f,shipping_record.COURRIER_SERVICE||','|| shipping_record.SHIPPING_DATE||','||shipping_record.CUSTOMER_ID||','||shipping_record.TRACK_ID||','||shipping_record.AMOUNT);
      utl_file.new_line(f);
      end loop;
      
    
 utl_file.fclose(f);
 end;
 /
 

 
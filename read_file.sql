set serveroutput on
declare
    f utl_file.file_type;
    line varchar(1000);
    s_email suppliers.email%type;
    s_supplier_name suppliers.SUPPLIER_NAME%type;
    s_status suppliers.status%type;
    s_supplier_id suppliers.supplier_id%type;
    s_phone_number SUPPLIERS.PHONE_NUMBER%type;
    
begin
    f :=utl_file.fopen('DATABASE', 'supplier.csv', 'r');
    if utl_file.is_open(f) then 
        utl_file.get_line(f, line, 1000);
            loop begin
            utl_file.get_line(f, line, 1000);
            if line is null then exit;
            end if;
            s_email:=regexp_substr(line, '[^,]+',1,1);
            s_supplier_name:=regexp_substr(line, '[^,]+',1,2);
            s_status:=regexp_substr(line, '[^,]+',1,3);
            s_supplier_id:=regexp_substr(line, '[^,]+',1,4);
            s_phone_number:=regexp_substr(line, '[^,]+',1,5);
            insert into suppliers (email,supplier_name, status, supplier_id,  phone_number) values (s_email, s_supplier_name, s_status, s_supplier_id, s_phone_number);
            commit;
            --dbms_output.put_line(line);
            exception when no_data_found then exit;
            end;
            end loop;
    end if;
   
    utl_file.fclose(f);
   end;
    /
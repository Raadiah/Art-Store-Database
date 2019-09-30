insert into suppliers (supplier_id, supplier_name, phone_number, email) values (1001, 'AK Traders', 017123456789, 'aktraders@gmail.com');
insert into suppliers (supplier_id, supplier_name, phone_number, email) values (1002, 'Karukarjo', 017234567890, 'kary@gmail.com');
insert into suppliers (supplier_id, supplier_name, phone_number)        values (1003, 'Shahin Art Store', 017345678901);
insert into suppliers (supplier_id, supplier_name, phone_number, email) values (1004, 'Art Mart', 017456789012, 'artmart@gmail.com');
insert into suppliers (supplier_id, supplier_name, phone_number, email) values (1005, 'Charcoal', 017567890123, 'charcoal@ymail.com');


insert into products  (product_id, Category, price, name, supplier_id, availability) values (2001, 'Water Colour' ,350, 'Water Colour 12pcs', 1001, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2002, 'Water Colour', 620, 'Water Colour 24pcs', 1002, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2003, 'Poster Colour', 410, 'Poster Colour', 1001, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2004, 'Brush Set', 210, 'Brush Set 8pcs', 1002, 'N');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2005, 'Canvas', 300, '8 x 12 inches canvas', 1005, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2006, 'Pencil Set', 120, 'Faber Castel Pencil Set', 1003, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2007, 'Powder Colour', 240, 'Powder Colour Set', 1001, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2008, 'Paper Set', 80, '10 pcs Paper Set', 1001, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2009, 'Palette', 40, 'Palette', 1004, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2010, 'Easel', 180, 'Easel', 1005, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2011, 'Oil Colour', 800, 'Oil Colour Set', 1003, 'N');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2012, 'Poster Colour', 410, 'Poster Colour', 1003, 'Y');
insert into products  (product_id, Category, price, name, supplier_id, availability) values (2013, 'Brush Set', 300, 'Squirrel Brush Set 8pcs', 1002, 'N');


insert into Customer  (customer_id, First_name, Last_name, phone_number, city, zip, street) values (3001, 'Aparajita', 'Dola', 01789108108, 'Dhaka', 1205, 4);
insert into Customer  (customer_id, First_name, Last_name, phone_number, city, zip, street) values (3002, 'Tahmina', 'Rahman', 01789111111, 'Rajshahi', 6290, 5);
insert into Customer  (customer_id, First_name, Last_name, phone_number, city, zip, street) values (3003, 'Ishrat', 'Jahan', 01789242424, 'Dhaka', 1206, 3);
insert into Customer  (customer_id, First_name, Last_name, phone_number, city, zip, street) values (3004, 'Towhidul', 'Islam', 01621345673, 'Dhaka', 1200, 7);
insert into Customer  (customer_id, First_name, Last_name, phone_number, city, zip, street) values (3005, 'Sourav', 'Chowdhury', 01521215441, 'Jhinaidah', 1567, 3);
insert into Customer  (customer_id, First_name, phone_number, city) values (3006, 'Rodela', 01911111112, 'Dhaka');
insert into Customer  (customer_id, First_name, phone_number, city, zip, street) values (3007, 'Jannat', 01783425731, 'Dhaka', 1208, 6);
insert into Customer  (customer_id, First_name, phone_number, city) values (3008, 'Priyonto', 01612345678, 'Rajshahi');


insert into c_order   (order_date, order_id, customer_id, product_id) values ('31/Mar/2018', 4001, 3001, 2001);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('01/Apr/2018', 4002, 3005, 2009);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('01/Apr/2018', 4003, 3001, 2005);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('02/Apr/2018', 4004, 3002, 2006);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('03/Apr/2018', 4005, 3004, 2005);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('03/Apr/2018', 4006, 3006, 2007);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('04/Apr/2018', 4007, 3008, 2003);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('05/Apr/2018', 4008, 3003, 2003);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('06/Apr/2018', 4009, 3007, 2008);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('06/Apr/2018', 4010, 3007, 2009);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('06/Apr/2018', 4011, 3007, 2012);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('07/Apr/2018', 4012, 3004, 2003);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('08/Apr/2018', 4013, 3003, 2012);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('09/Apr/2018', 4014, 3005, 2009);
insert into c_order   (order_date, order_id, customer_id, product_id) values ('09/Apr/2018', 4015, 3008, 2002);


insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('Sundarban Courrier', '01/Apr/2018', 3001, 5001);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '02/Apr/2018', 3005, 5002);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('Sundarban Courrier', '02/Apr/2018', 3001, 5003);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '03/Apr/2018', 3002, 5004);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '04/Apr/2018', 3004, 5005);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('Sundarban Courrier', '04/Apr/2018', 3006, 5006);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('Sundarban Courrier', '05/Apr/2018', 3008, 5007);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('Sundarban Courrier', '06/Apr/2018', 3003, 5008);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '07/Apr/2018', 3007, 5009);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '08/Apr/2018', 3004, 5010);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '09/Apr/2018', 3003, 5011);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '10/Apr/2018', 3005, 5012);
insert into Shipping  (courrier_service, shipping_date, customer_id, track_id) values ('SA Courrier', '10/Apr/2018', 3008, 5013);


commit;
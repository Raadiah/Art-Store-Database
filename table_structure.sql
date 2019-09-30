create table suppliers(
	supplier_id        number,
	supplier_name      varchar(20)       unique        not null,
	phone_number       number            unique        not null,
	email              varchar(30)       unique,
	primary key (supplier_id)
);

create table products(
	product_id         number             not null,
	name               varchar(50)        not null,
	Category           varchar(20),
	price              number             not null,
	supplier_id        number             not null,
	availability       varchar(1)         not null,
	primary key (product_id),
	foreign key (supplier_id) references suppliers(supplier_id)
);

create table Customer(
	customer_id        number             not null,
	First_name         varchar(15)        not null,
	Last_name          varchar(15),
	phone_number       number             unique        not null,
	city               varchar(10)        not null,
	zip                number,
	street             number,
	primary key (customer_id)
);

create table c_order(
	order_date         date               not null,
	order_id           number,
	customer_id        number             not null,
	product_id         number             not null,
	primary key (order_id),
	foreign key (customer_id) references Customer(customer_id),
	foreign key (product_id) references products(product_id)
);

create table Shipping(
	courrier_service  varchar(20)        not null,
	shipping_date     date               not null,
	customer_id       number             not null,
	track_id          number,
	primary key (track_id),
	foreign key (customer_id) references Customer(customer_id)
);



commit;
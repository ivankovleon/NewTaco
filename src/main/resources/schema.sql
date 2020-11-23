create table if not exists Ingredient (
    id varchar(4) primary key not null,
    name varchar(25) not null,
    type varchar(10) not null
);
create table if not exists Taco (
    id bigint primary key not null,
    name varchar(50) not null,
    createdAt timestamp not null
);
create table if not exists Taco_Ingredients (
    taco bigint not null,
    ingredient varchar(4) not null
);
alter table Taco_Ingredients
    add foreign key (taco_id) references Taco(id);
alter table Taco_Ingredients
    add foreign key (ingredients_id) references Ingredient(id);
create table if not exists Taco_Order (
    id bigint primary key not null,
    deliveryName varchar(50) not null,
    deliveryStreet varchar(50) not null,
    deliveryCity varchar(50) not null,
    deliveryState varchar(2) not null,
    deliveryZip varchar(10) not null,
    ccNumber varchar(16) not null,
    ccExpiration varchar(5) not null,
    ccCVV varchar(3) not null,
    placedAt timestamp not null
);
create table if not exists Taco_Order_Tacos (
    tacoOrder bigint not null,
    taco bigint not null
);
alter table Taco_Order_Tacos
    add foreign key (order_id) references Taco_Order(id);
alter table Taco_Order_Tacos
    add foreign key (tacos_id) references Taco(id);

create table if not exists User
(
    id          bigint primary key not null,
    username    varchar(50)        not null,
    password    varchar(50)        not null,
    fullname    varchar(50)        not null,
    street      varchar(10)        not null,
    city        varchar(10)        not null,
    state       varchar(10)        not null,
    zip         varchar(10)        not null,
    phoneNumber varchar(10)        not null
);
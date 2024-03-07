create table category (id bigint not null, created_at datetime(6), updated_at datetime(6), name varchar(255), primary key (id)) engine=InnoDB;
create table jt_instructor (specialization varchar(255), user_id bigint not null, primary key (user_id)) engine=InnoDB;
create table jt_mentor (avg_rating float(23), company varchar(255), user_id bigint not null, primary key (user_id)) engine=InnoDB;
create table jt_user (id bigint not null, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB;
create table ms_instructor (id bigint not null, email varchar(255), name varchar(255), password varchar(255), specialisization varchar(255), primary key (id)) engine=InnoDB;
create table ms_mentor (id bigint not null, email varchar(255), name varchar(255), password varchar(255), avg_rating float(23), company varchar(255), primary key (id)) engine=InnoDB;
create table product (id bigint not null, created_at datetime(6), updated_at datetime(6), description varchar(255), image varchar(255), name varchar(255), price integer not null, category_id bigint, primary key (id)) engine=InnoDB;
create table st_user (user_type integer not null, id bigint not null, email varchar(255), name varchar(255), password varchar(255), company varchar(255), specialization varchar(255), avg_rating float(23), primary key (id)) engine=InnoDB;
create table tpc_instructor (id bigint not null, email varchar(255), name varchar(255), password varchar(255), specialization varchar(255), primary key (id)) engine=InnoDB;
create table tpc_mentor (id bigint not null, email varchar(255), name varchar(255), password varchar(255), avg_rating float(23), company varchar(255), primary key (id)) engine=InnoDB;
create table tpc_user (id bigint not null, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB;
alter table jt_instructor add constraint FK4od6mbg1v99qri5dtqreaayou foreign key (user_id) references jt_user (id);
alter table jt_mentor add constraint FK74kd6ct4a7jq51dr84f8m7usr foreign key (user_id) references jt_user (id);
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id);

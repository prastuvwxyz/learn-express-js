create table if not exists students(
	id bigserial primary key,
	name text not null,
	age int not null default 0,
	grade text not null,
	birthplace text not null,
	birthday text not null,
	religion text not null,
	emergency_contact text
);
CREATE TABLE geometries 
(
	fid serial PRIMARY KEY,
	name VARCHAR(30) NULL,
	geom geometry not null
);

select ST_GeometryType(geom) from geometries;

select * from geometries

CREATE TABLE toponimii
(
	fid serial primary key,
	nume varchar(50) not null,
	geom geometry(Point,4326)

);

select ST_GeometryType(geom) from toponimii

CREATE TABLE ax_drum
(
	fid serial PRIMARY KEY,
	indicativ VARCHAR(10) NULL,
	lungime decimal null,
	geom geometry(Linestring,4326)
);

select ST_GeometryType(geom) from ax_drum

CREATE TABLE constructii
(
	fid serial PRIMARY KEY,
	nume varchar(50) null,
	nr_postal VARCHAR(10) NULL,
	suprafata_sol decimal null,
	geom geometry(Polygon,4326)
);

select ST_GeometryType(geom) from constructii

create table stalpi
(
	fid serial primary key,
	nr_inventar varchar(50)not null,
	geom geometry(MultiPoint,4326)

);

select * from stalpi

select ST_GeometryType(geom) from stalpi

select ST_AsText(geom) from stalpi;

CREATE TABLE retea_electrica
(
	fid serial PRIMARY KEY,
	voltaj VARCHAR(10) NULL,
	lungime decimal null,
	geom geometry(MultiLinestring,4326)
);

select * from retea_electrica

select ST_GeometryType(geom) from retea_electrica

CREATE TABLE drumuri
(
	fid serial PRIMARY KEY,
	indicativ VARCHAR(10) NULL,
	area decimal null,
	geom geometry(MultiPolygon,4326)
);

select * from drumuri
 
select ST_GeometryType(geom) from drumuri
 
CREATE TABLE poduri
(
	fid serial PRIMARY KEY,
	nr_postal varchar(10),
	geom geometry(GeometryCollection,4326)
);

select ST_Points(geom) geom from retea_electrica
union
select geom from retea_electrica
union 
Select ST_Centroid(geom) geom from retea_electrica;



'''
create table centroid_judete AS
select ST_Centroid(geom) from judete;

create table centroid_uat AS
select ST_Centroid(geom) from uat;

create table regiuni as
select region, ST_Union(geom) from judete
group by region

create table centroidas
select region, ST_Centroid(st_union) as geom from regiuni

alter table regiuni add column area DECIMAL;
update regiuni set area=ST_Area(geom)/10000;

alter table judete add column area DECIMAL;
update judete set are=ST_Area(geom)/10000;

alter table romania add column perimetrul DECIMAL;
update romania set perimetrul=ST_Perimeter(geom)/1000;

select perimetrul from romania

create table judete_linii as
select ST_MakePolygon(geom) as geom from judete_linii;

create table judete_linii as
select ST_Polygonize(geom) as geom from judete_linii;
'''
create table judete_linii as
select ST_Dump(ST_Polygonize(geom)) as geom from judete_linii;




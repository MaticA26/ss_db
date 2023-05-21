---create table regiuni_2 as
---select region, Count(*) nr_judete,ST_Union(geom) geom from judete group by region;


---alter table judete add column area DECIMAL;

---update judete set area=ST_Area(geom)/10000;

---select * from judete;


---select MIN(pop2011), MAX(pop2011), SUM(pop2011) from judete where region='Centru';

---select region, SUM(pop2011) populatie_2011, ST_Union(geom) geom from judete group by region;

select mnemonic, Min(pop2011) populatie_2011, ST_Union(geom) geom from judete group by mnemonic;
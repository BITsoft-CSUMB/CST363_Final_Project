set echo off
set verify off
set heading on
set feedback off


prompt ----------------------------------------------;
prompt |------  Water quality alert system   -------|;     
prompt ----------------------------------------------;


prompt;
prompt  ----------------------------------------------;
prompt  |           Temperature alerts               |;
prompt  ----------------------------------------------;

select * from
	(select tank_log.location_id as "Tank", 
   		    tank_log.read_date as "Date", 
          TO_CHAR(tank_log.temperature,'FM99999990.90') as "Degrees(f)",
          SUBSTR(product.name, 0, 10) as "Contents" 
   from tank_log,
        inventory_location,
        product
	 where inventory_location.location_id = tank_log.location_id
   	and  inventory_location.product_id  = product.product_id 
    and tank_log.temperature > 84
    or tank_log.temperature < 70
	 order by READ_DATE desc)
where ROWNUM <= 5;


prompt;
prompt  ----------------------------------------------;
prompt  |             pH alerts                      |;
prompt  ----------------------------------------------;

select * from
	(select tank_log.location_id as "Tank", 
   		    tank_log.read_date as "Date", 
          TO_CHAR(tank_log.ph,'FM99999990.90') as "pH",
          SUBSTR(product.name, 0, 10) as "Contents" 
   from tank_log,
        inventory_location,
        product
   where  inventory_location.location_id = tank_log.location_id
      and inventory_location.product_id  = product.product_id 
      and ph > 7
	    or  ph < 4
	 order by READ_DATE desc)
where ROWNUM <= 5;


prompt;
prompt  ----------------------------------------------;
prompt  |             Ammonia alerts                 |;
prompt  ----------------------------------------------;

select * from
	(select tank_log.location_id as "Tank", 
   		    tank_log.read_date as "Date", 
          TO_CHAR(tank_log.ammonia,'FM99999990.90') as "Ammonia(ppm)",
          SUBSTR(product.name, 0, 10) as "Contents" 
   from tank_log,
        inventory_location,
        product
	 where inventory_location.location_id = tank_log.location_id
   	and inventory_location.product_id = product.product_id 
   	and ammonia > 0.1
	 order by READ_DATE desc)
where ROWNUM <= 5;


prompt;
prompt  ----------------------------------------------;
prompt  |             Nitrite alerts                 |;
prompt  ----------------------------------------------;
select * from
	(select tank_log.location_id as "Tank", 
   		    tank_log.read_date as "Date", 
          TO_CHAR(tank_log.nitrite,'FM99999990.90') as "Nitrite(ppm)",
          SUBSTR(product.name, 0, 10) as "Contents" 
   from tank_log,
        inventory_location,
        product
	 where nitrite > 0.1
   and inventory_location.location_id = tank_log.location_id
   and inventory_location.product_id = product.product_id 
	 order by READ_DATE desc)
where ROWNUM <= 5;


prompt;
prompt  ----------------------------------------------;
prompt  |              Nitrate alerts                |;
prompt  ----------------------------------------------;

select * from
	(select tank_log.location_id as "Tank", 
   		    tank_log.read_date as "Date", 
          TO_CHAR(tank_log.nitrate,'FM99999990.90') as "Nitrate(ppm)",
          SUBSTR(product.name,0,10) as "Contents" 
   from tank_log,
        inventory_location,
        product
	 where nitrate > 10
   and inventory_location.location_id = tank_log.location_id
   and inventory_location.product_id = product.product_id 
	 order by READ_DATE desc)
where ROWNUM <= 5;
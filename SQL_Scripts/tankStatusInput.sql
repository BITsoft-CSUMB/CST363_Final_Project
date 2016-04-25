set echo off
set verify off
set heading on
set feedback off

prompt Water quality data input;
accept _tankID prompt 'Please enter the tank ID:';

-- If the tank doesn't exist we should ask if they are sure they want to make a new tank --

accept _temp prompt 'Enter water temperature(deg f): ';
accept _ph prompt 'Enter water pH: ';
accept _ammonia prompt 'Enter ammonia (ppm): ';
accept _nitrate prompt 'Enter nitrate (ppm): ';
accept _nitrite prompt 'Enter nitrite (ppm): ';

define insertTime = SYSDATE;
insert into tank_log values ('&_tankID', &insertTime, '&_temp', '&_ph', '&_nitrate', '&_nitrite', '&_ammonia');
prompt ;
prompt -----------------------------------;
prompt The following record has been added:;
select * from tank_log
where location_id = '&_tankID'
and read_date = &insertTime;


-- how can we go back to main menu? '@queryFishStore.sql'



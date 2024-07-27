
  create or replace   view AIRBNB.DEV.src_hosts
  
   as (
    with RAW_HOSTS as (
    select * from AIRBNB.raw.raw_hosts
)
select id as host_id,name as host_name,is_superhost,created_at,updated_at from raw_hosts
  );


-- query dasar select 
select * from departments;
select * from job_history;

-- query select menggunakan alias 
select department_id AS dep_id, 
        department_name AS dep_nama,
        location_id AS "Kode Lokasi"
        from departments;
        
select dep.department_id AS dep_id, 
        dep.department_name dep_nama,
        dep.manager_id AS man_id
        from departments dep;

-- query aritmatika dan date 
select (2 + 2)   as tambah,
       (2 - 2)   as kurang,
       (2 * 2)   as kali,
       (2 / 2)   as bagi
from dual;

select
        employee_id,
        first_name,
            salary as "gaji sebulan",
            salary * 12 as "gaji setahun",
            salary * commission_pct as "jumlah komisi"
from EMPLOYEES;

select current_date                          as hari_ini,
       current_date - 2                      as lusa,
       current_date + 1                      as besok,
       date '2020-03-30' - date '2020-03-15' as jumlah_hari --tanggal tidak bisa ditambah 
from DUAL;


-- query concatenation 
select employee_id as id,
        first_name || '  ' || last_name as "Nama Lengkap",
        email || ', ' || first_name || ' ' || last_name as "Full"
from employees;


-- Coalesce
select first_name      as name,
    commission_pct  as komisi_persen,
    salary          as gaji_sebulan
from employees;

select first_name                                   as name, 
    commission_pct                                  as coalesce_not_null,
    COALESCE(commission_pct,0)                      as komisi_persen, 
    salary                                          as gaji_sebulan,
    salary + (salary * COALESCE(commission_pct,0))  as gaji_net
from employees;

-- Menghilangkan nilai redundansi dengan klausa Distinct
select job_id from employees; -- data yang redundansi

select distinct job_id from employees;
select distinct job_id, salary from employees;



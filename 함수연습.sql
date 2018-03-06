-- 함수
select ucase('Seoul'), upper('seoul');
select lcase('Seoul'), lower('SEOUL');

SELECT SUBSTRING('Happy Day',3,2);

SELECT concat( first_name, ' ', last_name ) AS 이름,
       hire_date AS 입사일
  FROM employees
 WHERE substring( hire_date, 1, 4) = '1986';
 
select LPAD('hi', 10, '*');
select RPAD('hi', 10, '*');

SELECT emp_no, LPAD( cast(salary as char), 10, '*')      
  FROM salaries     
 WHERE from_date like '2001-%'       
   AND salary < 70000;

select LTRIM('  hello  '), RTRIM('  hello  '), 
       concat( '----', TRIM('  hello  '), '----');
  
  
 SELECT emp_no, 
        TRIM(leading '*' from LPAD( cast(salary as char), 10, '*'))
  FROM salaries      
 WHERE from_date like '2001-%'          
   AND salary < 70000;
   
select abs(10), abs(-10);

SELECT MOD(234,10), 253 % 7, MOD(29,9); 

select curtime(), current_time;
select curdate(), current_date;
select now(), sysdate();   
      
select first_name, date_format(hire_date, '%Y-%m-%d %h:%i:%s')
  from employees;

select date_format(now(), '%Y-%m-%d %h:%i:%s');

-- 각 직원들에 대해 직원이름과 근무개월수 출력
select first_name, 
       period_diff(date_format(CURDATE(), '%Y%m'),
                   date_format(hire_date, '%Y%m'))
  from employees;

-- 각 직원들은 입사 후 6개월이 지나면 근무평가를 한다. 각직원들에 
-- 이름, 입사일, 최초 근무평가일은 언제인지 출력
select first_name, 
       hire_date,
       date_add(hire_date, interval 6 month)
  from employees;

select concat('----', cast(now() as char), '----');

-- salaries 테이블에서 사번이 10060인 
-- 직원의 급여 평균과 총합을 출력

select avg(salary), sum(salary)
  from salaries where emp_no = 10060;

-- 이 예제 직원의 최저 임금을 받은 시기와 
-- 최대 임금을 받은 시기를 각 각 출력해보세요.

select *
  from salaries
 where emp_no = 10060
   and salary in ( 93188, 74686 );
  
select a.*
  from salaries a,
       ( select max(salary) as max_salary,
                min(salary) as min_salary
           from salaries where emp_no = 10060 ) b
 where a.emp_no = 10060
   and ( a.salary = b.max_salary or a.salary = b.min_salary)
   
   
   ;
   
select max(salary), min(salary)
  from salaries where emp_no = 10060;


     
    

 
   
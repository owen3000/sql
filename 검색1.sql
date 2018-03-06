select dept_no, dept_name from departments;

select first_name as '이름', 
       gender as '성별',
       last_name as '성' 
  from employees;
  
select concat(first_name, ' ', last_name) as 'name', 
       gender as '성별'
  from employees;
  
select distinct title from titles;  

-- employees 테이블에서 1991년 이전에 입사한 직원의 이름, 
-- 성별, 입사일을 출력

select concat(first_name, ' ', last_name),
	   gender,
       hire_date
  from employees
 where hire_date < '1991-00-00'; 

-- employees 테이블에서 1989년 이전에 입사한 여직원의 이름, 
-- 입사일을 출력

select concat(first_name, ' ', last_name),
       hire_date
  from employees
 where hire_date < '1999-00-00'
   and gender = 'F'
order by hire_date desc;   

-- dept_emp 테이블에서 부서 번호가 d005나 d009에 속한 사원의
-- 사번, 부서번호 출력
select emp_no, dept_no
  from dept_emp
 where dept_no in ('d005', 'd009'); 
 
-- employees 테이블에서 1989년에 입사한 직원의 이름, 
-- 입사일을 출력  

select first_name, hire_date 
  from employees
 where hire_date like '1989%'; 

-- 예제를 산술비교 연산자를 사용한 SQL문으로 변경해 보세요
select first_name, hire_date 
  from employees
 where hire_date <= '1989-12-31'
   and hire_date >= '1989-01-01';

-- employees 테이블에서 직원의 전체이름,  
-- 성별, 입사일을  입사일 순으로 출력
  select first_name,
	     gender,
         hire_date
    from employees
order by hire_date asc, gender desc, first_name asc;  
       
-- salaries 테이블에서 2001년 월급을 가장 높은순으로 사번, 
-- 월급순으로 출력
select emp_no, salary
  from salaries
 where from_date like '2001%'
order by salary desc; 

       
       
       












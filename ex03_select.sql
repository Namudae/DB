-- ex03_select.sql

/*

    SQL, Query(질의) > SELECT
    
    SELECT문
    - DML, DQL
    - 관계대수 연산 중 셀렉션 작업을 구현한 명령어
    - 대상 테이블로부터 원하는 행을 추출하는 작업 > 오라클 서버한테 데이터 좀 주세요~ 요청 명령어
    - 읽기
    
                                                - select문
    [WITH <Sub Query>]                          - with 절
    SELECT column_list                          - select 절
    FROM table_name                             - from 절
    [WHERE search_condition]                    - where 절
    [GROUP BY group_by_expression]              - group by절
    [HAVING search_condition]                   - having 절
    [ORDER BY order_expresstion [ASC|DESC]];    - order by절
    
    ************** 절의 실행순서가 정해져있다.
    

*/

select 컬럼리스트   -- 2. 원하는 컬럼을 지정
from 테이블명;      -- 1. 데이터소스를 지정(어느 테이블로부터 데이터를 가져올지)



-- 처음 보는 테이블의 구조(스키마, Scheme) 확인?
-- 1. 툴
-- 2. 명령어(SQL Developer, SQL Plus에서만 동작)
desc employees; --SQL(X), 특정 툴 명령어


-- 단일 컬럼
select first_name from employees;
select email from employees;

-- 다중 컬럼
select first_name, last_name from employees;

select first_name, last_name, email, salary, phone_number from employees;


-- 자주 쓰는 방식
select first_name, last_name, email, salary, phone_number 
from employees;

select 
    first_name, last_name, email, salary, phone_number
from 
    employees;

--컬럼명을 모두 명시(추천)
select first_name, last_name, email, salary, phone_number, job_id
    from employees;

-- 와일드 카드 사용
select * -- 와일드 카드(*) > 모든 컬럼
    from employees;


-- 컬럼리스트의 컬럼순서는 원본 테이블의 컬럼순서와 무관하다.
select last_name, first_name from employees;

select first_name, first_name, first_name from employees;

select first_name, length(first_name) from employees;






create table zipcode  (
   seq                  NUMBER(10)                        not null,
   zipcode              VARCHAR2(50),
   sido                 VARCHAR2(50),
   gugun                VARCHAR2(50),
   dong                 VARCHAR2(50),
   bunji                VARCHAR2(50),
   constraint PK_ZIPCODE primary key (seq)
)

select * from zipcode;



select * from tblAddressBook; -- 주소록
select * from tblComedian; --코미디언
select * from tblCountry; --국가정보
select * from tblDiary; --다이어리
select * from tblHouseKeeping; --가계부
select * from tblInsa; --직원정보
select * from tblMen; --남자
select * from tblWomen; --여자
select * from tblTodo; --할일
select * from tblZoo; --동물




select 절    --2. 컬럼 지정
from 절;     --1. 테이블 지정

select name, buseo, jikwi 
    from tblInsa;

select buseo, name, jikwi 
    from tblInsa;

-- 항상 select문의 결과는 테이블이다. > 메모리에 존재하는 임시 테이블 > 결과 테이블 or 결과셋(ResultSet) 

select name, length(name) 
    from tblInsa;

select * 
    from tblInsa;

--오류
select * --테이블 이름 오타
    from tblIns; --ORA-00942: table or view does not exist
    
select nama --컬럼 이름 오타
    from tblInsa; --ORA-00904: "NAMA": invalid identifier









-- 문제1. 다음을 처리하는 쿼리문을 작성하세요 --
SHOW databases;
USE employees;
show table status;
describe employees;

-- 문제2. employees 테이블에서 다음 쿼리를 작성하세요 --
SELECT * FROM titles;
SELECT first_name FROM employees;
SELECT first_name, last_name, gender FROM employees;

-- 문제3. employees 테이블 출력시 다음과 같이 나오도록 쿼리를 작성하세요 --
SELECT first_name AS 이름, 
       gender AS 성별, 
       hire_date AS "회사 입사일"
FROM employees
LIMIT 6;

-- 문제4. usertbl 테이블에서이름이'김경호'인행을출력하세요. --
SELECT * 
FROM usertbl
WHERE name = '김경호';

-- 문제5. 생년이 1970 이상이고, 키가 182 이상인 데이터 출력 --
SELECT * 
FROM usertbl
WHERE birthYear >= 1970 AND height >= 182;

-- 문제6. usertbl 테이블에서키가180~183 범위인데이터를출력하세요. --
SELECT * 
FROM usertbl
WHERE height BETWEEN 180 AND 183;

-- 문제7. usertbl 테이블에서주소가'경남' 또는'전남' 또는'경북'인데이터를출력하세요. --
SELECT * 
FROM usertbl
WHERE addr IN ('경남', '전남', '경북');

-- 문제8. usertbl 테이블에서이름이'김'으로시작하는데이터를출력하세요. --
SELECT * 
FROM usertbl
WHERE name LIKE '김%';

-- 문제9. usertbl에서김경호보다큰사람들의이름과키를출력하세요. 서브쿼리를이용하여쿼리를작성하세요 --
SELECT name, height
FROM usertbl
WHERE height > (
    SELECT height
    FROM usertbl
    WHERE name = '김경호'
);

-- 문제10. usertbl을 mdate의 오름차순으로정렬하여출력하세요. --
SELECT * 
FROM usertbl
ORDER BY mdate ASC;

-- 문제11. usertbl을 mdate의 내림차순으로정렬하여출력하세요. --
SELECT * 
FROM usertbl
ORDER BY mdate DESC;

-- 문제12. usertbl을 height의 내림차순으로정렬하고, 동률인경우name의내림차순으로정렬하여출력하세요 --
SELECT * 
FROM usertbl
ORDER BY height DESC, name DESC;

-- 문제13. usertbl의주소지를중복없이 오름차순으로출력하세요 --
SELECT DISTINCT addr
FROM usertbl
ORDER BY addr ASC;


-- 문제14. World 데이터베이스에서다음질문을처리하세요. --
-- 국가코드가'KOR'인도시를찾아인구수를역순으로표시하세요.
USE World;
SELECT * 
FROM city
WHERE CountryCode = 'KOR'
ORDER BY Population DESC;

-- city 테이블에서 국가코드와인구수를출력하라. 정렬은국가코드별로오름차순으로, 동일한코드(국가) 안에서는 인구수의역순으로표시하세요.
SELECT CountryCode, Population 
FROM city
ORDER BY CountryCode ASC, Population DESC;

-- city 테이블에서 국가코드가'KOR'인 도시의수를표시하세요.
SELECT COUNT(*) AS 도시_수
FROM city
WHERE CountryCode = 'KOR';

-- city 테이블에서 국가코드가'KOR', 'CHN', 'JPN'인 도시를 찾으세요.
SELECT * 
FROM city
WHERE CountryCode IN ('KOR', 'CHN', 'JPN');

-- 국가코드가'KOR'이면서인구가100만이상인도시를찾으세요.
SELECT * 
FROM city
WHERE CountryCode = 'KOR' AND Population >= 1000000;

-- 국가코드가'KOR'인도시중인구수가많은순서로상위10개만표시하세요.
SELECT * 
FROM city
WHERE CountryCode = 'KOR'
ORDER BY Population DESC
LIMIT 10;

-- city 테이블에서 국가코드가'KOR'이고, 인구가 100만이상 500만이하인도시를찾으세요
SELECT * 
FROM city
WHERE CountryCode = 'KOR' 
  AND Population BETWEEN 1000000 AND 5000000;






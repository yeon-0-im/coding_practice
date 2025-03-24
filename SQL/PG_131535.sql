-- 문제 링크 (주석) : hhttps://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 간단한 문제 설명 : user_info 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원의 수를 출력한다.
-- 테이블 스키마 : 
--   - 테이블명 : USER_INFO
--   - 컬럼명 및 타입 :         NAME	   TYPE	        NULLABLE           설명
                            -- USER_ID	 INTEGER	    FALSE         회원아이디 [1,2,3,...]
                            -- GENDER	 TINYINT(1)	    TRUE          0 남자, 1여자
                            -- AGE	     INTEGER	    TRUE          숫자 혹은 NULL
                            -- JOINED	 DATE	        FALSE         가입한 날짜(2021-10-05)
-- 해결 방법 설명 :
--   1. 쿼리 작성 단계 
        -- USER_INFO 테이블에 데이터가 잘 입력되어 있는지 확인한다
        -- WHERE절을 사용해 2021년데 가입한 회원을 조건을 추가한다
        -- 나이가 20~29인 회원인 조건을 추가한다.
        -- 데이터를 확인한 후 SELECE절에서 최종적으로 출력을 원하는 COUNT 수를 구한다. 
        
--   2. 사용한 SQL 문법 및 함수 설명
        -- LIKE 는 '=' 과 같은 의미로 사용됨
        -- JOIND LIKE '2021%'     //\\ YEAR(JOINED)='2021' 가능
        -- AGE >=20 AND AGE <=29  //\\ BETWEEN 20 AND 29 로도 활용 가능

--   3. 쿼리 최적화 방법 (인덱스 사용, 조인 방식 등)
-- 시간/공간 복잡도 : ...
--   - 시간복잡도 : ...
--   - 공간복잡도 : ...

SELECT COUNT(USER_ID) AS USER
FROM USER_INFO
WHERE JOINED LIKE '2021%' AND AGE >=20 AND AGE <=29
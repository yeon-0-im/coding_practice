-- 문제 링크 (주석) : https://school.programmers.co.kr/learn/courses/30/lessons/59403
-- 간단한 문제 설명 : SQL을 실행하여 아이디와 이름을 ID순으로 조회
-- 테이블 스키마 : 
--   - 테이블명 : AMIMAL_INS
--   - 컬럼명 및 타입 : 
                -- NAME	                TYPE	  NULLABLE
                -- ANIMAL_ID	    VARCHAR(N)	    FALSE
                -- ANIMAL_TYPE	    VARCHAR(N)	    FALSE
                -- DATETIME	        DATETIME	    FALSE
                -- INTAKE_CONDITION	VARCHAR(N)	    FALSE
                -- NAME	             VARCHAR(N)	    TRUE
                -- SEX_UPON_INTAKE	VARCHAR(N)	    FALSE
-- 해결 방법 설명 :
--   1. 쿼리 작성 단계 
        -- 테이블 이름 확인
        -- ANIMAL_INS 테이블 내 데이터 타입 확인 (제한조건 설정)
        -- 문제에서 요구하는 컬럼 조회
        -- ORDER BY를 이용해 ID칼럼을 정렬
        
--   2. 사용한 SQL 문법 및 함수 설명
        -- ORDER BY를 이용해 정렬할 수 있었다
        -- DEFAULT 값은 ASC 이므로 생략가능하고, DESC를 입력하면 내림차순으로 조회 가능하다

--   3. 쿼리 최적화 방법 (인덱스 사용, 조인 방식 등)
-- 시간/공간 복잡도 : ...
--   - 시간복잡도 : ...
--   - 공간복잡도 : ...

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;
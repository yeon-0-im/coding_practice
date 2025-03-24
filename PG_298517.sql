-- 문제 링크 (주석) : https://school.programmers.co.kr/learn/courses/30/lessons/298517
-- 간단한 문제 설명 : SQL을 실행하여 잡은 물고기가 큰 순서대로 10마리의 ID와 길이를 정렬한다
-- 테이블 스키마 : 
--   - 테이블명 : FISH_INFO
--   - 컬럼명 및 타입 : Column name	    Type	Nullable
                    -- ID	        INTEGER	    FALSE
                    -- FISH_TYPE	INTEGER	    FALSE
                    -- LENGTH	    FLOAT	    TRUE
                    -- TIME	        DATE	    FALSE

-- 해결 방법 설명 :
--   1. 쿼리 작성 단계 
        -- 테이블 이름 확인
        -- FISH_INFO 테이블 내 데이터 타입 확인 (제한조건 설정)
        -- 문제에서 요구하는 컬럼 조회
        -- ORDER BY를 이용해 LENGTH를 내림차순 정렬
        -- 상위 10개만 조회하는 제한조건 설정
        -- ID를 오름차순으로 정렬하는 조건 추가
        
--   2. 사용한 SQL 문법 및 함수 설명
        -- ORDER BY를 이용해 정렬할 수 있었다
        -- DEFAULT 값은 ASC 이므로 생략가능하고, DESC를 입력하면 내림차순으로 조회 가능하다
        -- ORDER BY에서 조건이 두 개 이상 들어갈때 ','를 이용해 구분해야 한다

--   3. 쿼리 최적화 방법 (인덱스 사용, 조인 방식 등)
-- 시간/공간 복잡도 : ...
--   - 시간복잡도 : ...
--   - 공간복잡도 : ...

SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC, ID ASC
LIMIT 10
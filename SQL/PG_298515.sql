-- 문제 링크 (주석) : https://school.programmers.co.kr/learn/courses/30/lessons/298515
-- 간단한 문제 설명 : 테이블에서 잡은 물고기 중 가장 큰 물고기의 길이를 'cm'를 붙여 컬럼명 'MAX_LENGTH'에 출력
-- 테이블 스키마 :
--   - 테이블명 : FISH_INFO
--   - 컬럼명 및 타입 : Column name	    Type	Nullable
                    -- ID	        INTEGER	    FALSE
                    -- FISH_TYPE	INTEGER	    FALSE
                    -- LENGTH	    FLOAT	    TRUE
                    -- TIME	        DATE	    FALSE

-- 해결 방법 설명 :
--   1. 쿼리 작성 단계
        -- 테이블 안의 데이터 형식을 확인한다
        -- LENGTH를 기준으로 물고기 길이가 큰 순서대로 정렬한다
        -- LIMIT를 사용하여 가장 큰 물고기 1마리의 길이를 조회한다
        -- SELECT 에서 LENGTH 컬럼의 데이터와 'cm'를 합쳐준다
        -- 컬럼 명을 AS를 활용하여 제시된 MAX_LENGTH로 바꾼다
--   2. 사용한 SQL 문법 및 함수 설명
        -- CONCAT은 두가지를 합쳐서 나란히 쓰고 싶을때 사용한다.
        -- CONCAT(Column1,Column2) 처럼 컬럼끼리 합치거나 ''를 사용하여 문자열과도 합칠 수 있다
        -- 다만 세개 이상 합치고 싶을 경우, CONCAT을 중복해서 사용해야 한다. CONCAT('1',CONCAT('2','3'))
        -- 일반적으로 NULL 값은 정렬 시 가장 먼저 오거나 가장 나중에 오도록 처리되기때문에 이번 문제풀이에는 추가적인 처리를 안해도 되었다.
        -- 필요시, WHERE LENGTH IS NOT NULL 구문을 추가하여 NULL 값을 제외하고 계산하면 더욱 정확할 것이다.
--   3. 쿼리 최적화 방법 (인덱스 사용, 조인 방식 등)
-- 시간/공간 복잡도 :
--   - 시간복잡도 : 
--   - 공간복잡도 : 

SELECT CONCAT(LENGTH,'cm') AS MAX_LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC
LIMIT 1
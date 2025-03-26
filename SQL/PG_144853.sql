--  문제 링크 (주석) : https://school.programmers.co.kr/learn/courses/30/lessons/144853
--  간단한 문제 설명 : BOOK테이블 내의 카테고리 '인문'과 2021년 출판 조건을 만족하는 값을 탐색한다
--  테이블 스키마 :
--    - 테이블명 : BOOK
--    - 컬럼명 및 타입 : Column name	    Type	Nullable	Description
                    -- BOOK_ID	        INTEGER	    FALSE	    도서 ID
                    -- CATEGORY	        VARCHAR(N)	FALSE	    카테고리 (경제, 인문, 소설, 생활, 기술)
                    -- AUTHOR_ID	    INTEGER	    FALSE	    저자 ID
                    -- PRICE	        INTEGER	    FALSE	    판매가 (원)
                    -- PUBLISHED_DATE	DATE	    FALSE	    출판일

-- 해결 방법 설명 :
--   1. 쿼리 작성 단계
        -- 테이블의 이름과 데이터타입을 확인한다
        -- DATE_FORMAT을 사용하여 DATE type인 PUBLISHED_DATE 컬럼의 값을 %Y-%m-%d 형식으로 할당한다
        -- WHERE절을 사용하여 DATE_FORMAT해서 가져온 PUBLISHED_DATE의 %Y(년도)가 2021인 조건을 추가하여 결과를 확인한다
        -- CATEGORY가 '인문'인 조건을 AND 를 사용하여 추가한다
        -- ORDER BY를 사용하여 PUBLISHED_DATE기준으로 오름차순 정렬한다

--   2. 사용한 SQL 문법 및 함수 설명
        -- DATE_FORMAT(컬럼,'형식%Y %M %D')으로 변환한다
        -- DATE 타입의 경우 변환해서 사용해야한다
        
--   3. 쿼리 최적화 방법 (인덱스 사용, 조인 방식 등)
-- 시간/공간 복잡도 :
--   - 시간복잡도 : 
--   - 공간복잡도 : 

SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE,'%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE CATEGORY='인문' AND DATE_FORMAT(PUBLISHED_DATE,'%Y') = 2021
ORDER BY PUBLISHED_DATE
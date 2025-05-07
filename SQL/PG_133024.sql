-- 문제 링크 (주석) : https://school.programmers.co.kr/learn/courses/30/lessons/133024
-- 간단한 문제 설명 : SQL을 실행하여 총주문량 순서대로 내림차순 정렬하고 같을 경우 출하번호를 기준으로 오름차순하여 FLAVOR컬럼을 조회한다
-- 테이블 스키마 : 
--   - 테이블명 : FIRST_HALF
--   - 컬럼명 및 타입 :         NAME	   TYPE	        NULLABLE           설명
                        -- SHIPMENT_ID   INT(N)	        FALSE           (출하번호)
                        -- FLAVOR	 VARCHAR(N)	FALSE           (맛)
                        -- TOTAL_ORDER	 INT(N)	        FALSE           (총 주문량)

-- 해결 방법 설명 :
--   1. 쿼리 작성 단계 
        -- 테이블 이름 확인
        -- FIRST_HALF 테이블 내 데이터 타입 확인
        -- COUNT 함수를 사용하여 전체 컬럼 수 조회
        -- 문제에서 요구하는 FLAVOR 컬럼 조회
        -- ORDER BY를 이용해 TOTAL_ORDER을 내림차순으로 정렬
        -- 총 주문량이 같은 경우 SHIPMENT ID를 내림차순으로 정렬하기위해 조건을 추가하였다
        
--   2. 사용한 SQL 문법 및 함수 설명
        -- ORDER BY 조건을 여러개 추가하면 포함하여 정렬이 된다
        -- DECS: 내림차순 / ASC: 오름차순(DEFAULT)

--   3. 쿼리 최적화 방법 (인덱스 사용, 조인 방식 등)
-- 시간/공간 복잡도 : ...
--   - 시간복잡도 : ...
--   - 공간복잡도 : ...

SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC
;

-- NO SQL 추가 공부 예정
-- 16. Show all interactions of a professor in the library, the result should show:
-- room/book/equipment, date borrowed, and date to return
-- (in the case of a room, the ending date excluding time).
SELECT
    lib.ID AS "Professor ID",
    lib.ITEM_ID as "Item ID",
    lib.START_DATE as "Date Borrowed",
    lib.END_DATE as "Return by Date",
   	lib.item_type as "Item Type"
FROM
    (
        SELECT DISTINCT 
            bor.borrower_id id,
            bor.item_id,
            CONVERT(bor.start_date, DATE) as start_date,
            CONVERT(bor.end_date, DATE) as end_date,
            CASE 
    			WHEN bor.item_id = bk.book_id then "Book"
    			WHEN bor.item_id = e.equipment_id then "Equipment"
    			WHEN bor.item_id = r.room_id then "Room"
    		END as item_type
        FROM instructor i
        LEFT JOIN borrow bor on i.instructor_id = bor.borrower_id
        LEFT JOIN book bk on bk.book_id = bor.item_id
        LEFT JOIN equipment e on e.equipment_id = bor.item_id 
        LEFT JOIN room r on r.room_id = bor.item_id 
    ) as lib;
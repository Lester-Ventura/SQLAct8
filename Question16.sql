-- 16. Show all interactions of a professor in the library, the result should show:
-- room/book/equipment, date borrowed, and date to return
-- (in the case of a room, the ending date excluding time).
SELECT
    lib.BORROWER_ID AS PROFESSOR_ID,
    lib.ITEM_ID,
    lib.START_DATE DATE_BORROWED,
    lib.END_DATE DATE_TO_RETURN,
FROM
    (
        SELECT
            instructor_id id,
            item.id item_id,
            bor.start_date start_date,
            bor.end_date end_date
        FROM instructor i
        LEFT JOIN borrow bor on i.instructor_id == bor.borrower_id
        LEFT JOIN (
            SELECT 
                book_id id 
            FROM book
            UNION
            SELECT 
                equipment_id 
            FROM equipment
            UNION
            SELECT
                room_id
            FROM room
        ) item on item.id = bor.item_id
    ) as lib
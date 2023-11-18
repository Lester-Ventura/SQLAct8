-- 18. Show all the borrowed rooms and the person borrowing them (from the start of time).

--we can order per room

SELECT 
    rm.room_id,
    bor.borrower_id,
    bor.start_date
    FROM
    room rm
    LEFT JOIN borrow bor on rm.room_id = bor.item_id
    order by rm.room_id

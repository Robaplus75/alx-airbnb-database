SELECT user_id, COUNT(*) AS No_of_bookings FROM Booking GROUP BY user_id;

SELECT user_id, COUNT(*) AS No_of_bookings, RANK() OVER (ORDER BY COUNT(*)) AS RANK_BY_BOOKINGS FROM Booking GROUP
BY user_id;

SELECT user_id, COUNT(*) AS No_of_bookings, ROW_NUMBER() OVER (ORDER BY COUNT(*)) AS RANK_BY_BOOKINGS FROM Booking GROUP
BY user_id;

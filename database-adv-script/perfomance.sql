SELECT * FROM Booking JOIN User ON User.user_id=Booking.user_id JOIN Payment on Booking.booking_id=Payment.booking_id WHERE Payment.amount > 0 AND Payment.amount < 10000000.00;

EXPLAIN ANALYZE SELECT * FROM Booking JOIN User ON User.user_id=Booking.user_id JOIN Payment on Booking.booking_id=Payment.booking_id WHERE Payment.amount > 0 AND Payment.amount < 10000000.00;

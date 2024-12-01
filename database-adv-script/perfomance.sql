SELECT * FROM Booking JOIN User ON User.user_id=Booking.user_id JOIN Payment on Booking.booking_id=Payment.booking_id;

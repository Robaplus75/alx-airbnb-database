SELECT * FROM Booking INNER JOIN User ON Booking.user_id = User.user_id;
SELECT * From Property LEFT JOIN Review ON Property.property_id = Review.property_id;
SELECT * FROM Booking FULL OUTER JOIN User ON Booking.user_id = User.user_id;

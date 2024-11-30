SELECT * FROM Property WHERE ((SELECT AVG(rating) FROM Review WHERE Property.property_id = Review.property_id) > 4.0);
SELECT * FROM User WHERE ((SELECT COUNT(user_id) FROM Booking WHERE User.user_id = Booking.User_id) > 3)

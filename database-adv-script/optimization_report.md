To evaluate the performance of this query, execute:

EXPLAIN SELECT * FROM Booking JOIN User ON User.user_id = Booking.user_id JOIN Payment ON Booking.booking_id = Payment.booking_id;

You may find some common inefficiencies, such as:

    The use of SELECT *, which can result in fetching more data than necessary.
    Potential absence of indexes on the columns used for joining.
    Unneeded joins if certain data is not required.

Here’s a revised version of the query for better performance:

SELECT Booking.booking_id, User.user_id, User.name, Payment.amount, Payment.statusFROM Booking JOIN User ON User.user_id = Booking.user_id JOIN Payment ON Booking.booking_id = Payment.booking_id;

Further suggestions include:

    Create indexes on the join columns if they aren't already present:

	CREATE INDEX idx_user_id ON User(user_id);
	CREATE INDEX idx_booking_id ON Booking(booking_id);
    	CREATE INDEX idx_payment_booking_id ON Payment(booking_id);

    Specify only the necessary columns in the SELECT clause to minimize data retrieval and processing time.
    Consider archiving or partitioning large tables if relevant to improve efficiency.
Implementing these adjustments should lead to better query performance.

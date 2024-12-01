EXPLAIN ANALYZE SELECT * FROM Booking b INNER JOIN User u ON b.user_id = u.user_id INNER JOIN Property p ON b.property_id = p.property_id WHERE b.status = 'confirmed' AND b.created_at >= '2024-01-01';

-- AFTER ANALYZING WITH ( EXPLAIN AND ANALYZE ) THE FOLLOWING COLUMNS NEEDS TO BE INDEXED

CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_property_user_id ON Property(host_id);
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_created_at ON Booking(created_at);
CREATE INDEX idx_property_created_at ON Property(created_at);
CREATE INDEX idx_booking_status ON Booking(status);

EXPLAIN ANALYZE SELECT * FROM Booking b INNER JOIN User u ON b.user_id = u.user_id INNER JOIN Property p ON b.property_id = p.property_id WHERE b.status = 'confirmed' AND b.created_at >= '2024-01-01';

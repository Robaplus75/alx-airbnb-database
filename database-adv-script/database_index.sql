-- AFTER ANALYZING WITH ( EXPLAIN AND ANALYZE ) THE FOLLOWING COLUMNS NEEDS TO BE INDEXED

CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_property_user_id ON Property(host_id);
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_created_at ON Booking(created_at);
CREATE INDEX idx_property_created_at ON Property(created_at);
CREATE INDEX idx_booking_status ON Booking(status);

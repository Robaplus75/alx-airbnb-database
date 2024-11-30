-- User table
INSERT INTO User (first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '123-456-7890', 'guest'),
('Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '234-567-8901', 'host'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', '345-678-9012', 'guest'),
('Bob', 'Brown', 'bob.brown@example.com', 'hashed_password_4', '456-789-0123', 'host'),
('Charlie', 'Davis', 'charlie.davis@example.com', 'hashed_password_5', '567-890-1234', 'admin');

-- Property table
INSERT INTO Property (host_id, name, description, location, pricepernight)
VALUES 
(2, 'Cozy Cottage', 'A cozy cottage in the woods.', 'Forestville', 120.00),
(2, 'Beach House', 'A beautiful beach house with ocean views.', 'Ocean City', 250.00),
(4, 'Mountain Retreat', 'A serene mountain retreat.', 'Mountainview', 150.00),
(4, 'Downtown Apartment', 'A stylish apartment in the city center.', 'Metropolis', 180.00);

-- Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
('booking_1', 1, 1, '2023-09-01', '2023-09-05', 480.00, 'confirmed'),
('booking_2', 2, 3, '2023-09-10', '2023-09-15', 1250.00, 'pending'),
('booking_3', 3, 1, '2023-09-20', '2023-09-25', 750.00, 'confirmed'),
('booking_4', 4, 5, '2023-09-05', '2023-09-12', 1260.00, 'canceled');

-- Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES 
('payment_1', 'booking_1', 480.00, 'credit_card'),
('payment_2', 'booking_2', 1250.00, 'paypal'),
('payment_3', 'booking_3', 750.00, 'stripe'),
('payment_4', 'booking_4', 1260.00, 'credit_card');

-- Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES 
('review_1', 1, 1, 5, 'Amazing place! Had a wonderful time.'),
('review_2', 2, 3, 4, 'Great location, but the house could use some maintenance.'),
('review_3', 3, 1, 5, 'Perfect getaway in the mountains!'),
('review_4', 4, 5, 3, 'Nice apartment, but a bit noisy.');

-- Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES 
('message_1', 1, 2, 'Hi Jane, I have some questions about the Beach House.'),
('message_2', 2, 1, 'Hello John, feel free to ask anything!'),
('message_3', 3, 4, 'Bob, I loved your Mountain Retreat!'),
('message_4', 4, 5, 'Charlie, can you assist me with the booking process?');

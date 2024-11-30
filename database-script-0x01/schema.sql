create table User (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	password_hash VARCHAR(255) NOT NULL,
	phone_number VARCHAR(255) NOT NULL,
	role ENUM('guest', 'host', 'admin') NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table Property (
	property_id INT PRIMARY KEY AUTO_INCREMENT,
	INDEX idx_position (property_id),
	host_id INT,
	FOREIGN KEY (host_id) REFERENCES User(user_id),
	name VARCHAR(255) NOT NULL,
	description TEXT NOT NULL,
	location VARCHAR(255) NOT NULL,
	pricepernight DECIMAL(8, 2) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

create table Booking (
	booking_id CHAR(36) PRIMARY KEY,
	INDEX idx_position (booking_id),
	property_id INT,
	FOREIGN KEY (property_id) REFERENCES Property(property_id),
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES User(user_id),
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	total_price DECIMAL(8, 2) NOT NULL,
	status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table Payment (
	payment_id CHAR(36) PRIMARY KEY,
	booking_id CHAR(36),
	FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
	amount DECIMAL(8, 2) NOT NULL,
	payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL
);
create table Review (
	review_id CHAR(36) PRIMARY KEY,
	INDEX idx_position (review_id),
	property_id INT,
	FOREIGN KEY (property_id) REFERENCES Property(property_id),
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES User(user_id),
	rating INT NOT NULL CHECK (rating >= 1 AND rating <=5),
	comment TEXT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table Message (
	message_id CHAR(36) PRIMARY KEY,
	INDEX idx_position(message_id),
	sender_id INT,
	FOREIGN KEY (sender_id) REFERENCES User(user_id),
	recipient_id INT,
	FOREIGN KEY (recipient_id) REFERENCES User(user_id),
	message_body TEXT NOT NULL,	
	sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM Property WHERE (4 < (SELECT AVG(rating) FROM Review WHERE Property.property_id = Review.property_id));

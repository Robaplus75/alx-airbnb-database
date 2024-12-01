Based on the high-usage columns the following indexs are created:
    1. idx_booking_user_id on Booking(user_id)
    2. idx_booking_property_id on Booking(property_id)
    3. idx_property_user_id on Property(host_id)
    4. idx_user_email on User(email)
    5. idx_booking_created_at on Booking(created_at)
    6. idx_property_created_at on Property(created_at)
    7. idx_booking_status on Booking(status)


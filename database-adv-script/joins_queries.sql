SELECT 
    bookings.id AS booking_id,
    bookings.check_in,
    bookings.check_out,
    bookings.status,
    users.id AS user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

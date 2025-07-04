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

SELECT 
    properties.id AS property_id,
    properties.title,
    properties.location,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

SELECT 
    users.id AS user_id,
    users.first_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.check_in,
    bookings.check_out
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;

SELECT 
    users.id AS user_id,
    users.first_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.check_in,
    bookings.check_out
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;

SELECT 
    users.id AS user_id,
    users.first_name,
    bookings.id AS booking_id,
    bookings.property_id
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT 
    users.id AS user_id,
    users.first_name,
    bookings.id AS booking_id,
    bookings.property_id
FROM bookings
LEFT JOIN users ON bookings.user_id = users.id;



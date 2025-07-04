# 🧩 Airbnb Clone – SQL Join Queries

This project contains example SQL queries that demonstrate the use of different types of SQL joins based on the database schema of an Airbnb Clone backend.

The file [`airbnb_clone_joins.sql`](./airbnb_clone_joins.sql) includes working queries for:

- `INNER JOIN`
- `LEFT JOIN`
- `FULL OUTER JOIN` (with MySQL-compatible alternative using `UNION`)

---

## 📄 File Contents

### 1. 🔗 INNER JOIN – Bookings and Users

Retrieves all bookings and the respective users who made them.

```sql
SELECT ...
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

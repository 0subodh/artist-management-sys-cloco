# Artist Management System

## Summary

This is a simple admin panel to manage records of artists and their song collections. [cite: 1]

## Technical Requirements

- **Relational Database:** The system uses a relational database with the following minimum tables: `User`, `Artist`, and `Song`.
- **Raw Queries:** CRUD operations are performed using raw SQL queries (no ORM).
- **API:** The system uses a Native or REST API. [cite: 3]
- **Language:** Typescript
- **Authentication:**
  - Admin users land on a login screen with an option for new registration.
  - New admin user registration redirects to the login page.
  - Logged-in admin users are redirected to the dashboard page.
  - A logout button is present.
- **Authorization:** Role-Based Access Control is implemented. Roles include `super_admin`, `artist_manager`, and `artist`.

-- =========================
-- ROLES
-- =========================
INSERT INTO roles (id, type) VALUES
                                 (1, 'ROLE_USER'),
                                 (2, 'ROLE_ADMINISTRATOR')
ON CONFLICT DO NOTHING;

-- =========================
-- USERS
-- =========================
INSERT INTO users (name, mail, password, role_id) VALUES
                                                          ( 'tom', 'tom@tom.com', '$2a$10$7QJ6mU6Q8gQ0n0ZJz5Yk6u1vZzFJ8q6nZ6v8mZz2u8y1WzGxYkQyW', 2),
                                                          ( 'user', 'user@bookora.com', '$2a$10$wH7rK9sL2pQ8eT1zYx0F4u6Jm2kP9cX7vYz1rN6sQeT8uW0pLk9aG', 1),
                                                          ( 'alice', 'alice@mail.com', '$2a$10$3mZx8YkL0pQ7sT2wH9eR5uF6cJ1nV8bXz0qW4rYt6uI9oP2aS7dF', 1),
                                                          ( 'bob', 'bob@mail.com', '$2a$10$9LpQw8Xz1mN7sT6yR0eF5uH2kJ3cV4bZxY8rU1iO9pA6sD2fG7hJ', 1),
                                                          ( 'charlie', 'charlie@mail.com', '$2a$10$kP9sX2wQ7eT6yR1mN8uF5cJ3vZ0bH4YxWzI2oA9pL6dG7fS8hKj', 1)
ON CONFLICT DO NOTHING;

-- =========================
-- CATEGORIES
-- =========================
INSERT INTO categories (id, name) VALUES
                                      (1, 'Fiction'),
                                      (2, 'Technology'),
                                      (3, 'Science'),
                                      (4, 'History')
ON CONFLICT DO NOTHING;

-- =========================
-- SUBCATEGORIES
-- =========================
INSERT INTO sub_categories (id, name, category_id) VALUES
                                                       (1, 'Fantasy', 1),
                                                       (2, 'Programming', 2),
                                                       (3, 'Science Fiction', 3),
                                                       (4, 'Biography', 4)
ON CONFLICT DO NOTHING;

-- =========================
-- AUTHORS
-- =========================
INSERT INTO authors (id, name) VALUES
                                   (1, 'George Orwell'),
                                   (2, 'Robert C. Martin'),
                                   (3, 'J.K. Rowling'),
                                   (4, 'J.R.R. Tolkien'),
                                   (5, 'Martin Fowler'),
                                   (6, 'Andrew Hunt'),
                                   (7, 'David Thomas'),
                                   (8, 'Isaac Asimov'),
                                   (9, 'Frank Herbert'),
                                   (10, 'Douglas Crockford')
ON CONFLICT DO NOTHING;

-- =========================
-- PUBLISHERS
-- =========================
INSERT INTO publishers (id, name) VALUES
                                      (1, 'Penguin'),
                                      (2, 'Prentice Hall'),
                                      (3, 'Bloomsbury'),
                                      (4, 'HarperCollins'),
                                      (5, 'OReilly Media')
ON CONFLICT DO NOTHING;

-- =========================
-- PROVIDERS
-- =========================
INSERT INTO providers (id, name) VALUES
                                     (1, 'Amazon'),
                                     (2, 'BookStore Local'),
                                     (3, 'Google Books'),
                                     (4, 'Apple Books'),
                                     (5, 'Kobo')
ON CONFLICT DO NOTHING;

-- =========================
-- FORMAT
-- =========================
INSERT INTO format (id, name) VALUES
                                  (1, 'Hardcover'),
                                  (2, 'Paperback'),
                                  (3, 'Ebook')
ON CONFLICT DO NOTHING;

-- =========================
-- BOOKS (FIXED + EXPANDED)
-- =========================
INSERT INTO books (
    id, title, description, published_year,
    category_id, publisher_id, sub_category_id, created_at, page_count
) VALUES
      (1, '1984', 'Dystopian novel', 1949, 1, 1, 1, NOW(), 328),
      (2, 'Clean Code', 'Programming best practices', 2008, 2, 2, 2, NOW(), 464),
      (3, 'Harry Potter and the Sorcerer''s Stone', 'Wizarding adventure', 1997, 1, 3, 1, NOW(), 309),
      (4, 'The Hobbit', 'Fantasy adventure', 1937, 1, 4, 1, NOW(), 310),
      (5, 'Refactoring', 'Improving code structure', 1999, 2, 5, 2, NOW(), 448),
      (6, 'The Pragmatic Programmer', 'Software craftsmanship', 1999, 2, 5, 2, NOW(), 352),
      (7, 'Foundation', 'Epic science fiction', 1951, 3, 4, 3, NOW(), 255),
      (8, 'Dune', 'Sci-fi political saga', 1965, 3, 4, 3, NOW(), 412),
      (9, 'JavaScript: The Good Parts', 'JS fundamentals', 2008, 2, 5, 2, NOW(), 176),
      (10, 'Steve Jobs', 'Biography of Steve Jobs', 2011, 4, 4, 4, NOW(), 656),

-- EXTRA BOOKS
      (11, 'Animal Farm', 'Political satire', 1945, 1, 1, 1, NOW(), 112),
      (12, 'The Silmarillion', 'Mythopoeic works', 1977, 1, 4, 1, NOW(), 365),
      (13, 'Clean Architecture', 'Software design principles', 2017, 2, 2, 2, NOW(), 432),
      (14, 'I, Robot', 'Robot short stories', 1950, 3, 4, 3, NOW(), 224),
      (15, 'Children of Dune', 'Dune sequel', 1976, 3, 4, 3, NOW(), 444)
ON CONFLICT DO NOTHING;

-- =========================
-- BOOK AUTHORS
-- =========================
INSERT INTO book_authors (book_id, author_id) VALUES
                                                  (1,1),(2,2),(3,3),(4,4),(5,5),
                                                  (6,6),(6,7),(7,8),(8,9),(9,10),(10,5),
                                                  (11,1),(12,4),(13,2),(14,8),(15,9)
ON CONFLICT DO NOTHING;

-- =========================
-- BOOK KEYWORDS
-- =========================
INSERT INTO book_keywords (book_id, word) VALUES
                                              (1,'dystopia'),(2,'software'),(3,'magic'),
                                              (4,'middle-earth'),(5,'refactoring'),
                                              (6,'programming'),(7,'future'),
                                              (8,'desert'),(9,'javascript'),
                                              (10,'biography'),
                                              (11,'politics'),(12,'legendarium'),
                                              (13,'architecture'),(14,'robots'),
                                              (15,'arrakis')
ON CONFLICT DO NOTHING;

-- =========================
-- BOOK PRICES
-- =========================
INSERT INTO book_prices (id, book_id, provider_id, price, format_id) VALUES
                                                                         (1,1,1,199.99,1),
                                                                         (2,2,1,299.99,2),
                                                                         (3,3,1,249.99,1),
                                                                         (4,4,1,229.99,1),
                                                                         (5,5,1,399.99,1),
                                                                         (6,6,1,349.99,1),
                                                                         (7,7,2,189.99,2),
                                                                         (8,8,1,259.99,1),
                                                                         (9,9,5,199.99,2),
                                                                         (10,10,2,279.99,1),
                                                                         (11,11,1,149.99,2),
                                                                         (12,12,1,219.99,1),
                                                                         (13,13,2,329.99,2),
                                                                         (14,14,3,99.99,3),
                                                                         (15,15,4,199.99,2)
ON CONFLICT DO NOTHING;

-- =========================
-- CARTS
-- =========================
INSERT INTO carts (id, user_id) VALUES
                                    (1,2),(2,3),(3,4),(4,5)
ON CONFLICT DO NOTHING;

-- =========================
-- CART ITEMS
-- =========================
INSERT INTO cart_items (id, cart_id, book_price_id, quantity) VALUES
                                                                  (1,1,1,2),
                                                                  (2,2,3,1),
                                                                  (3,3,6,1),
                                                                  (4,4,8,3)
ON CONFLICT DO NOTHING;

-- =========================
-- ORDERS (FIXED: consistent schema)
-- =========================
INSERT INTO orders (id, user_id, total_price, status) VALUES
                                                          (1,2,399.98,'Completed'),
                                                          (2,3,649.98,'Completed'),
                                                          (3,4,349.99,'Pending'),
                                                          (4,5,779.97,'Completed')
ON CONFLICT DO NOTHING;

-- =========================
-- ORDER ITEMS
-- =========================
INSERT INTO order_items (id, order_id, book_price_id, quantity, price_at_purchase) VALUES
                                                                                       (1,1,1,2,199.99),
                                                                                       (2,2,3,2,249.99),
                                                                                       (3,3,6,1,349.99),
                                                                                       (4,4,8,3,259.99)
ON CONFLICT DO NOTHING;

-- =========================
-- REVIEWS
-- =========================
INSERT INTO reviews (id, book_id, user_id, rating, comment) VALUES
                                                                (1,1,2,5,'Amazing book'),
                                                                (2,2,2,4,'Very useful'),
                                                                (3,3,3,5,'Magical'),
                                                                (4,4,4,5,'Classic'),
                                                                (5,5,3,4,'Technical'),
                                                                (6,6,5,5,'Must read'),
                                                                (7,7,4,4,'Great sci-fi'),
                                                                (8,8,5,5,'Masterpiece')
ON CONFLICT DO NOTHING;

-- =========================
-- WISHLIST
-- =========================
INSERT INTO wishlist (user_id, book_id) VALUES
                                            (2,2),(3,4),(3,8),(4,3),(5,6)
ON CONFLICT DO NOTHING;
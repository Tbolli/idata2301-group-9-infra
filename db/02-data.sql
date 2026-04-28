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
INSERT INTO users (id, name, mail, password, role_id) VALUES
(1, 'tom', 'tom@tom.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbddf3f7f5a0f8e5f6bcd', 2),
(2, 'user', 'user@bookora.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbddf3f7f5a0f8e5f6bcd', 1),
(3, 'alice', 'alice@mail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbddf3f7f5a0f8e5f6bcd', 1),
(4, 'bob', 'bob@mail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbddf3f7f5a0f8e5f6bcd', 1),
(5, 'charlie', 'charlie@mail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbddf3f7f5a0f8e5f6bcd', 1)
ON CONFLICT DO NOTHING;


-- =========================
-- CATEGORIES + SUBCATEGORIES
-- =========================
INSERT INTO categories (id, name) VALUES
(1, 'Fiction'),
(2, 'Technology')
ON CONFLICT DO NOTHING;

INSERT INTO sub_categories (id, name, category_id) VALUES
(1, 'Fantasy', 1),
(2, 'Programming', 2)
ON CONFLICT DO NOTHING;


-- =========================
-- AUTHORS
-- =========================
INSERT INTO authors (id, name) VALUES
(1, 'George Orwell'),
(2, 'Robert C. Martin')
ON CONFLICT DO NOTHING;


-- =========================
-- PUBLISHERS
-- =========================
INSERT INTO publishers (id, name) VALUES
(1, 'Penguin'),
(2, 'Prentice Hall')
ON CONFLICT DO NOTHING;


-- =========================
-- PROVIDERS
-- =========================
INSERT INTO providers (id, name) VALUES
(1, 'Amazon'),
(2, 'BookStore Local')
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
-- BOOKS
-- =========================
INSERT INTO books (id, title, description, published_year, category_id, publisher_id, sub_category_id) VALUES
(1, '1984', 'Dystopian novel', 1949, 1, 1, 1),
(2, 'Clean Code', 'Programming best practices', 2008, 2, 2, 2)
ON CONFLICT DO NOTHING;


-- =========================
-- BOOK AUTHORS
-- =========================
INSERT INTO book_authors (book_id, author_id) VALUES
(1, 1),
(2, 2)
ON CONFLICT DO NOTHING;


-- =========================
-- BOOK KEYWORDS
-- =========================
INSERT INTO book_keywords (book_id, word) VALUES
(1, 'dystopia'),
(2, 'software')
ON CONFLICT DO NOTHING;


-- =========================
-- BOOK PRICES
-- =========================
INSERT INTO book_prices (id, book_id, provider_id, price, format_id) VALUES
(1, 1, 1, 199.99, 1),
(2, 2, 1, 299.99, 2)
ON CONFLICT DO NOTHING;


-- =========================
-- CARTS
-- =========================
INSERT INTO carts (id, user_id) VALUES
(1, 2)
ON CONFLICT DO NOTHING;


-- =========================
-- CART ITEMS
-- =========================
INSERT INTO cart_items (id, cart_id, book_price_id, quantity) VALUES
(1, 1, 1, 2)
ON CONFLICT DO NOTHING;


-- =========================
-- ORDERS
-- =========================
INSERT INTO orders (id, user_id, total_price) VALUES
(1, 2, 399.98)
ON CONFLICT DO NOTHING;


-- =========================
-- ORDER ITEMS
-- =========================
INSERT INTO order_items (id, order_id, book_price_id, quantity, price_at_purchase) VALUES
(1, 1, 1, 2, 199.99)
ON CONFLICT DO NOTHING;


-- =========================
-- REVIEWS
-- =========================
INSERT INTO reviews (id, book_id, user_id, rating, comment) VALUES
(1, 1, 2, 5, 'Amazing book'),
(2, 2, 2, 4, 'Very useful')
ON CONFLICT DO NOTHING;


-- =========================
-- WISHLIST
-- =========================
INSERT INTO wishlist (user_id, book_id) VALUES
(2, 2)
ON CONFLICT DO NOTHING;


-- =========================
-- MORE AUTHORS
-- =========================
INSERT INTO authors (id, name) VALUES
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
-- MORE CATEGORIES / SUBCATEGORIES
-- =========================
INSERT INTO categories (id, name) VALUES
(3, 'Science'),
(4, 'History')
ON CONFLICT DO NOTHING;

INSERT INTO sub_categories (id, name, category_id) VALUES
(3, 'Science Fiction', 3),
(4, 'Biography', 4)
ON CONFLICT DO NOTHING;

-- =========================
-- MORE PUBLISHERS
-- =========================
INSERT INTO publishers (id, name) VALUES
(3, 'Bloomsbury'),
(4, 'HarperCollins'),
(5, 'OReilly Media')
ON CONFLICT DO NOTHING;

-- =========================
-- MORE PROVIDERS
-- =========================
INSERT INTO providers (id, name) VALUES
(3, 'Google Books'),
(4, 'Apple Books'),
(5, 'Kobo')
ON CONFLICT DO NOTHING;

-- =========================
-- MORE BOOKS
-- =========================
INSERT INTO books (id, title, description, published_year, category_id, publisher_id, sub_category_id) VALUES
(3, 'Harry Potter and the Sorcerer''s Stone', 'Wizarding adventure', 1997, 1, 3, 1),
(4, 'The Hobbit', 'Fantasy adventure', 1937, 1, 4, 1),
(5, 'Refactoring', 'Improving code structure', 1999, 2, 2, 2),
(6, 'The Pragmatic Programmer', 'Software craftsmanship', 1999, 2, 5, 2),
(7, 'Foundation', 'Epic science fiction', 1951, 3, 4, 3),
(8, 'Dune', 'Sci-fi political saga', 1965, 3, 4, 3),
(9, 'JavaScript: The Good Parts', 'JS fundamentals', 2008, 2, 5, 2),
(10, 'Steve Jobs', 'Biography of Steve Jobs', 2011, 4, 4, 4)
ON CONFLICT DO NOTHING;

-- =========================
-- BOOK AUTHORS
-- =========================
INSERT INTO book_authors (book_id, author_id) VALUES
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 5)
ON CONFLICT DO NOTHING;

-- =========================
-- BOOK KEYWORDS
-- =========================
INSERT INTO book_keywords (book_id, word) VALUES
(3, 'magic'),
(4, 'middle-earth'),
(5, 'refactoring'),
(6, 'programming'),
(7, 'future'),
(8, 'desert'),
(9, 'javascript'),
(10, 'biography')
ON CONFLICT DO NOTHING;

-- =========================
-- MORE BOOK PRICES (MULTIPLE PROVIDERS + FORMATS)
-- =========================
INSERT INTO book_prices (id, book_id, provider_id, price, format_id) VALUES
-- Harry Potter
(3, 3, 1, 249.99, 1),
(4, 3, 2, 199.99, 2),
(5, 3, 3, 99.99, 3),

-- The Hobbit
(6, 4, 1, 229.99, 1),
(7, 4, 4, 179.99, 2),

-- Refactoring
(8, 5, 1, 399.99, 1),
(9, 5, 5, 299.99, 3),

-- Pragmatic Programmer
(10, 6, 1, 349.99, 1),
(11, 6, 3, 199.99, 3),

-- Foundation
(12, 7, 2, 189.99, 2),
(13, 7, 3, 89.99, 3),

-- Dune
(14, 8, 1, 259.99, 1),
(15, 8, 4, 149.99, 2),

-- JS Good Parts
(16, 9, 5, 199.99, 2),
(17, 9, 3, 99.99, 3),

-- Steve Jobs
(18, 10, 2, 279.99, 1),
(19, 10, 4, 199.99, 2)
ON CONFLICT DO NOTHING;

-- =========================
-- MORE USERS
-- =========================
-- INSERT INTO users (id, name, mail, password, role_id) VALUES
-- (3, 'alice', 'alice@mail.com', 'password', 1),
-- (4, 'bob', 'bob@mail.com', 'password', 1),
-- (5, 'charlie', 'charlie@mail.com', 'password', 1)
-- ON CONFLICT DO NOTHING;

-- =========================
-- CARTS
-- =========================
INSERT INTO carts (id, user_id) VALUES
(2, 3),
(3, 4),
(4, 5)
ON CONFLICT DO NOTHING;

-- =========================
-- CART ITEMS
-- =========================
INSERT INTO cart_items (id, cart_id, book_price_id, quantity) VALUES
(2, 2, 3, 1),
(3, 2, 8, 2),
(4, 3, 10, 1),
(5, 4, 14, 3)
ON CONFLICT DO NOTHING;

-- =========================
-- ORDERS
-- =========================
INSERT INTO orders (id, user_id, total_price, status) VALUES
(2, 3, 649.98, 'Completed'),
(3, 4, 349.99, 'Pending'),
(4, 5, 779.97, 'Completed')
ON CONFLICT DO NOTHING;

-- =========================
-- ORDER ITEMS
-- =========================
INSERT INTO order_items (id, order_id, book_price_id, quantity, price_at_purchase) VALUES
(2, 2, 3, 2, 249.99),
(3, 3, 10, 1, 349.99),
(4, 4, 14, 3, 259.99)
ON CONFLICT DO NOTHING;

-- =========================
-- REVIEWS
-- =========================
INSERT INTO reviews (id, book_id, user_id, rating, comment) VALUES
(3, 3, 3, 5, 'Magical experience'),
(4, 4, 4, 5, 'Classic adventure'),
(5, 5, 3, 4, 'Very technical'),
(6, 6, 5, 5, 'Must read for devs'),
(7, 7, 4, 4, 'Great sci-fi'),
(8, 8, 5, 5, 'Masterpiece'),
(9, 9, 3, 4, 'Very insightful'),
(10, 10, 4, 5, 'Inspiring story')
ON CONFLICT DO NOTHING;

-- =========================
-- WISHLIST
-- =========================
INSERT INTO wishlist (user_id, book_id) VALUES
(3, 4),
(3, 8),
(4, 3),
(5, 6),
(5, 7)
ON CONFLICT DO NOTHING;
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
-- INSERT INTO users (id, name, mail, password, role_id) VALUES
-- (1, 'tom', 'tom@tom.com', 'password', 2),
-- (2, 'User', 'user@bookora.com', 'password', 1)
-- ON CONFLICT DO NOTHING;


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
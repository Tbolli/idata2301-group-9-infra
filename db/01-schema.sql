-- =========================
-- BASE TABLES (no deps)
-- =========================

CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    type VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE providers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE publishers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE format (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64) NOT NULL
);

-- =========================
-- DEPENDENT TABLES
-- =========================

CREATE TABLE sub_categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mail VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(265),
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    image_url VARCHAR(500),
    published_year INTEGER,
    category_id INTEGER,
    publisher_id INTEGER,
    sub_category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(id),
    FOREIGN KEY (sub_category_id) REFERENCES sub_categories(id)
);

-- =========================
-- JOIN TABLES
-- =========================

CREATE TABLE book_authors (
    book_id INTEGER NOT NULL,
    author_id INTEGER NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

CREATE TABLE book_keywords (
    book_id INTEGER NOT NULL,
    word VARCHAR(100) NOT NULL,
    PRIMARY KEY (book_id, word),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- =========================
-- COMMERCE
-- =========================

CREATE TABLE book_prices (
    id SERIAL PRIMARY KEY,
    book_id INTEGER,
    provider_id INTEGER,
    price NUMERIC(10,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'NOK',
    format_id INTEGER,
    FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE,
    FOREIGN KEY (provider_id) REFERENCES providers(id) ON DELETE CASCADE,
    FOREIGN KEY (format_id) REFERENCES format(id)
);

CREATE TABLE carts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE cart_items (
    id SERIAL PRIMARY KEY,
    cart_id INTEGER,
    book_price_id INTEGER,
    quantity INTEGER DEFAULT 1,
    FOREIGN KEY (cart_id) REFERENCES carts(id),
    FOREIGN KEY (book_price_id) REFERENCES book_prices(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    total_price NUMERIC(10,2),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Completed',
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INTEGER,
    book_price_id INTEGER,
    quantity INTEGER DEFAULT 1,
    price_at_purchase NUMERIC(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (book_price_id) REFERENCES book_prices(id)
);

-- =========================
-- SOCIAL / USER DATA
-- =========================

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    book_id INTEGER,
    user_id INTEGER,
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE wishlist (
    user_id INTEGER,
    book_id INTEGER,
    PRIMARY KEY (user_id, book_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE
);
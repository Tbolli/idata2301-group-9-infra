CREATE INDEX idx_books_cursor ON books(created_at, id);
CREATE INDEX idx_books_title ON books(title);
CREATE INDEX idx_book_authors_book_id ON book_authors(book_id);
CREATE INDEX idx_book_keywords_book_id ON book_keywords(book_id);
CREATE INDEX idx_book_prices_book_id ON book_prices(book_id);
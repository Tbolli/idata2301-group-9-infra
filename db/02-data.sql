-- =========================
-- ROLES
-- =========================
INSERT INTO public.roles (id, type) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMINISTRATOR')
ON CONFLICT DO NOTHING;


-- =========================
-- USERS
-- =========================
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (1, 'Henry Visitor', 'henry@outlook.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (2, 'Postman Tester', 'postman@bookora.no', '$2a$10$MLARmnbFHMPeZew2s.k7muXgbR2KyZGOQin5wUzZD1HHXQVrLit9G', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (5, 'test', 'test2@gmail.com', '$2a$10$nyvKalOYcSTjIG7Fp4ZsrumzKLihZKsI4QdVBSMWdlFjOm.NTiwK6', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (6, 'test2', 'test@gmail.com', '$2a$10$amKhoocCLHC40NF.FTMtueYA189yArfKexnub6BVObAO35cJAsnp2', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (7, 'eyob', 'eyob@gmail.com', '$2a$10$fqmXu2qq1ydTK1E/NsNar.uLEBPiU84ehDn/J6dDbDSVdgrDbaoKO', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (8, 'testNathan', 'testNathan@gmail.com', '$2a$10$KGp3ZqetSwEqJ3fsiuXZSODK6LaTx91NSRHOX2vJgt1bHZ8OIMZGS', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (9, 'TestNameNathan', 'TestEmailNathan@gmail.com', '$2a$10$ARuE1.TF6Xk/UK2vwZgH1u9hvToWX5m1HvjgbSXvv7vdX33f/9MWq', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (14, 'tom', 'tom@tom.com', '$2a$10$sADHpgJH81PDYVcc6txU5eTSv.GfIIO7ksG9k7K9Zlf9aRfhdGUmK', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (15, 'tim', 'tim@tim.com', NULL, 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (16, 'Test User', 'test@example.com', '$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (17, 'eyob2', 'eyob@example.com', '$2a$10$53KjxRVR1xHKez9rXNoDtOYzTfMOa/CPvmZk70j4ix9RNbXn7LUaK', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (18, 'eyob3', 'eyob3@example.com', '$2a$10$OhxwNtCQJwMQxeAdOUYft.ek5PiXJBuQUPOmLangmglaczCajfdNm', 1);
INSERT INTO public.users (id, name, mail, password, role_id) VALUES (19, 'user', 'user@gmail.com', '$2a$10$Xm9wzmiUaD6wc3xhoz5wsO0MiHN62NLrDz6CyXRBLoIkX.Q2.oYy2', 1);


-- =========================
-- CATEGORIES
-- =========================
INSERT INTO public.categories (id, name) VALUES (1, 'Fiction');
INSERT INTO public.categories (id, name) VALUES (2, 'Children');
INSERT INTO public.categories (id, name) VALUES (3, 'Technology');
INSERT INTO public.categories (id, name) VALUES (4, 'Digital');
INSERT INTO public.categories (id, name) VALUES (5, 'Horror');

INSERT INTO public.sub_categories (id, name, category_id) VALUES (1, 'Classic Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (2, 'Modern Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (3, 'Fantasy Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (4, 'Historical Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (5, 'Romance Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (6, 'Crime Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (7, 'Thriller Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (8, 'Science Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (9, 'Adventure Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (10, 'Literary Fiction', 1);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (11, 'Children''s Literature', 2);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (12, 'Picture Books', 2);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (13, 'Middle Grade', 2);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (14, 'Young Adult', 2);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (15, 'Childrens Fantasy', 2);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (16, 'Childrens Adventure', 2);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (17, 'Educational Children''s', 2);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (18, 'Software Development', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (19, 'Cybersecurity', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (20, 'Data Science', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (21, 'Artificial Intelligence', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (22, 'Cloud Computing', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (23, 'Web Development', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (24, 'DevOps', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (25, 'Database Management', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (26, 'Mobile Development', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (27, 'Game Development', 3);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (28, 'Digital Culture', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (29, 'Digital Society', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (30, 'Digital Product Design', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (31, 'Social Media', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (32, 'Digital Marketing', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (33, 'Digital Wellbeing', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (34, 'E-Commerce', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (35, 'Digital Privacy', 4);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (36, 'Psychological Horror', 5);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (37, 'Supernatural Horror', 5);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (38, 'Gothic Horror', 5);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (39, 'Cosmic Horror', 5);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (40, 'Slasher Horror', 5);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (41, 'Horror Comedy', 5);
INSERT INTO public.sub_categories (id, name, category_id) VALUES (42, 'Paranormal Horror', 5);



-- =========================
-- FORMAT
-- =========================
INSERT INTO public.format (id, name) VALUES (1, 'New');
INSERT INTO public.format (id, name) VALUES (2, 'Used');
INSERT INTO public.format (id, name) VALUES (3, 'Audiobook');
INSERT INTO public.format (id, name) VALUES (4, 'Ebook');

-- =========================
-- AUTHORS
-- =========================
INSERT INTO public.authors (id, name) VALUES (1, 'Harper Lee');
INSERT INTO public.authors (id, name) VALUES (2, 'George Orwell');
INSERT INTO public.authors (id, name) VALUES (3, 'F. Scott Fitzgerald');
INSERT INTO public.authors (id, name) VALUES (4, 'Khaled Hosseini');
INSERT INTO public.authors (id, name) VALUES (5, 'Erin Morgenstern');
INSERT INTO public.authors (id, name) VALUES (6, 'J.D. Salinger');
INSERT INTO public.authors (id, name) VALUES (7, 'Roald Dahl');
INSERT INTO public.authors (id, name) VALUES (8, 'E.B. White');
INSERT INTO public.authors (id, name) VALUES (9, 'Robert C. Martin');
INSERT INTO public.authors (id, name) VALUES (10, 'Charles J. Brooks');
INSERT INTO public.authors (id, name) VALUES (11, 'Cal Newport');
INSERT INTO public.authors (id, name) VALUES (12, 'Nicholas Carr');
INSERT INTO public.authors (id, name) VALUES (13, 'Nir Eyal');


-- =========================
-- PUBLISHERS
-- =========================
INSERT INTO public.publishers (id, name) VALUES (1, 'Penguin Random House');
INSERT INTO public.publishers (id, name) VALUES (2, 'HarperCollins');
INSERT INTO public.publishers (id, name) VALUES (3, 'Simon & Schuster');
INSERT INTO public.publishers (id, name) VALUES (4, 'Hachette Book Group');
INSERT INTO public.publishers (id, name) VALUES (5, 'Macmillan Publishers');
INSERT INTO public.publishers (id, name) VALUES (6, 'Oxford University Press');
INSERT INTO public.publishers (id, name) VALUES (7, 'Cambridge University Press');
INSERT INTO public.publishers (id, name) VALUES (8, 'Scholastic Corporation');
INSERT INTO public.publishers (id, name) VALUES (9, 'Bloomsbury Publishing');
INSERT INTO public.publishers (id, name) VALUES (10, 'Wiley & Sons');
INSERT INTO public.publishers (id, name) VALUES (11, 'Pearson Education');
INSERT INTO public.publishers (id, name) VALUES (12, 'McGraw-Hill Education');
INSERT INTO public.publishers (id, name) VALUES (13, 'Norton & Company');
INSERT INTO public.publishers (id, name) VALUES (14, 'Vintage Books');
INSERT INTO public.publishers (id, name) VALUES (15, 'Farrar, Straus and Giroux');


-- =========================
-- PROVIDERS
-- =========================
INSERT INTO public.providers (id, name) VALUES (1, 'Bookis');
INSERT INTO public.providers (id, name) VALUES (2, 'ebay');
INSERT INTO public.providers (id, name) VALUES (3, 'Finn.no');
INSERT INTO public.providers (id, name) VALUES (4, 'Amazon Marketplace');
INSERT INTO public.providers (id, name) VALUES (5, 'Ark');
INSERT INTO public.providers (id, name) VALUES (6, 'Adlibris');
INSERT INTO public.providers (id, name) VALUES (7, 'Amazon');
INSERT INTO public.providers (id, name) VALUES (8, 'Norli');
INSERT INTO public.providers (id, name) VALUES (9, 'Bookshop.org');
INSERT INTO public.providers (id, name) VALUES (10, 'AbeBooks');


-- =========================
-- BOOKS
-- =========================
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (1, 'To Kill a Mockingbird', 'A haunting portrait of race and class, innocence and injustice, hypocrisy and heroism, tradition and transformation in the Deep South of the 1930s, Harper Lee''s To Kill a Mockingbird remains as important today as it was upon its initial publication in 1960, during the turbulent years of the Civil Rights movement. Now, this most beloved and acclaimed novel is reborn for a new age as a gorgeous graphic novel. Scout, Jem, Boo Radley, Atticus Finch and the small town of Maycomb, Alabama, are all captured in vivid and moving illustrations by artist Fred Fordham. Enduring in vision, Harper Lee''s timeless novel illuminates the complexities of human nature and the depths of the human heart with humor, unwavering honesty and a tender, nostalgic beauty. Lifetime admirers and new readers alike will be touched by this special visual edition.', 'https://cdn.britannica.com/21/182021-050-666DB6B1/book-cover-To-Kill-a-Mockingbird-many-1961.jpg', 1960, 336, 1, 2, 1);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (2, '1984', 'George Orwell''s 1984 is one of the most influential dystopian novels ever written, portraying a society where truth is manipulated, individuality is forbidden, and citizens live under the constant gaze of an all-powerful regime. The novel’s iconic warning - “Big Brother is watching you” — has become synonymous with the dangers of unchecked surveillance and authoritarian control. Set in the oppressive world of Oceania, the story follows Winston Smith, a low-ranking member of the Ministry of Truth whose job is to rewrite historical records to match the Party’s shifting narrative. Quietly dissatisfied and yearning for authenticity, Winston begins a fragile rebellion that brings him face-to-face with the terrifying mechanisms of power. Through his journey, Orwell exposes the fragility of freedom and the profound impact of language, propaganda, and fear on the human spirit. Both a gripping tale and a prophetic critique of political oppression, 1984 endures as a powerful reminder of the importance of truth, autonomy, and resistance in the face of tyranny.', 'https://images.cdn.europe-west1.gcp.commercetools.com/b0c1af64-23c6-499f-8892-0976d37c1c31/default-V_jEcDG7-medium.jpg?w=400&f=webp', 1949, 328, 1, 1, 1);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (3, 'The Great Gatsby', 'F. Scott Fitzgerald’s The Great Gatsby is a timeless exploration of ambition, desire, and illusion set against the glittering backdrop of 1920s America. Celebrated for its lyrical prose and haunting portrayal of the American Dream, the novel captures the magnetic charm and ultimate fragility of a world built on wealth and longing. The story follows Nick Carraway, a young man drawn into the dazzling orbit of his enigmatic neighbor, Jay Gatsby - a self-made millionaire known for his lavish parties and mysterious past. As Nick becomes entangled in Gatsby''s pursuit of the beautiful Daisy Buchanan, he witnesses the collision between dreams and reality, love and loss, and privilege and moral decay. Beneath the shimmering surface of opulence lies a poignant critique of materialism and the emptiness it often conceals. A staple of American literature, The Great Gatsby endures as a powerful meditation on identity, aspiration, and the costs of yearning for something forever out of reach. Its beauty and tragedy continue to resonate with readers nearly a century after its publication.', 'https://en.wikipedia.org/wiki/The_Great_Gatsby#/media/File:The_Great_Gatsby_Cover_1925_Retouched.jpg', 1925, 180, 1, 3, 1);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (4, 'The Kite Runner', 'Khaled Hosseini''s The Kite Runner is a powerful and deeply emotional story about childhood, loyalty, and the lifelong quest for redemption. Set against the shifting political and cultural landscape of Afghanistan, the novel follows Amir, a privileged young boy, and his loyal friend Hassan, as a single traumatic event shapes the course of their intertwined lives. Years later, haunted by guilt and longing for forgiveness, Amir embarks on a journey back to a homeland transformed by conflict and loss. Through its moving portrayal of friendship and atonement, the novel captures the complexity of human relationships and the painful beauty of second chances. Heartbreaking, hopeful, and unforgettable, The Kite Runner remains one of the most celebrated modern novels, resonating with readers for its honesty and emotional depth.', 'https://www.norli.no/media/catalog/product/9/7/9781526604736_1.jpg?auto=webp&format=pjpg&width=960&height=1200&fit=cover', 2003, 371, 1, 1, 2);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (5, 'The Night Circus', 'Erin Morgenstern’s The Night Circus is a lush and enchanting tale set within a mysterious circus that appears without warning and opens only at night. Within its black-and-white striped tents, illusions become reality, and every performance is a breathtaking work of magic. At the heart of the story lies a fierce but hidden competition between two young magicians, Celia Bowen and Marco Alisdair, bound from childhood to a magical challenge they barely understand. As their creations transform the circus into a living masterpiece, the two fall deeply in love — a bond that threatens the fate of everyone connected to the circus. With its dreamlike imagery and beautifully woven narrative, The Night Circus is a captivating novel that transports readers into a world of wonder, passion, and enchantment.', 'https://www.ark.no/produkt/the-night-circus-9780307744432', 2011, 512, 1, 14, 3);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (6, 'The Catcher in the Rye', 'J.D. Salinger’s The Catcher in the Rye is a groundbreaking coming-of-age novel that follows the restless journey of Holden Caulfield, a disillusioned teenager wandering the streets of New York City after being expelled from school. Through his sharp, witty, and often painful reflections, Holden grapples with growing up, authenticity, and the fear of becoming part of a world he finds overwhelmingly “phony.” Narrated in Holden’s distinctive voice, the novel captures the turbulence of adolescence with unmatched honesty and emotional resonance. His search for meaning, connection, and a place to belong has made the book a touchstone for generations of young readers. A literary classic, The Catcher in the Rye remains a vivid and influential portrait of youth, rebellion, and the universal struggle to understand oneself.', 'https://images.cdn.europe-west1.gcp.commercetools.com/b0c1af64-23c6-499f-8892-0976d37c1c31/default-ifXO3bEV-medium.jpg?w=400&f=webp', 1951, 277, 1, NULL, 1);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (7, 'Matilda', 'Roald Dahl’s Matilda is a heartwarming and imaginative tale about a brilliant young girl with extraordinary abilities and a fierce love for books. Despite growing up with neglectful parents and a terrifying school headmistress, Matilda discovers her own strength — both intellectual and magical — and learns to stand up for herself and those she cares about. Filled with humor, charm, and unforgettable characters, Matilda remains one of Dahl’s most beloved stories, celebrating kindness, cleverness, and the triumph of good over cruelty.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTu9R_Kx8NiFAFNBnEmK8PvVW23oAGnteUYzxJkbjNeTOzguqdX', 1988, 240, 2, 5, 11);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (8, 'Charlottes Web', 'E.B. White’s Charlotte’s Web is a timeless story of friendship and compassion, centered on the unlikely bond between Wilbur, a gentle farm pig, and Charlotte, a wise and caring spider. When Wilbur’s life is in danger, Charlotte uses her clever web-weaving skills to save him, crafting messages that capture the hearts of everyone who sees them. Moving, humorous, and beautifully told, Charlotte’s Web teaches readers about loyalty, bravery, and the bittersweet nature of growing up. It remains a treasured classic for children and adults alike.', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fe/CharlotteWeb.png/250px-CharlotteWeb.png', 1952, 192, 2, 2, 11);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (9, 'Clean Code', 'Robert C. Martin’s Clean Code is a foundational guide for developers seeking to write readable, maintainable, and efficient software. Through real-world examples, refactoring exercises, and practical principles, the book emphasizes the importance of craftsmanship and thoughtful design in everyday coding practices. Structured around clear guidelines and case studies, Clean Code challenges programmers to think critically about naming, structure, function length, testing, and architectural decisions. The book not only demonstrates what “clean” code looks like but also explains why it matters — for long-term sustainability, collaboration, and project success. Widely regarded as one of the most influential texts in modern software engineering, Clean Code continues to shape the habits and mindset of programmers worldwide.', 'https://m.media-amazon.com/images/I/81Rnac2Fq+L._AC_UF1000,1000_QL80_.jpg', 2008, 464, 3, 11, 18);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (10, 'Cybersecurity Essentials', 'Cybersecurity Essentials provides a clear and accessible introduction to the core concepts of modern digital security. Written for students and professionals entering the field, the book explains how networks, systems, and data can be protected against ever-evolving cyber threats. Through practical examples and real-world scenarios, Brooks covers critical topics such as encryption, network defense, ethical hacking, incident response, and risk management. The book emphasizes both the technical foundations and the strategic thinking required to safeguard digital environments in an increasingly connected world. Combining technical depth with readability, Cybersecurity Essentials offers a solid starting point for anyone looking to understand cybersecurity principles and build a career in one of today’s most important technology domains.', 'https://www.adlibris.com/images/9781119362395/cybersecurity-essentials.jpg', 2018, 288, 3, 10, 19);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (11, 'Digital Minimalism', 'Cal Newport’s Digital Minimalism explores how intentional, mindful use of technology can improve focus, productivity, and overall life satisfaction. Through practical strategies and real-world stories, Newport shows readers how to regain control in a world saturated with notifications, social media, and digital noise. A thoughtful guide for anyone seeking balance in the digital age.', 'https://www.norli.no/media/catalog/product/9/7/9780241453575_1_1.jpg', 2019, 304, 4, 1, 28);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (12, 'The Shallows', 'In The Shallows, Nicholas Carr examines how constant online engagement reshapes the way we think, read, and process information. Blending neuroscience, history, and cultural analysis, the book reveals how digital media affects our attention span, memory, and depth of thought. Insightful and provocative, it challenges readers to reflect on how the internet influences their minds and habits.', 'https://www.norli.no/media/catalog/product/9/7/9781838952587_1.jpg', 2010, 320, 4, 13, 29);
INSERT INTO public.books (id, title, description, image_url, published_year, page_count, category_id, publisher_id, sub_category_id) VALUES (13, 'Hooked', 'Nir Eyal’s Hooked reveals the psychological framework behind products that capture users’ attention and keep them coming back. Drawing from behavioral science and real-world product examples, the book introduces the “Hook Model,” a step-by-step approach for creating engaging digital experiences. A widely used resource in UX, product design, and tech entrepreneurship.', 'https://www.norli.no/media/catalog/product/9/7/9780241184837_1_1.jpg', 2014, 256, 4, 1, 30);

/**
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
*/

-- =========================
-- MORE BOOKS
-- =========================
/**
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
*/

-- =========================
-- BOOK AUTHORS
-- =========================

INSERT INTO public.book_authors (book_id, author_id) VALUES (1, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (2, 2);
INSERT INTO public.book_authors (book_id, author_id) VALUES (3, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (4, 4);
INSERT INTO public.book_authors (book_id, author_id) VALUES (5, 5);
INSERT INTO public.book_authors (book_id, author_id) VALUES (6, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (7, 7);
INSERT INTO public.book_authors (book_id, author_id) VALUES (8, 8);
INSERT INTO public.book_authors (book_id, author_id) VALUES (9, 9);
INSERT INTO public.book_authors (book_id, author_id) VALUES (10, 10);
INSERT INTO public.book_authors (book_id, author_id) VALUES (11, 11);
INSERT INTO public.book_authors (book_id, author_id) VALUES (12, 12);
INSERT INTO public.book_authors (book_id, author_id) VALUES (13, 13);


-- =========================
-- BOOK KEYWORDS
-- =========================

INSERT INTO public.book_keywords (book_id, word) VALUES (1, 'Justice');
INSERT INTO public.book_keywords (book_id, word) VALUES (1, 'Morality');
INSERT INTO public.book_keywords (book_id, word) VALUES (1, 'Childhood');
INSERT INTO public.book_keywords (book_id, word) VALUES (1, 'Courage');
INSERT INTO public.book_keywords (book_id, word) VALUES (1, 'Empathy');
INSERT INTO public.book_keywords (book_id, word) VALUES (2, 'Totalitarianism');
INSERT INTO public.book_keywords (book_id, word) VALUES (2, 'Surveillance');
INSERT INTO public.book_keywords (book_id, word) VALUES (2, 'Rebellion');
INSERT INTO public.book_keywords (book_id, word) VALUES (2, 'Dystopia');
INSERT INTO public.book_keywords (book_id, word) VALUES (2, 'Freedom');
INSERT INTO public.book_keywords (book_id, word) VALUES (3, 'American Dream');
INSERT INTO public.book_keywords (book_id, word) VALUES (3, 'Wealth');
INSERT INTO public.book_keywords (book_id, word) VALUES (3, 'Love');
INSERT INTO public.book_keywords (book_id, word) VALUES (3, 'Identity');
INSERT INTO public.book_keywords (book_id, word) VALUES (3, 'Tragedy');
INSERT INTO public.book_keywords (book_id, word) VALUES (4, 'Friendship');
INSERT INTO public.book_keywords (book_id, word) VALUES (4, 'Guilt');
INSERT INTO public.book_keywords (book_id, word) VALUES (4, 'Redemption');
INSERT INTO public.book_keywords (book_id, word) VALUES (4, 'Family');
INSERT INTO public.book_keywords (book_id, word) VALUES (4, 'Betrayal');
INSERT INTO public.book_keywords (book_id, word) VALUES (5, 'Magic');
INSERT INTO public.book_keywords (book_id, word) VALUES (5, 'Rivalry');
INSERT INTO public.book_keywords (book_id, word) VALUES (5, 'Romance');
INSERT INTO public.book_keywords (book_id, word) VALUES (5, 'Mystery');
INSERT INTO public.book_keywords (book_id, word) VALUES (5, 'Fantasy');
INSERT INTO public.book_keywords (book_id, word) VALUES (6, 'Adolescence');
INSERT INTO public.book_keywords (book_id, word) VALUES (6, 'Identity');
INSERT INTO public.book_keywords (book_id, word) VALUES (6, 'Isolation');
INSERT INTO public.book_keywords (book_id, word) VALUES (6, 'Rebellion');
INSERT INTO public.book_keywords (book_id, word) VALUES (6, 'Coming-of-age');
INSERT INTO public.book_keywords (book_id, word) VALUES (7, 'Magic');
INSERT INTO public.book_keywords (book_id, word) VALUES (7, 'Intelligence');
INSERT INTO public.book_keywords (book_id, word) VALUES (7, 'Family');
INSERT INTO public.book_keywords (book_id, word) VALUES (7, 'Courage');
INSERT INTO public.book_keywords (book_id, word) VALUES (7, 'Childhood');
INSERT INTO public.book_keywords (book_id, word) VALUES (8, 'Friendship');
INSERT INTO public.book_keywords (book_id, word) VALUES (8, 'Loyalty');
INSERT INTO public.book_keywords (book_id, word) VALUES (8, 'Animals');
INSERT INTO public.book_keywords (book_id, word) VALUES (8, 'Courage');
INSERT INTO public.book_keywords (book_id, word) VALUES (8, 'Kindness');
INSERT INTO public.book_keywords (book_id, word) VALUES (9, 'Software Engineering');
INSERT INTO public.book_keywords (book_id, word) VALUES (9, 'Best Practices');
INSERT INTO public.book_keywords (book_id, word) VALUES (9, 'Coding');
INSERT INTO public.book_keywords (book_id, word) VALUES (9, 'Craftsmanship');
INSERT INTO public.book_keywords (book_id, word) VALUES (9, 'Programming');
INSERT INTO public.book_keywords (book_id, word) VALUES (10, 'Security');
INSERT INTO public.book_keywords (book_id, word) VALUES (10, 'Networks');
INSERT INTO public.book_keywords (book_id, word) VALUES (10, 'Encryption');
INSERT INTO public.book_keywords (book_id, word) VALUES (10, 'Cyber Threats');
INSERT INTO public.book_keywords (book_id, word) VALUES (10, 'Risk Management');
INSERT INTO public.book_keywords (book_id, word) VALUES (11, 'Technology');
INSERT INTO public.book_keywords (book_id, word) VALUES (11, 'Wellbeing');
INSERT INTO public.book_keywords (book_id, word) VALUES (11, 'Productivity');
INSERT INTO public.book_keywords (book_id, word) VALUES (11, 'Digital Habits');
INSERT INTO public.book_keywords (book_id, word) VALUES (11, 'Lifestyle');
INSERT INTO public.book_keywords (book_id, word) VALUES (12, 'Internet');
INSERT INTO public.book_keywords (book_id, word) VALUES (12, 'Cognition');
INSERT INTO public.book_keywords (book_id, word) VALUES (12, 'Attention');
INSERT INTO public.book_keywords (book_id, word) VALUES (12, 'Media');
INSERT INTO public.book_keywords (book_id, word) VALUES (12, 'Digital Impact');
INSERT INTO public.book_keywords (book_id, word) VALUES (13, 'UX Design');
INSERT INTO public.book_keywords (book_id, word) VALUES (13, 'Behavior Psychology');
INSERT INTO public.book_keywords (book_id, word) VALUES (13, 'Habits');
INSERT INTO public.book_keywords (book_id, word) VALUES (13, 'Digital Products');
INSERT INTO public.book_keywords (book_id, word) VALUES (13, 'Technology');


-- =========================
-- BOOK PRICES
-- =========================
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (1, 1, 1, 139.00, 'NOK', 2);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (2, 1, 2, 119.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (3, 2, 3, 95.00, 'NOK', 1);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (4, 2, 4, 125.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (5, 3, 5, 159.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (6, 3, 6, 139.00, 'NOK', 1);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (7, 4, 3, 89.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (8, 4, 2, 75.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (9, 5, 7, 199.00, 'NOK', 2);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (10, 5, 8, 179.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (11, 6, 5, 149.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (12, 6, 9, 129.00, 'NOK', 1);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (13, 7, 8, 129.00, 'NOK', 1);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (14, 7, 6, 115.00, 'NOK', 3);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (15, 8, 3, 49.00, 'NOK', 1);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (16, 8, 10, 55.00, 'NOK', 3);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (17, 9, 7, 389.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (18, 9, 6, 349.00, 'NOK', 1);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (19, 10, 8, 299.00, 'NOK', 3);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (20, 10, 7, 279.00, 'NOK', 2);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (21, 11, 5, 169.00, 'NOK', 2);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (22, 11, 9, 149.00, 'NOK', 2);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (23, 12, 3, 79.00, 'NOK', 4);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (24, 12, 10, 65.00, 'NOK', 1);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id) VALUES (25, 13, 7, 219.00, 'NOK', 2);
INSERT INTO public.book_prices (id, book_id, provider_id, price, currency, format_id, stock) VALUES (26, 13, 6, 199.00, 'NOK', 1, 12);

-- Fix the invisible sequence counters!
SELECT setval('users_id_seq', (SELECT MAX(id) FROM users));
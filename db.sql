use paplo;

CREATE TABLE Users(
    user_id VARCHAR(50) NOT NULL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);


CREATE TABLE Books(
    title VARCHAR(100) NOT NULL PRIMARY KEY,
    link_to_buy VARCHAR(100),
    audio_book VARCHAR(100)
);

CREATE TABLE Reviews(
    user_id VARCHAR(50),
    book_title VARCHAR(100),
    like_ bit,
    review VARCHAR(250),
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    FOREIGN KEY(book_title) REFERENCES Books(title),
	primary key(user_id, book_title)
);

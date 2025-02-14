CREATE TABLE IF NOT EXISTS author (
    object_id BIGINT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    middle_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS book (
    object_id BIGINT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description VARCHAR(3000),
    author_id BIGINT NOT NULL,
    status VARCHAR(50) NOT NULL,
    count_pages INT,
    image TEXT,

    FOREIGN KEY (author_id) REFERENCES author(object_id)
);
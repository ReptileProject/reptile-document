USE reptile_project;

CREATE TABLE post(
	post_id INT,
    user_serial INT,
    content MEDIUMTEXT NOT NULL,
    good_cnt INT DEFAULT 0,
    write_time DATETIME,
    deleted TINYINT(1) DEFAULT 0,
    
    PRIMARY KEY (post_id),
    FOREIGN KEY (user_serial) REFERENCES users(user_serial) ON DELETE SET NULL
);

CREATE TABLE comment(
	comment_id INT,
    user_serial INT,
    post_id INT NOT NULL,
    content TEXT NOT NULL,
    goot_cnt INT DEFAULT 0,
    write_time DATETIME,
    deleted TINYINT(1) DEFAULT 0,
    parent_comment INT,
    
    PRIMARY KEY (comment_id),
	FOREIGN KEY (user_serial) REFERENCES users(user_serial) ON DELETE SET NULL,
    FOREIGN KEY (post_id) REFERENCES users(user_serial) ON DELETE CASCADE,
    FOREIGN KEY (parent_comment) REFERENCES comment(comment_id) ON DELETE CASCADE
);

CREATE TABLE TAG(
	tag_id int,
    tag_name varchar(255),
    
    PRIMARY KEY (tag_id)
);

CREATE TABLE POST_TAG(
	post_id INT,
    tag_id INT,
    
    PRIMARY KEY (post_id, tag_id),
    FOREIGN KEY (post_id) REFERENCES users(user_serial) ON DELETE CASCADE,
    FOREIGN KEY (parent_comment) REFERENCES comment(comment_id) ON DELETE CASCADE
)
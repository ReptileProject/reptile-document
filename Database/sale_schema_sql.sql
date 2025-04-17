CREATE TABLE product(
	product_id INT,
    user_serial INT NOT NULL,
    price INT NOT NULL,
    content MEDIUMTEXT NOT NULL,
    view_cnt INT DEFAULT 0,
    good_cnt INT DEFAULT 0,
    write_time DATETIME,
    deleted TINYINT(1),
    
    PRIMARY KEY (product_id),
    FOREIGN KEY (user_serial) REFERENCES users(user_serial)
);

CREATE TABLE deal(
	user_serial INT,
    product_id INT,
    deal_time DATETIME,
    price INT,
    rate_id INT,
    
    PRIMARY KEY (user_serial, product_id),
    FOREIGN KEY (user_serial) REFERENCES users(user_serial),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (rate_id) REFERENCES rate(rate_id)
);

CREATE TABLE rate(
	rate_id INT,
    score INT,
    comment TEXT,
    
    PRIMARY KEY (rate_id)
);
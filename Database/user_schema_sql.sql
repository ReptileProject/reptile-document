USE reptile_project;

CREATE TABLE authority(
	auth_name varchar(25),
    auth_group varchar(25),
    
    PRIMARY KEY (auth_name)
);

CREATE TABLE users(
	user_serial INT ,
    user_name VARCHAR(25) NOT NULL,
    user_id VARCHAR(50) NOT NULL UNIQUE,
    user_password VARCHAR(255) NOT NULL,
    user_email VARCHAR(50),
    authority VARCHAR(25) NOT NULL,
    last_connect_time DATETIME,
    deleted TINYINT(1) DEFAULT 0,
    
    PRIMARY KEY (user_serial),
    FOREIGN KEY (authority) REFERENCES authority(auth_name) ON DELETE CASCADE
);
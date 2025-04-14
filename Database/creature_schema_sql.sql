USE reptile_project;

CREATE TABLE region(
	region_id INT,
    region_name VARCHAR(50) NOT NULL,
    min_temperature FLOAT,
    max_temperature FLOAT,
    min_humidity FLOAT,
    max_humidity FLOAT,
    
    PRIMARY KEY (region_id)
);

CREATE TABLE icun(
	icun_id INT,
    group_name VARCHAR(25) NOT NULL UNIQUE,
    icun_level INT NOT NULL UNIQUE,
    descript TEXT NOT NULL,
    
    PRIMARY KEY (icun_id)
);

CREATE TABLE species_group(
	group_id INT,
    group_name VARCHAR(50) NOT NULL UNIQUE,
    upper_group_id INT,
    
    PRIMARY KEY (group_id),
    FOREIGN KEY (upper_group_id) REFERENCES species_group(group_id) ON DELETE CASCADE
);

CREATE TABLE creature(
	creature_id INT,
    descript TEXT,
    icun_id INT,
    region_id INT NOT NULL,
    group_id INT NOT NULL,
    
    PRIMARY KEY (creature_id),
    FOREIGN KEY (icun_id) REFERENCES icun(icun_id) ON DELETE CASCADE,
    FOREIGN KEY (region_id) REFERENCES region(region_id) ON DELETE CASCADE,
    FOREIGN KEY (group_id) REFERENCES species_group(group_id) ON DELETE CASCADE
);
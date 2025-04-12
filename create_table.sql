CREATE TABLE delivery_method(  
    delivery_id INT PRIMARY KEY,
    delivery_method VARCHAR(30) NOT NULL);

CREATE TABLE location_dim(
    location_id INT PRIMARY KEY,
    city VARCHAR(60) NOT NULL,
    country VARCHAR(60) NOT NULL,
    continent VARCHAR(60) NOT NULL);

CREATE TABLE institution_dm(
    institution_id INT PRIMARY KEY,
    institution_name VARCHAR(255) NOT NULL,
    year_founded INT NOT NULL,
    affiliation VARCHAR(255) NOT NULL,
    link VARCHAR(255) NOT NULL);  
   
CREATE TABLE university_fact(
    university_id INT PRIMARY KEY,
    rank INT NOT NULL,
    enrollment INT NOT NULL,
    location_id INT NOT NULL,
    institution_id INT NOT NULL,
    delivery_id INT NOT NULL,   
    FOREIGN KEY (location_id) REFERENCES location_dim(location_id),
    FOREIGN KEY (institution_id) REFERENCES institution_dm(institution_id),
    FOREIGN KEY (delivery_id) REFERENCES delivery_method(delivery_id)

)

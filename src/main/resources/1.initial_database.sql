DROP DATABASE IF EXISTS Spring_DB;
CREATE DATABASE IF NOT EXISTS Spring_DB;
USE Spring_DB;

CREATE TABLE user (

    id BIGINT NOT NULL AUTO_INCREMENT,
    email VARCHAR (40) NOT NULL UNIQUE,
    password VARCHAR (100) NOT NULL,
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (40) NOT NULL,
    user_role VARCHAR (10),
    user_status VARCHAR (10),
    PRIMARY KEY (id));

CREATE TABLE product (

    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100),
    price DECIMAL NOT NULL,
    manufacturer_id INT NOT NULL,
    PRIMARY KEY (id));

CREATE TABLE manufacturer(

    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL UNIQUE,
    PRIMARY KEY (id));
--removed book we can start over

CREATE SCHEMA `Library` ;

-- Query per la creazione della tabella USER
CREATE TABLE USER
(
    STUDENT_ID CHAR(6) NOT NULL,
    NAME VARCHAR(35), -- verificare se è corretto perche l'attributo NAME me lo considera come una parola chiave
    SURNAME VARCHAR(35),
    ADDRESS VARCHAR(100),
    PHONE CHAR(15),

    PRIMARY KEY (STUDENT_ID)
);

-- Query per la creazione della tabella BOOK
CREATE TABLE BOOK
(
    BOOK_CODE INT NOT NULL,
    TITLE VARCHAR(20),
    ISBN CHAR(13),
    LANGUAGE VARCHAR(20), -- verificare se è corretto perche l'attributo LANGUAGE me lo considera come una parola chiave
    YEAR_OF_PUBLICATION INT(4),
    LIBRARY_CODE INT NOT NULL,
    NUMBER_OF_COPIES INT,

    PRIMARY KEY (BOOK_CODE),
    FOREIGN KEY (LIBRARY_CODE) REFERENCES LIBRARY(LIBRARY_CODE)
);

-- Query per la creazione della tabella AUTHOR
CREATE TABLE AUTHOR
(
    AUTHOR_CODE INT NOT NULL,
    NAME VARCHAR(35), -- verificare se è corretto perche l'attributo NAME me lo considera come una parola chiave
    SURNAME VARCHAR(35),
    BIRTH_PLACE VARCHAR(35),
    DATE_OF_BIRTH DATE,

    PRIMARY KEY (AUTHOR_CODE)
);

-- Query per la creazione della tabella LIBRARY
CREATE TABLE LIBRARY
(
    LIBRARY_CODE INT NOT NULL,
    NAME VARCHAR(35), -- verificare se è corretto perche l'attributo NAME me lo considera come una parola chiave
    ADDRESS VARCHAR(60),

    PRIMARY KEY (LIBRARY_CODE)
);

-- Query per la creazione della tabella DEPARTMENT
CREATE TABLE DEPARTMENT
(
    DEPARTMENT_CODE INT NOT NULL,
    PRINCIPAL VARCHAR(35),
    LIBRARY_CODE INT NOT NULL,


    PRIMARY KEY (DEPARTMENT_CODE),
    FOREIGN KEY (LIBRARY_CODE) REFERENCES LIBRARY(LIBRARY_CODE)
);

-- Query per la creazione della tabella HAS_BORROWED
CREATE TABLE HAS_BORROWED
(
    STUDENT_ID CHAR(6) NOT NULL,
    BOOK_CODE INT NOT NULL,
    RELEASE_DATE DATE,
    RETURN_DATE DATE,

    PRIMARY KEY (STUDENT_ID, BOOK_CODE),
    FOREIGN KEY (STUDENT_ID) REFERENCES USER(STUDENT_ID),
    FOREIGN KEY (BOOK_CODE) REFERENCES BOOK(BOOK_CODE)
);

-- Query per la creazione della tabella HAS_WRITTEN
CREATE TABLE HAS_WRITTEN
(
    BOOK_CODE INT NOT NULL,
    AUTHOR_CODE INT NOT NULL,

    PRIMARY KEY (BOOK_CODE, AUTHOR_CODE),
    FOREIGN KEY (BOOK_CODE) REFERENCES BOOK(BOOK_CODE),
    FOREIGN KEY (AUTHOR_CODE) REFERENCES AUTHOR(AUTHOR_CODE)
);
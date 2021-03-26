CREATE TABLE users (
    no NUMBER PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    password VARCHAR2(20) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    gender CHAR(1) NOT NULL CHECK(gender IN ('M', 'F')),
    created_at date DEFAULT sysdate);
    
CREATE SEQUENCE seq_users_pk
    START WITH 1
    INCREMENT BY 1
    NOCACHE;
    
INSERT INTO users (no, name, password, email, gender)
VALUES(seq_users_pk.NEXTVAL, '리자', '1234', 'admin@example.com', 'M');

SELECT * FROM users;

COMMIT;
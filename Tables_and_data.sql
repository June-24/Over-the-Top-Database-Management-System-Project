--21CSB0B36
--21CSB0F35
--users
CREATE TABLE users (
	user_ID INT PRIMARY KEY ,
	First_Name VARCHAR(20),
	Last_Name VARCHAR(20),
	email_id VARCHAR(30),
	password VARCHAR(64),
	dob DATE,
	gender VARCHAR(20),
	phone VARCHAR(20),
	location VARCHAR(20),
	city VARCHAR(20),
	state VARCHAR(20),
	country VARCHAR(20)
);

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (1,'Rahul', 'Sharma', 'rahul.sharma@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', DATE'1992-08-12', 'Male', '9876543210', 'Mumbai', 'Mumbai', 'Maharashtra', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (2,'Priya', 'Patel', 'priya.patel@example.com', '202cb962ac59075b964b07152d234b70',  DATE'1995-03-18', 'Female', '8765432109', 'Ahmedabad', 'Ahmedabad', 'Gujarat', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (3,'Amit', 'Verma', 'amit.verma@example.com', 'e99a18c428cb38d5f260853678922e03',  DATE'1988-11-01', 'Male', '7654321098', 'Delhi', 'New Delhi', 'Delhi', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (4,'Sneha', 'Kumar', 'sneha.kumar@example.com', '8f14e45fceea167a5a36dedd4bea2543', DATE '1991-07-04', 'Female', '6543210987', 'Kolkata', 'Kolkata', 'West Bengal', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (5,'Rajesh', 'Gupta', 'rajesh.gupta@example.com', '202cb962ac59075b964b07152d234b70',  DATE'1987-12-28', 'Male', '5432109876', 'Chennai', 'Chennai', 'Tamil Nadu', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (6,'Neha', 'Shah', 'neha.shah@example.com', 'e10adc3949ba59abbe56e057f20f883e',  DATE'1993-05-09', 'Female', '4321098765', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (7,'Rajiv', 'Singh', 'rajiv.singh@example.com', '098f6bcd4621d373cade4e832627b4f6',  DATE'1990-09-15', 'Male', '3210987654', 'Hyderabad', 'Hyderabad', 'Telangana', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (8,'Anjali', 'Desai', 'anjali.desai@example.com', '5fsd98qegduoqbs98g82397gq97feh', DATE'1992-05-22','Female','9121561404','Hyderabad','Hyderabad','Telangana','India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (9,'Aakash', 'Mehta', 'aakash.mehta@example.com', '9ae0ea9e3c9c6e1b9b6252c8395efdc5', DATE '1994-02-22', 'Male', '2109876543', 'Jaipur', 'Jaipur', 'Rajasthan', 'India');

INSERT INTO users (user_ID, First_Name, Last_Name, email_id, password, dob, gender, phone, location, city, state, country)
VALUES (10,'Pooja', 'Reddy', 'pooja.reddy@example.com', '96e79218965eb72c92a549dd5a330112',  DATE'1989-06-17', 'Female', '1098765432', 'Chandigarh', 'Chandigarh', 'Punjab', 'India');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--user frienships
CREATE TABLE user_friendships (
  user_req_id INT,
  user_accept_id INT,
  PRIMARY KEY (user_req_id, user_accept_id),
  FOREIGN KEY (user_req_id) REFERENCES users (user_ID),
  FOREIGN KEY (user_accept_id) REFERENCES users (user_ID)
);


INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (1, 2);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (1, 3);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (3, 4);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (3, 5);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (4, 5);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (3, 6);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (4, 7);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (7, 8);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (8, 9);
INSERT INTO user_friendships (user_req_id, user_accept_id) VALUES (9, 10);


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--payment table
CREATE TABLE Payment (
  user_ID INT,
  payment_ID INT,
  method VARCHAR(20),
  d_o_Pay DATE,
  PRIMARY KEY (user_ID, payment_ID),
  FOREIGN KEY (user_ID) REFERENCES users (user_ID)
);

INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(1, 1, 'Credit Card', TO_DATE('2023-05-01', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(2, 2, 'PayPal', TO_DATE('2023-05-02', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(3, 3, 'Bank Transfer', TO_DATE('2023-05-03', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(4, 4, 'Cash', TO_DATE('2023-05-04', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(5, 5, 'Credit Card', TO_DATE('2023-05-05', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(6, 6, 'PayPal', TO_DATE('2023-05-06', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(7, 7, 'Bank Transfer', TO_DATE('2023-05-07', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(8, 8, 'Cash', TO_DATE('2023-05-08', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(9, 9, 'Credit Card', TO_DATE('2023-05-09', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(10, 10, 'PayPal', TO_DATE('2023-05-10', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(1, 11, 'Bank Transfer', TO_DATE('2023-05-11', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(2, 12, 'Cash', TO_DATE('2023-05-12', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(3, 13, 'Credit Card', TO_DATE('2023-05-13', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(4, 14, 'PayPal', TO_DATE('2023-05-14', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(5, 15, 'Bank Transfer', TO_DATE('2023-05-15', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(6, 16, 'Cash', TO_DATE('2023-05-16', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(7, 17, 'Credit Card', TO_DATE('2023-05-17', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(8, 18, 'PayPal', TO_DATE('2023-05-18', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(9, 19, 'Bank Transfer', TO_DATE('2023-05-19', 'YYYY-MM-DD'));
INSERT INTO Payment (user_ID, payment_ID, method, d_o_Pay) VALUES
(10, 20, 'Cash', TO_DATE('2023-05-20', 'YYYY-MM-DD'));
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--subsription
CREATE TABLE Subscription (
  user_ID NUMBER,
  payment_ID NUMBER,
  type VARCHAR2(20),
  PRIMARY KEY (user_ID, payment_ID, type),
  FOREIGN KEY (user_ID) REFERENCES users (user_ID),
  FOREIGN KEY (user_ID,payment_ID) REFERENCES Payment (user_ID,payment_ID),
  price NUMBER,
  duration VARCHAR2(20)
);

INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(1, 1, 'Premium', 400, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(2, 2, 'Basic', 200, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(3, 3, 'Premium', 400, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(4, 4, 'Premium', 400, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(5, 5, 'Premium', 400, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(6, 6, 'Basic', 200, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(7, 7, 'Basic', 200, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(8, 8, 'Premium', 400, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(9, 9, 'Basic', 200, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(10, 10, 'Premium', 400, 'Monthly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(1, 11, 'Basic', 1000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(2, 12, 'Premium', 3000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(3, 13, 'Premium', 3000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(4, 14, 'Basic', 1000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(5, 15, 'Premium', 3000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(6, 16, 'Premium', 3000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(7, 17, 'Basic', 1000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(8, 18, 'Premium', 3000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(9, 19, 'Premium', 3000, 'Yearly');
INSERT INTO Subscription (user_ID, payment_ID, type, price, duration) VALUES
(10, 20, 'Basic', 1000, 'Yearly');


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--subscription_for
CREATE TABLE subscription_for (
  type VARCHAR(20),
  content_ID INT,
  PRIMARY KEY (content_ID, type)
);

--SEE IF PREMIUM AND BASIC BOTH NEEDED OR NOT
--inserting data into subscription_for

--data into subscription_for
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 1);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 2);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 3);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 4);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 5);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 6);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 7);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 8);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 9);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 10);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 11);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 12);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 13);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 14);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 15);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 16);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 17);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 18);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 19);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 20);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 21);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 22);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 23);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 24);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 25);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 26);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 27);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 28);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 29);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 30);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 31);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 32);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 33);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 34);
INSERT INTO subscription_for (type, content_ID) VALUES
('Premium', 35);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 36);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 37);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 38);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 39);
INSERT INTO subscription_for (type, content_ID) VALUES
('Basic', 40);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--director
CREATE TABLE director (
  Director_id NUMBER PRIMARY KEY,
  DOB DATE,
  first_name VARCHAR2(20),
  last_name VARCHAR2(20)
);

--data for movies
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(11, DATE'1921-08-19', 'Satyajit', 'Ray');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(12, DATE '1952-05-20', 'Maniratnam', 'Alagappan');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(13,  DATE'1924-05-20', 'Bimal', 'Roy');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(14,  DATE'1963-03-24', 'Quentin', 'Tarantino');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(15,  DATE'1970-07-30', 'Christopher', 'Nolan');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(16,  DATE'1954-08-16', 'James', 'Cameron');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(17, DATE'1944-06-07', 'Adoor', 'Gopalakrishnan');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(18, DATE'1960-04-10', 'S.S.', 'Rajamouli');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(19, DATE'1969-01-24', 'Baz', 'Luhrmann');
INSERT INTO Director (Director_id, DOB, first_name, last_name)VALUES
(20, DATE'1921-08-19', 'Satyajit', 'Ray');
INSERT INTO director (Director_id, DOB, first_name, last_name) VALUES 
(1, DATE'1950-01-01', 'James', 'Burrows');
INSERT INTO director (Director_id, DOB, first_name, last_name) VALUES 
(2, DATE'1970-01-01', 'David', 'Benioff');
INSERT INTO director (director_id,DOB, first_name, last_name) VALUES 
(3, DATE'1970-01-01','Matt', 'Duffer');
INSERT INTO director (director_id,DOB, first_name, last_name) VALUES 
(4,date' 1990-07-22', 'Mike', 'Flanagan');
INSERT INTO director (director_id,dob, first_name, last_name) VALUES 
(5,date'1980-01-22', 'Sam', 'Esmail');
INSERT INTO director (director_id,dob, first_name, last_name) VALUES 
(6,DATE'1954-07-20', 'Scott', 'Frank');
INSERT INTO director (director_id,dob, first_name, last_name) VALUES
 (7,DATE'1955-01-18', 'Taylor', 'Sheridan');
INSERT INTO director (director_id,dob, first_name, last_name) VALUES 
(8,date'1926-08-08', 'Alastair', 'Fothergill');
INSERT INTO director (director_id,dob, first_name, last_name) VALUES 
(9,date'1969-03-02', 'Alex', 'Yee');
INSERT INTO director (director_id,dob, first_name, last_name) VALUES 
(10,date'2004-08-06', 'Alik', 'Sakharov');
--BELOW FOR MOVIES

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--award
CREATE TABLE award (
  award_id INT PRIMARY KEY,
  award_name VARCHAR2(20)
);


--data
INSERT INTO Awards (award_id, award_name)
VALUES(1, 'Oscar');
INSERT INTO Awards (award_id, award_name)
VALUE(2, 'Filmfare');
INSERT INTO Awards (award_id, award_name)
VALUES(3, 'Oscar');
INSERT INTO Awards (award_id, award_name)
VALUES(4, 'Filmfare');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--GENRE
CREATE TABLE Genre (
  genre_ID varchar2(20) PRIMARY KEY,
  genre_name varchar2(50)
);
INSERT INTO Genre (genre_ID, genre_name) VALUES ('1', 'Action');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('2', 'Comedy');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('3', 'Drama');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('4', 'Thriller');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('5', 'Romance');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('6', 'Horror');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('7', 'Science Fiction');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('8', 'Fantasy');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('9', 'Mystery');
INSERT INTO Genre (genre_ID, genre_name) VALUES ('10', 'Animation');
select * from genre;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--ACTOR
CREATE TABLE actors (
  actor_id NUMBER(10) PRIMARY KEY,
  first_name VARCHAR2(20) NOT NULL,
  last_name VARCHAR2(20) NOT NULL,
  DOB DATE NOT NULL,
  height FLOAT(126) NOT NULL
);



--dats for movies
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (103, 'Soumitra', 'Chatterjee', DATE'1935-01-19', 170.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (94, 'Madhavan', 'R.', DATE'1970-06-01', 175.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (95, 'Nutun', 'Samanta', DATE'1936-06-06', 165.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (96, 'John', 'Travolta', DATE'1954-02-18', 188.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (97, 'Christian', 'Bale', DATE'1974-01-30', 183.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (98, 'Sam', 'Worthington', DATE'1976-08-02', 185.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (99, 'Arvind', 'Swamy', DATE'1967-06-18', 175.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (100, 'Prabhas', 'Raju', DATE'1979-10-23', 185.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (101, 'Leonardo', 'DiCaprio', DATE'1974-11-11', 183.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
VALUES (102, 'Soumitra', 'Chatterjee', DATE'1935-01-19', 170.0);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (1, 'Jennifer', 'Aniston', DATE'1969-02-11', 165);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (2, 'Courteney', 'Cox', DATE'1964-06-15', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (3, 'Lisa', 'Kudrow', DATE'1963-07-30', 161);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (4, 'Matt', 'LeBlanc', DATE'1967-07-25', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (5, 'Matthew', 'Perry', DATE'1969-08-19', 173);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (6, 'David', 'Schwimmer', DATE'1966-04-2', 175);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (7, 'Peter', 'Dinklage', DATE'1969-06-11', 135);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (8, 'Kit', 'Harington', DATE'1986-12-26', 180);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (9, 'Emilia', 'Clarke', DATE'1986-10-23', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (10, 'Nikolaj', 'Coster-Waldau', DATE'1970-07-27', 184);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (11, 'Lena', 'Headey', DATE'1973-10-3', 165);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (12, 'Maisie', 'Williams', DATE'1992-04-15', 152);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (13, 'Sophie', 'Turner', DATE'1996-02-21', 170);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (14, 'Aidan', 'Gillen', DATE'1968-02-24', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (15, 'Peter', 'Vaughan', DATE'1923-09-12', 161);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (16, 'Charles', 'Dance', DATE'1946-07-10', 191);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (17, 'Winona', 'Ryder', DATE'1971-10-29', 161);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (18, 'David', 'Harbour',DATE' 1975-08-10', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (19, 'Finn', 'Wolfhard', DATE'2002-06-23', 173);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (20, 'Millie', 'Bobby Brown', date'2004-02-19', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (21, 'Gaten', 'Matarazzo',DATE'2002-09-8', 152);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (22, 'Caleb', 'McLaughlin',DATE '2001-01-18', 175);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (23, 'Noah', 'Schnapp',DATE '2004-01-3', 161);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (24, 'Sadie', 'Sink', DATE'2002-03-16', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (25, 'Natalia', 'Dyer', DATE'1995-01-13', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (26, 'Charlie', 'Heaton', DATE'1994-04-6', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (27, 'Joe', 'Keery', DATE'1982-09-24', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (28, 'Dacre', 'Montgomery',DATE '1994-01-25', 191);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (29, 'Maya', 'Hawke', DATE'2002-07-10', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (30, 'Michiel Huisman', 'Steven Crain',date' 1981-07-18', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (31, 'Elizabeth Reaser', 'Olivia Crain', date'1975-03-12', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (32, 'Oliver Jackson-Cohen', 'Luke Crain',date' 1986-01-12', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (33, 'Kate Siegel', 'Theodora Crain',date' 1982-08-26', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (34, 'Victoria Pedretti', 'Nell Crain',date' 1995-09-23', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (35, 'Carla Gugino', 'Hugh Crain', date'1971-08-29', 161);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (36, 'Henry Thomas', 'Young Hugh Crain',date' 1971-09-9', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (37, 'Timothy Hutton', 'Steven Crain',date' 1960-08-10', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (38, 'Mckenna Grace', 'Young Theodora Crain',date' 2006-06-10', 145);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (39, 'Julian Hilliard', 'Young Luke Crain',date' 2007-08-18', 135);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (40, 'Violet McGraw', 'Young Nell Crain', date'2008-06-19', 130);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (41, 'Eleanor Cox', 'Young Olivia Crain',date' 2006-01-23', 145);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (42, 'Rami Malek', 'Elliot Alderson',date' 1981-05-12', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (43, 'Christian Slater', 'Mr. Robot',date' 1969-08-18', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (44, 'Portia Doubleday', 'Angela Moss',date' 1990-07-22', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (45, 'Martin Wallström', 'Tyrell Wellick',date' 1978-01-16', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (46, 'Grace Gummer', 'Darlene Alderson',date' 1986-05-9', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (47, 'BD Wong', 'Whiterose',date' 1960-01-24', 175);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (48, 'Michel Gill', 'Philip Price',date' 1950-01-25', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (49, 'Sam Esmail', 'Leon',date' 1978-09-17', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (50, 'Anya Taylor-Joy', 'Beth Harmon',DATE' 1996-04-16', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (51, 'Bill Camp', 'Mr. Shaibel',DATE' 1954-07-20', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height
) VALUES (52, 'Marielle Heller', 'Alma Wheatley',DATE' 1979-01-25', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (53, 'Thomas Brodie', 'Benny Watts',DATE' 1990-05-21', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (54, 'Moses Ingram', 'Jolene',DATE' 1994-09-09', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (55, 'Harry Melling', 'Harry Beltik',DATE' 1989-03-1', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (56, 'Isla Johnston', 'Young Beth Harmon',DATE' 2007-03-06', 145);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (57, 'Chloe Pirrie', 'Alice Harmon',DATE' 1994-06-27', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (58, 'Sergio Di Zio', 'Allan Harmon', DATE'1963-06-17', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (59, 'Dolores Carbonari', 'Margaret',DATE' 1971-03-29', 161);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (60, 'Kevin Costner', 'John Dutton',DATE' 1955-01-18', 188);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (61, 'Kelly Reilly', 'Beth Dutton',DATE' 1977-07-18', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (62, 'Luke Grimes', 'Kayce Dutton',DATE' 1984-01-15', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (63, 'Wes Bentley', 'Jamie Dutton', DATE'1978-08-12', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (64, 'Cole Hauser', 'Rip Wheeler', DATE'1975-08-11', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (65, 'Jefferson White', 'Jimmy Hurdstrom',DATE' 1991-01-19', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (66, 'Gil Birmingham', 'Mo Brings Plenty',DATE' 1953-06-28', 188);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (67, 'Forrie J. Smith', 'Lloyd Pierce',DATE' 1942-10-10', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (68, 'Ryan Bingham', 'Walker', DATE'1971-03-31', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (69, 'Will Patton', 'John Rainwater', DATE'1954-06-14', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (70, 'David Attenborough', 'David Attenborough', date'1926-08-08', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (71, 'Hailee',' Steinfeld', date'1996-04-16', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (72, 'Ella ','Purnell', date'1996-09-17', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (73, 'Katie ','Leung', date'1987-07-10', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (74, 'Kevin ','Alejandro', date'1976-04-07', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (75, 'Jason ','Spisak', date'1980-03-06', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (76, 'Toks ','Olagundoye',date '1974-10-27', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (77, 'JB ','Blanc',date '1969-03-02', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (78, 'Harry',' Lloyd',date' 1986-01-17', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (79, 'Mia ','Sinclair Jenness',date' 2005-06-06', 155);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (80, 'Reed',' Shannon',date' 2001-07-26', 173);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (81, 'Anya Chalotra', 'Yennefer of Venge',date'1996-07-02', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (82, 'Freya Allan', 'Ciri', date'2004-08-06', 168);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (83, 'Joey Batey', 'Jaskier', date'1989-01-01', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (84, 'MyAnna Buring', 'Tissaia de Vries',date '1983-03-22', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (85, 'Tom Canton', 'Fringilla Vigo', date'1974-05-02', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (86, 'Jeremy Crawford', 'Mousesack', date'1975-05-13', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (87, 'Eamon Farren', 'Cahir Mawr Dyffryn',date '1980-09-10', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (88, 'Lars Mikkelsen', 'Stregobor',date '1963-09-01', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (89, 'Royce Pierreson', 'Istredd',date '1988-02-10', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (90, 'Wilson Radjou', 'Dijkstra',date '1982-07-11', 178);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (91, 'Anna Shaffer', 'Triss Merigold', date'1992-06-16', 163);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (92, 'Paul Bullion', 'Lambert',date' 1988-02-18', 183);
INSERT INTO actors (actor_id, first_name, last_name, DOB, height)
 VALUES (93, 'Henry Cavill', 'Geralt of Rivia',date '1983-05-05', 185);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--HAS_GENRE
CREATE TABLE has_genre (
  content_ID INT,
  genre_ID varchar2(20),
  PRIMARY KEY (content_ID, genre_ID),
  FOREIGN KEY (content_ID) REFERENCES Content (content_ID),
  FOREIGN KEY (genre_ID) REFERENCES Genre (genre_ID)
);
--data for movie
INSERT INTO has_genre (content_ID, genre_ID)VALUES (1, '3');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (2, '5');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (3, '3');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (4, '4');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (4, '9');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (5, '1');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (6, '7');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (7, '5');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (7, '7');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (8, '1');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (8, '8');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (9, '3');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (9, '5');
INSERT INTO has_genre (content_ID, genre_ID)VALUES (10, '3');
INSERT INTO has_genre (content_ID, genre_ID) VALUES (11, 2);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (12, 3);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (13, 7);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (14, 6);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (15, 4);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (16, 6);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (17, 3);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (18, 8);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (19, 10);
INSERT INTO has_genre (content_ID, genre_ID) VALUES (20, 8);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--CONTENT
CREATE TABLE Content (
  content_ID int PRIMARY KEY,
  name NVARCHAR2(20),
  synopsis VARCHAR2(200)
);

--content for movies
INSERT INTO Content (content_ID, name, synopsis)VALUES
(1, 'Pather Panchali', 'A coming-of-age story about a young boy growing up in rural India.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(2, 'Swayamwaram', 'A love story between a princess and a commoner.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(3, 'Sujata', 'A story about a young woman who falls in love with a man from a higher social class.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(4, 'Pulp Fiction', 'A crime thriller about two hitmen, a boxer, and his wife.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(5, 'The Dark Knight', 'A superhero film about Batman and his fight against the Joker.');\
INSERT INTO Content (content_ID, name, synopsis)VALUES
(6, 'Avatar', 'A science fiction film about a paraplegic marine who is transported to another world and becomes a warrior.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(7, 'Bombay', 'A love story set against the backdrop of the 1993 Bombay riots.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(8, 'Baahubali Beginning', 'A historical epic about two brothers who fight for their kingdom.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(9, 'The Great Gatsby', 'A love story set against the backdrop of the Roaring Twenties.');
INSERT INTO Content (content_ID, name, synopsis)VALUES
(10, 'Charulata', 'A story about a woman who is trapped in a loveless marriage.');
insert into content (content_id, name, synopsis)values
(31, 'Debate Show', 'The debate that will change the world. Hear both sides.');
insert into content (content_id, name, synopsis)values
(32, 'Debate Show', 'The debate that will change the world. Hear both sides.');
insert into content (content_id, name, synopsis)values
(33, 'Headlines', 'The debate that will change the world. Hear both sides.');
insert into content (content_id, name, synopsis)values
(34, 'Headlines', 'The debate that will change the world. Hear both sides.');
insert into content (content_id, name, synopsis)values
(35, 'Cont breakdown', 'The breakdown everyone deserves');
insert into content (content_id, name, synopsis)values
(36, 'Cont Breakdown', 'The breakdown everyone deserves');
insert into content (content_id, name, synopsis)values
(37, 'Live Updates', 'second by second updates on what’s happening');
insert into content (content_id, name, synopsis)values
(38, 'Sports takes', 'The best punditry that gets you engrossed in the game');
insert into content (content_id, name, synopsis)values
(39, 'Sports Updates', 'The best punditry that gets you engrossed in the game');
insert into content (content_id, name, synopsis)values
(40, 'Breakdown', 'The breakdown everyone deserves');
INSERT INTO content (content_id, name, synopsis)VALUES
(21, 'Football', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(22, 'Football', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(23, 'Football', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(24, 'Football', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(25, 'Basketball', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(26, 'Basketball', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(27, 'Basketball', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(28, 'Basketball', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(29, 'Cricket', 'seamless broadcast with world class commentary');
INSERT INTO content (content_id, name, synopsis)VALUES
(30, 'Cricket', 'seamless broadcast with world class commentary');
INSERT INTO Content (content_ID, name, synopsis) VALUES
 (11, 'Friends', 'A group of six friends in their 20s and 30s live in Manhattan and deal with the ups and downs of life and love.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(12, 'Game of Thrones', 'Set in the fictional continents of Westeros and Essos, Game of Thrones tells the story of several powerful families as they vie for control of the Iron Throne.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(13, 'Stranger Things', 'A group of friends in the 1980s fight supernatural forces after their friend disappears.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(14, 'The Haunting  House', 'A family of five begins to unravel dark secrets from their past when they move into an old Victorian mansion.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(15, 'Mr. Robot', 'A young computer programmer and cyber-security engineer is recruited by a mysterious anarchist to join a group of hacktivists in overthrowing corporate America.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(16, 'The Queens Gambit', 'An orphaned chess prodigy struggles with addiction and emotional problems while trying to become the worlds greatest chess player.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(17, 'Yellowstone', 'The Dutton family controls the largest contiguous ranch in the United States. When they are threatened by land developers, they must defend their way of life.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(18, 'Our Planet', 'A stunning natural history documentary series that explores the planets most spectacular habitats and wildlife.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(19, 'Arcane', 'A dark fantasy animated series that tells the story of two sisters who grow up in rival cities and find themselves on opposite sides of a war.');
INSERT INTO Content (content_ID, name, synopsis) VALUES 
(20, 'The Witcher', 'A monster hunter struggles to find his place in a world where people often prove more wicked than beasts.');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--CAST
CREATE TABLE cast (
  content_ID INT,
  actor_id NUMBER(10),
  PRIMARY KEY (content_ID, actor_id),
  FOREIGN KEY (content_ID) REFERENCES Content (content_ID),
  FOREIGN KEY (actor_id) REFERENCES actors (actor_id)
);
--data for movies
INSERT INTO cast (content_ID, actor_id) VALUES (1, 103);
INSERT INTO cast (content_ID, actor_id) VALUES (2, 94);
INSERT INTO cast (content_ID, actor_id) VALUES (3, 95);
INSERT INTO cast (content_ID, actor_id) VALUES (4, 96);
INSERT INTO cast (content_ID, actor_id) VALUES (5, 97);
INSERT INTO cast (content_ID, actor_id) VALUES (6, 98);
INSERT INTO cast (content_ID, actor_id) VALUES (7, 99);
INSERT INTO cast (content_ID, actor_id) VALUES (8, 100);
INSERT INTO cast (content_ID, actor_id) VALUES (9, 101);
INSERT INTO cast (content_ID, actor_id) VALUES (10, 102);
INSERT INTO CAST (actor_id, content_ID) VALUES (1, 11);
INSERT INTO CAST (actor_id, content_ID) VALUES (2, 11);
INSERT INTO CAST (actor_id, content_ID) VALUES (3, 11);
INSERT INTO CAST (actor_id, content_ID) VALUES (4, 11);
INSERT INTO CAST (actor_id, content_ID) VALUES (5, 11);
INSERT INTO CAST (actor_id, content_ID) VALUES (6, 11);
INSERT INTO CAST (actor_id, content_ID) VALUES (7, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (8, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (9, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (10, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (11, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (12, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (13, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (14, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (15, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (16, 12);
INSERT INTO CAST (actor_id, content_ID) VALUES (17, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (18, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (19, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (20, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (21, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (22, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (23, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (24, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (25, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (26, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (27, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (28, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (29, 13);
INSERT INTO CAST (actor_id, content_ID) VALUES (30, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (31, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (32, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (33, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (34, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (35, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (36, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (37, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (38, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (39, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (40, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (41, 14);
INSERT INTO CAST (actor_id, content_ID) VALUES (42, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (43, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (44, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (45, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (46, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (47, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (48, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (49, 15);
INSERT INTO CAST (actor_id, content_ID) VALUES (50, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (51, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (52, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (53, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (54, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (55, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (56, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (57, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (58, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (59, 16);
INSERT INTO CAST (actor_id, content_ID) VALUES (60, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (61, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (62, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (63, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (64, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (65, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (66, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (67, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (68, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (69, 17);
INSERT INTO CAST (actor_id, content_ID) VALUES (70, 18);
INSERT INTO CAST (actor_id, content_ID) VALUES (71, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (72, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (73, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (74, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (75, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (76, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (77, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (78, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (79, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (80, 19);
INSERT INTO CAST (actor_id, content_ID) VALUES (93, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (81, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (82, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (83, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (84, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (85, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (86, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (87, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (88, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (89, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (90, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (91, 20);
INSERT INTO CAST (actor_id, content_ID) VALUES (92, 20);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--ENTERTAINMENT
CREATE TABLE Entertainment (
  content_ID INT PRIMARY KEY,
  IMDB NUMBER,
  Rotten_Tomatoes NUMBER,
  FOREIGN KEY (content_ID) REFERENCES Content (content_ID)
);
--data for movies
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(1, 82, 91);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(2, 77, 89);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(3, 81, 90);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(4, 89, 96);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(5, 90, 94);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(6, 82, 92);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(7, 81, 90);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(8, 88, 91);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(9, 75, 87);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes)VALUES
(10, 80, 88);
--DATA FOR TV SERIES
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (11, 96, 97);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (12, 93, 94);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (13, 88, 95);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (14, 86, 92);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (15, 89, 96);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (16, 88, 96);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (17, 83, 94);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (18, 91, 98);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (19, 93, 97);
INSERT INTO Entertainment (content_ID, IMDB, Rotten_Tomatoes) VALUES (20, 82, 67);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--TV_SERIES
CREATE TABLE TV_Series (
  content_ID int PRIMARY KEY,
  episode_count NUMBER,
  season_count NUMBER,
  FOREIGN KEY (content_ID) REFERENCES ENTERTAINMENT (content_ID)
);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (11, 236, 10);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (12, 73, 8);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (13, 47, 4);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (14, 10, 1);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (15, 45, 4);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (16, 7, 1);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (17, 40, 4);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (18, 8, 1);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (19, 9, 1);
INSERT INTO TV_Series (content_ID, episode_count, season_count) VALUES (20, 16, 1);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--EPISODES
CREATE TABLE Episode (
  episode_number NUMBER,
  season_number NUMBER,
  content_ID int,
  episode_name VARCHAR2(100),
  episode_length DECIMAL(5,2),
  Director_id NUMBER,
  PRIMARY KEY (episode_number, season_number, content_ID),
  FOREIGN KEY (content_ID) REFERENCES TV_Series (content_ID),
  FOREIGN KEY (Director_id) REFERENCES Director (Director_id)
);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 11, 'The One Where Monica Gets a Roommate', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 11, 'The One with the East German Laundry Detergent', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 11, 'The One with the Blackout', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 11, 'The One Where Rachel Smokes', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 11, 'The One with the Sonogram', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (6, 1, 11, 'The One with the Monkey', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (7, 1, 11, 'The One with the Race Car Bed', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (8, 1, 11, 'The One with the Halloween Party', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (9, 1, 11, 'The One with the Prom Video', 22.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1,12, 'Winter is Coming', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 12, 'The Kingsroad', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 12, 'Lord Snow', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 12, 'Cripples, Bastards, and Broken Things', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 12, 'The Wolf and the Lion', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (6, 1, 12, 'A Golden Crown', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (7, 1, 12, 'You Win or You Die', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (8, 1, 12, 'Baelor', 55.0, 2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (9, 1, 12, 'Fire and Blood', 55.0,2);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 13, 'The Vanishing of Will Byers', 45.0,3);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 13, 'The Weirdo on Maple Street', 45.0, 3);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 13, 'Holly, Jolly', 45.0, 3);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 13, 'The Body', 45.0,3);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 13, 'The Upside Down', 45.0,3);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 14, 'Coughing Up Blood', 52.0, 4);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 14, 'The Bent-Neck Lady', 52.0, 4);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 14, 'Touch', 52.0, 4);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 14, 'The Chase', 52.0,4);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 14, 'The Bent-Neck Lady II', 52.0,4);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 15, 'eps1.0_hellofriend.mov', 45.0, 5);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 15, 'eps1.1_ones-and-zeros.wmv', 45.0, 5);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 15, 'eps1.2_darlene.avi', 45.0, 5);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 15, 'eps1.3_dave.txt', 45.0, 5);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 15, 'eps1.4_3xpl0its.wmv', 45.0, 5);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 16, 'The Queens Gambit', 52.0, 6);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 16, 'The Wheat Queen', 52.0, 6);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 16, 'The Orphan Queen', 52.0, 6);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 16, 'The Exchange Variation', 52.0, 6);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 16, 'The Budapest Gambit', 52.0, 6);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 17, 'Pilot', 60.0, 7);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 17, 'Cattle Drive', 60.0, 7);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 17, 'Coming Home', 60.0, 1);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 17, 'The Unraveling', 60.0, 7);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 17, 'The Bad Seed', 60.0, 7);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 18, 'One Planet', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 18, 'Frozen Worlds', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 18, 'Jungles', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 18, 'Coasts', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 18, 'Deserts', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (6, 1, 18, 'Grasslands', 50.0,8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (7, 1, 18, 'High Seas', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (8, 1, 18, 'Fresh Water', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (9, 1, 18, 'Cities', 50.0, 8);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 19, 'Welcome to the Playground', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 19, 'Nemesis', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 19, 'The Rig', 50.0, 3);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 19, 'Firelights', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 19, 'The Monster You Created', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (6, 1, 19, 'Heroes', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (7, 1, 19, 'Faces of Change', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (8, 1, 19, 'Where the Dead Lie', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (9, 1, 19, 'The Right Path', 50.0, 9);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (1, 1, 10, 'The End', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (2, 1, 10, 'A Grain of Truth', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (3, 1, 10, 'The Lesser Evil', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (4, 1, 10, 'The Edge of the World', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (5, 1, 10, 'The Golden Dragon', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (6, 1, 10, 'Of Banquets, Bastards and Burials', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (7, 1, 10, 'Treason', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (8, 1, 10, 'Before a Storm', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (9, 1, 10, 'Cahir', 50.0, 10);
INSERT INTO Episode (episode_number, season_number, content_ID, episode_name, episode_length, Director_id) VALUES (10, 1, 10, 'The Last Wish', 50.0, 10);



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--MOVIE
CREATE TABLE Movie (
  content_ID int,
  duration DECIMAL(4,2),
  release_date DATE,
  box_office_collection DECIMAL(12,2),
  budget DECIMAL(10,2),
  Director_id NUMBER,
  PRIMARY KEY (content_ID),
  FOREIGN KEY (content_ID) REFERENCES Entertainment (content_ID),
  FOREIGN KEY (Director_id) REFERENCES Director (Director_id)
);
--data
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(1, 11.1, DATE'1955-08-26', 1200000, 20000, 11);   --//Pather panchali 
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(2, 15.0, DATE'1999-05-20', 121654, 60827 , 12);    --//Swayamwaram
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(3, 14.5, DATE'1959-03-20', 85158, 60827, 13);      --//Sujata(Bimal Roy)
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(4, 15.4, DATE'1994-10-14', 213400000, 8000000, 14); --//tarantino(pulp fiction)
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(5, 15.2, DATE'2008-07-14', 1000000, 185000, 15);--//nolan(dark knight)
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(6, 16.2, DATE'2009-12-18', 27900000, 237000, 16);--//avatar cameron james
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(7, 15.0, DATE'1995-03-10', 2676384, 328465, 17);--//maniratnam (bombay)
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(8, 15.9, DATE'2015-07-10', 30413450, 21897684, 18);--//bahubali ssrajamouli
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(9, 14.2, DATE'2013-05-10', 353600000, 150000, 19);--//greatgatsbyb
INSERT INTO Movie (content_ID, duration, release_date, box_office_collection, budget, Director_id)VALUES
(10, 11.7, DATE'1964-05-15', 1100000, 70000, 20);--//charulatha(satyajitray)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--SONG
CREATE TABLE Song (
  content_ID int,
  song_ID NUMBER,
  song_title VARCHAR2(20),
  song_length DECIMAL(10,2),
  PRIMARY KEY (content_ID, song_ID),
  FOREIGN KEY (content_ID) REFERENCES Movie (content_ID)
);

--data
INSERT INTO Song (content_ID, song_ID, song_title, song_length)VALUES
(1, 1,'Pather Panchali Theme', 2.47);
INSERT INTO Song (content_ID, song_ID, song_title, song_length)VALUES
(7, 2, 'Bombay Theme', 5.16);
INSERT INTO Song (content_ID, song_ID, song_title, song_length)VALUES
(8, 3, 'Dhivara', 3.47);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--HAS WON TABLE(FOR AWARD)
CREATE TABLE Has_Won (
  award_id int,
  content_id int,
  PRIMARY KEY (award_id, content_id),
  FOREIGN KEY (content_id) REFERENCES Movie (content_id),
  FOREIGN KEY (award_id) REFERENCES Award (award_id)
);


--data
INSERT INTO has_won (content_id, award_id)VALUES
(5, 1);
INSERT INTO has_won (content_id, award_id)VALUES
(8, 2);
INSERT INTO has_won (content_id, award_id)VALUES
(6, 3);
INSERT INTO has_won (content_id, award_id)VALUES
(7, 4);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--live_broadcast
CREATE TABLE Live_Broadcast (
  content_ID int PRIMARY KEY,
  start_time TIMESTAMP,
  event_name VARCHAR2(20),
  end_time TIMESTAMP,
  FOREIGN KEY (content_ID) REFERENCES Content (content_ID)
);

--data for news
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (31, 'World News', TIMESTAMP '2023-05-10 09:00:00', TIMESTAMP '2023-05-12 11:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (32, 'World News', TIMESTAMP '2023-05-09 14:00:00', TIMESTAMP '2023-05-12 16:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (33, 'World News', TIMESTAMP '2023-05-08 08:00:00', TIMESTAMP '2023-05-08 10:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (34, 'World News', TIMESTAMP '2023-05-08 12:00:00', TIMESTAMP '2023-05-12 13:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (35, 'World News', TIMESTAMP '2023-05-10 19:00:00', TIMESTAMP '2023-05-12 21:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (36, 'Local News', TIMESTAMP '2023-05-10 20:00:00', TIMESTAMP '2023-05-12 22:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (37, 'Local News', TIMESTAMP '2023-05-12 16:00:00', TIMESTAMP '2023-05-12 17:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (38, 'Sports News', TIMESTAMP '2023-05-12 18:00:00', TIMESTAMP '2023-05-12 19:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (39, 'Sports News', TIMESTAMP '2023-05-12 17:00:00', TIMESTAMP '2023-05-12 20:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)
VALUES (40, 'Sports News', TIMESTAMP '2023-05-12 14:00:00', TIMESTAMP '2023-05-12 17:00:00');

-- data for sports
--live broadcast
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(21, 'Premier League', TIMESTAMP '2023-05-12 12:30:00', TIMESTAMP '2023-05-12 14:30:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(22, 'Premier League', TIMESTAMP '2023-05-12 16:00:00', TIMESTAMP '2023-05-12 18:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(23, 'Champions League', TIMESTAMP '2023-05-13 15:00:00', TIMESTAMP '2023-05-13 17:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(24, 'Europa League', TIMESTAMP '2023-05-14 18:00:00', TIMESTAMP '2023-05-14 20:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(25, 'NBA semi finals', TIMESTAMP '2023-05-12 20:00:00', TIMESTAMP '2023-05-12 22:30:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(26, 'NBA semi finals', TIMESTAMP '2023-05-13 16:00:00', TIMESTAMP '2023-05-13 18:30:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(27, 'NBA semi finals', TIMESTAMP '2023-05-13 17:00:00', TIMESTAMP '2023-05-13 19:30:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(28, 'NBA semi finals', TIMESTAMP '2023-05-14 13:00:00', TIMESTAMP '2023-05-14 15:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(29, 'IPL Match', TIMESTAMP '2023-05-13 17:00:00', TIMESTAMP '2023-05-13 21:00:00');
INSERT INTO live_broadcast (content_id, event_name, start_time, end_time)VALUES
(30, 'IPL Match', TIMESTAMP '2023-05-14 18:00:00', TIMESTAMP '2023-05-14 20:00:00');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--sports_broadcast
CREATE TABLE Sports_Broadcast (
  sport_name varchar(50),
  content_ID int,
  league_name INT,
  team1_id INT,
  team2_id INT,
  PRIMARY KEY (sport_name, content_ID, league_name, team1_id, team2_id),
  FOREIGN KEY (content_ID) REFERENCES Live_Broadcast (content_ID)
);

--sports broadcast
select * From sports_broadcast;
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_id)
VALUES (21, 'football', 1, 2,'premier league');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (22, 'football', 3, 4,'premier league');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (23, 'football', 5, 6,'premier league');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (24, 'football', 7, 8,'premier league');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (25, 'basketball', 9, 10,'NBA');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (26, 'basketball', 11, 12,'NBA');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (27, 'basketball', 13, 14,'NBA');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (28, 'basketball', 15, 16,'NBA');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (29, 'cricket', 17, 18,'IPL');
INSERT INTO sports_broadcast (content_id, sport_name, team1_id, team2_id,league_name)
VALUES (30, 'cricket', 19, 20,'IPL');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--news_broadcast
CREATE TABLE News_Broadcast (
  content_ID INT,
  headline_name VARCHAR2(100),
  Presenter VARCHAR2(100),
  PRIMARY KEY (content_ID, headline_name),
  FOREIGN KEY (content_ID) REFERENCES Live_Broadcast (content_ID)
);
--data
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (31, 'Russia-Ukraine war: US and allies to revoke most favored nation trade', 'Anderson Cooper_CNN');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (32, 'Supreme Court nominee Ketanji Brown Jackson faces second day of questioning', 'Don Lemon_FOXNEWS');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (33, 'The Biden administration is failing the American people', 'Tucker Carlson_CBN');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (34, 'Supreme Court to rule on abortion rights', 'Sally Nugent_BBC');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (35, 'The Middle East is in turmoil', 'Farah Ibrahim_Guardian');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (36, 'Riots in Manipur and the Kerala story', 'Arnab_Goswami');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (37, 'Karnataka elections live breakdown', 'Shaina Patel_AajTak');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (38, 'Who will make the top4 race in IPL', 'Aakash Chopra_Criclive');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (39, 'Will Arsenal win the premier league', 'Gary Neville_Athletic');
INSERT INTO news_broadcast (content_id, headline_name, presenter)
VALUES (40, 'The Middle East is in turmoil', 'Farah Ibrahim_Guardian');
select * from news_broadcast;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--user_rating
CREATE TABLE User_Rating (
  user_id INT,
  content_id INT,
  rating DECIMAL(4, 2),
  PRIMARY KEY (user_id, content_id),
  FOREIGN KEY (user_id) REFERENCES Users (user_id),
  FOREIGN KEY (content_id) REFERENCES Content (content_id)
);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(1, 1, 7.6);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(2, 2, 5.1);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(3, 3, 9.3);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(4, 4, 6.6);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(5, 5, 7.8);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(6, 6, 4.9);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(7, 7, 8.0);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(8, 8, 8.3);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(9, 9, 6.1);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(10, 10, 4.4);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(1, 11, 3.7);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(2, 12, 2.1);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(3, 13, 7.9);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(4, 14, 5.6);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(5, 15, 5.3);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(6, 16, 1.8);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(7, 17, 7.0);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(8, 18, 6.9);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(9, 20, 9.7);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(10, 22, 9.2);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(1, 24, 7.4);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(2, 27, 4.6);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(3, 29, 6.5);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(4, 30, 5.8);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(5, 31, 8.9);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(6, 33, 2.3);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(7, 36, 9.1);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(8, 38, 6.2);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(9, 39, 4.0);
INSERT INTO User_Rating (user_id, content_id, rating)VALUES
(10, 40, 5.5);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--user_episode_comment
CREATE TABLE User_Episode_Comment (
  content_id INT,
  comment_id INT,
  season_number INT,
  episode_number INT,
  PRIMARY KEY (content_id, comment_id),
  FOREIGN KEY (content_id) REFERENCES TV_SERIES (content_id)
);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(11, 1, 1, 1);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(11, 2, 1, 2);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(11, 3, 1, 3);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(11, 4, 1, 4);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(11, 5, 1, 5);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(12, 6, 2, 1);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(12, 7, 2, 2);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(12, 8, 2, 3);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(12, 9, 2, 4);
INSERT INTO User_Episode_Comment (content_id, comment_id, season_number, episode_number)VALUES
(12, 10, 2, 5);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--user_movie comment
CREATE TABLE User_Movie_Comment (
  content_id INT,
  comment_id INT,
  PRIMARY KEY (content_id, comment_id),
  FOREIGN KEY (content_id) REFERENCES Movie (content_id)
);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(1, 1);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(2, 2);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(3, 3);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(4, 4);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(5, 5);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(6, 6);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(7, 7);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(8, 8);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(9, 9);
INSERT INTO User_Movie_Comment (content_id, comment_id)VALUES
(10, 10);


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--21CSB0B36
--21CSB0F35
--user_comments
CREATE TABLE User_Comments (
  user_ID INT,
  comment_id INT,
  comments VARCHAR(50),
  PRIMARY KEY (user_ID, comment_id),
  FOREIGN KEY (user_ID) REFERENCES users (user_ID)
);
--data
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(1, 11, 'goes in the books as one of the finest');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(2, 12, 'great beginning, but finished underwhelmingly');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(3, 13, 'Fast-paced screenplay');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(4, 14, 'This takes us back to our childhoods');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(5, 15, 'Get yourself some tissues while watching');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(6, 16, ' Your heart will skip a beat watching this');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(7, 17, 'Spooky');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(8, 18, 'Underwhelming, very boring from get go');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(9, 19, 'Show of the year');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(10, 20, 'Episode 2 reveals the entire plot, stinker!');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(1, 1, 'Great watch!');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(2, 2, 'Very slow and boring piece of content');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(3, 3, 'Gripping, keeps you at the edge of your seat!');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(4, 4, 'Slow-burn!');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(5, 5, 'Film of the year!');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(6, 6, 'Very engaging script let down by poor screenplay');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(7, 7, 'Mediocre at best');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(8, 8, 'Overhyped');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(9, 9, '10/10,that’s it!');
INSERT INTO User_Comments (user_id, comment_id, comments) VALUES
(10, 10, 'Worth the money!');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--COMMENTS LIKED BY
CREATE TABLE comments_liked_by (
  liked_by_ID INT,
  commented_by_id int,
  comment_id INT,
  PRIMARY KEY (LIKED_BY_ID, comment_id),
  FOREIGN KEY (liked_by_ID) REFERENCES users (user_ID),
  FOREIGN KEY (commented_by_id) REFERENCES users (user_ID)
);

INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(1, 2, 1);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(2, 1, 2);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(3, 1, 3);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(4, 2, 4);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(5, 1, 5);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(6, 3, 6);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(7, 4, 7);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(8, 5, 8);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(9, 6, 9);
INSERT INTO comments_liked_by (liked_by_id, commented_by_id, comment_id) VALUES
(10, 7, 10);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--teams
CREATE TABLE Teams (
  team_id INT,
  team_name VARCHAR2(20),
  sport_name VARCHAR2(50),
  city varchar(50),
  PRIMARY KEY (team_id, sport_name)
);
--teams table
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (1, 'football', 'Arsenal', 'London');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (2, 'football', 'LeedsUtd', 'Leeds');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (3, 'football', 'Liverpool', 'Liverpool');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (4, 'football', 'TottenhamHotspur', 'London');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (5, 'football', 'ManchesterCity', 'Manchester');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (6, 'football', 'RealMadrid', 'Madrid');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (7, 'football', 'Villareal', 'Villareal');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (8, 'football', 'ManchesterUtd', 'Manchester');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (9, 'basketball', 'Boston Celtics', 'Boston');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (10, 'basketball', 'Milwaukee bucks', 'Milwaukee');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (11, 'basketball', 'Memphis grizzlies', 'Memphis');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (12, 'basketball', 'GoldenStateWarriors', 'San Francisco');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (13, 'basketball', 'Phoenix Suns', 'Phoenix');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (14, 'basketball', 'Las Vegas Aces', 'Las vegas');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (15, 'basketball', 'Chicago Bulls', 'Chiacgo');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (16, 'basketball', 'New York Knicks', 'New York city');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (17, 'cricket', 'Sunrisers Hyderabad', 'Hyderabad');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (18, 'cricket', 'Royal challengers', 'Bengaluru');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (19, 'cricket', 'Mumbai Indians', 'Mumbai');
INSERT INTO teams (team_id, sport_name, team_name, city)
VALUES (20, 'cricket', 'Chennai Super Kings', 'Chennai');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--PRODUCTION COMPLANY PHONE
CREATE TABLE production_company_phone (
  company_name VARCHAR2(20) ,
  phone NUMBER(10),
  PRIMARY KEY (company_name, phone),
  FOREIGN KEY (company_name) REFERENCES production_company(company_name)
);
--NOW TILL TV SEREIS
INSERT INTO production_company_phone (company_name, phone) VALUES 
('Warner Bros.', 8185570900);
INSERT INTO production_company_phone (company_name, phone) VALUES 
('HBO', 2125121000);
INSERT INTO production_company_phone (company_name, phone) VALUES 
('Netflix', 4156284300);
INSERT INTO production_company_phone (company_name, phone) VALUES 
('Netflix', 4156284200);
INSERT INTO production_company_phone (company_name, phone) VALUES 
('Universal Television', 8187777000);
INSERT INTO production_company_phone (company_name, phone) VALUES 
('Paramount Network', 8185570900);
INSERT INTO production_company_phone (company_name, phone) VALUES 
('Fortiche Productions', 3302401010);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--21CSB0B36
--21CSB0F35
--PRODUCTION COMPANY
CREATE TABLE production_company (
  company_name VARCHAR2(20) PRIMARY KEY,
  web_link VARCHAR2(200),
  year_founded NUMBER
);

--FOR TV SEREIS
INSERT INTO production_company (company_name, web_link, year_founded) VALUES 
('Warner Bros.', 'https://www.warnerbros.com/tv', 1955);
INSERT INTO production_company (company_name, web_link, year_founded) VALUES 
('HBO', 'https://www.hbo.com/', 1972);
INSERT INTO production_company (company_name, web_link, year_founded) VALUES 
('Netflix', 'https://www.netflix.com/', 1997);
INSERT INTO production_company (company_name, web_link, year_founded) VALUES 
('Universal Television', 'https://www.nbc.com/universal-television/', 1964);
INSERT INTO production_company (company_name, web_link, year_founded) VALUES 
('Paramount Network', 'https://www.paramountnetwork.com/', 1952);
INSERT INTO production_company (company_name, web_link, year_founded) VALUES 
('Fortiche Productions', 'https://www.fortiche.com/', 2009);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--21CSB0B36
--21CSB0F35
--PRODUCES BY TABLE
CREATE TABLE produced_by (
  content_ID INT ,
  company_name VARCHAR2(200),
  PRIMARY KEY(content_id,company_name),
  FOREIGN KEY (content_ID) REFERENCES content(content_ID),
  FOREIGN KEY (company_name) REFERENCES production_company(company_name)
);
--BELOW FOR TV SEREIES
INSERT INTO produced_by (content_ID, company_name) VALUES 
(11, 'Warner Bros.');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(12, 'HBO');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(13, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(14, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(15, 'Universal Television');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(16, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(17, 'Paramount Network');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(18, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(19, 'Fortiche Productions');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(20, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(1, 'Warner Bros.');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(2, 'HBO');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(3, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(4, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(5, 'Universal Television');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(6, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(7, 'Paramount Network');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(8, 'Netflix');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(9, 'Fortiche Productions');
INSERT INTO produced_by (content_ID, company_name) VALUES 
(10, 'Netflix');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
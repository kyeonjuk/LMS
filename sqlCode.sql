-- member 테이블 예시 데이터
INSERT INTO member (email, name, password, phone, birth, create_date, role, active, active_key, profile_image)
VALUES
('john@example.com', '홍길동', 'password1', '010-1234-5678', '1990-01-01', '2023-07-10 10:00:00', 'student', '1', 'activation_key_1', 'profile1.jpg'),
('emma@example.com', '김영희', 'password2', '010-2345-6789', '1985-05-15', '2023-07-09 12:30:00', 'teacher', '1', 'activation_key_2', 'profile2.jpg'),
('michael@example.com', '박철수', 'password3', '010-3456-7890', '1995-08-20', '2023-07-08 15:45:00', 'student', '1', 'activation_key_3', 'profile3.jpg'),
('sophia@example.com', '이미자', 'password4', '010-4567-8901', '1988-11-30', '2023-07-07 09:00:00', 'student', '0', '', 'profile4.jpg'),
('james@example.com', '김미영', 'password5', '010-5678-9012', '1992-04-25', '2023-07-06 14:20:00', 'teacher', '1', 'activation_key_5', 'profile5.jpg'),
('emily@example.com', '황정은', 'password6', '010-6789-0123', '1987-07-12', '2023-07-05 11:10:00', 'student', '1', 'activation_key_6', 'profile6.jpg'),
('ethan@example.com', '최상도', 'password7', '010-7890-1234', '1993-10-10', '2023-07-04 08:30:00', 'student', '1', 'activation_key_7', 'profile7.jpg'),
('olivia@example.com', '송현주', 'password8', '010-8901-2345', '1986-03-05', '2023-07-03 16:50:00', 'teacher', '0', '', 'profile8.jpg'),
('alexander@example.com', '정지우', 'password9', '010-9012-3456', '1991-06-15', '2023-07-02 13:15:00', 'student', '1', 'activation_key_9', 'profile9.jpg'),
('ava@example.com', '김승연', 'password10', '010-0123-4567', '1989-09-05', '2023-07-01 07:45:00', 'student', '1', 'activation_key_10', 'profile10.jpg'),
('william@example.com', '유재석', 'password11', '010-1234-5678', '1994-12-20', '2023-06-30 10:30:00', 'teacher', '1', 'activation_key_11', 'profile11.jpg'),
('isabella@example.com', '김민준', 'password12', '010-2345-6789', '1984-02-28', '2023-06-29 12:00:00', 'student', '0', '', 'profile12.jpg'),
('jacob@example.com', '서지환', 'password13', '010-3456-7890', '1996-03-15', '2023-06-28 15:20:00', 'student', '1', 'activation_key_13', 'profile13.jpg'),
('mia@example.com', '이승현', 'password14', '010-4567-8901', '1983-05-10', '2023-06-27 09:20:00', 'teacher', '1', 'activation_key_14', 'profile14.jpg'),
('logan@example.com', '고지용', 'password15', '010-5678-9012', '1997-08-05', '2023-06-26 14:10:00', 'student', '1', 'activation_key_15', 'profile15.jpg'),
('amelia@example.com', '박수빈', 'password16', '010-6789-0123', '1982-11-15', '2023-06-25 11:50:00', 'student', '0', '', 'profile16.jpg'),
('mason@example.com', '김재호', 'password17', '010-7890-1234', '1998-01-30', '2023-06-24 08:40:00', 'teacher', '1', 'activation_key_17', 'profile17.jpg'),
('sophia111@example.com', '임슬기', 'password18', '010-8901-2345', '1981-04-20', '2023-06-23 17:00:00', 'student', '1', 'activation_key_18', 'profile18.jpg'),
('jacob222@example.com', '김영재', 'password19', '010-9012-3456', '1999-07-15', '2023-06-22 13:30:00', 'student', '1', 'activation_key_19', 'profile19.jpg'),
('mia66@example.com', '오성민', 'password20', '010-0123-4567', '1980-10-05', '2023-06-21 08:15:00', 'teacher', '0', '', 'profile20.jpg'),
('william66@example.com', '김동현', 'password21', '010-1234-5678', '2000-02-10', '2023-06-20 11:40:00', 'student', '1', 'activation_key_21', 'profile21.jpg'),
('ava11@example.com', '장미래', 'password22', '010-2345-6789', '1979-03-25', '2023-06-19 12:20:00', 'student', '1', 'activation_key_22', 'profile22.jpg'),
('jacob11@example.com', '오승훈', 'password23', '010-3456-7890', '2001-04-15', '2023-06-18 15:50:00', 'teacher', '1', 'activation_key_23', 'profile23.jpg'),
('mia22@example.com', '이지안', 'password24', '010-4567-8901', '1978-05-20', '2023-06-17 09:30:00', 'student', '0', '', 'profile24.jpg'),
('logan33@example.com', '김민찬', 'password25', '010-5678-9012', '2002-06-05', '2023-06-16 14:25:00', 'student', '1', 'activation_key_25', 'profile25.jpg'),
('amelia123@example.com', '신현우', 'password26', '010-6789-0123', '1977-07-10', '2023-06-15 11:55:00', 'teacher', '1', 'activation_key_26', 'profile26.jpg'),
('mason00@example.com', '김수현', 'password27', '010-7890-1234', '2003-08-15', '2023-06-14 08:35:00', 'student', '1', 'activation_key_27', 'profile27.jpg'),
('sophia123@example.com', '장현우', 'password28', '010-8901-2345', '1976-09-30', '2023-06-13 16:15:00', 'student', '1', 'activation_key_28', 'profile28.jpg'),
('jacob555@example.com', '강지우', 'password29', '010-9012-3456', '2004-10-25', '2023-06-12 13:05:00', 'teacher', '0', '', 'profile29.jpg'),
('mia135@example.com', '신지현', 'password30', '010-0123-4567', '1975-11-10', '2023-06-11 07:55:00', 'student', '1', 'activation_key_30', 'profile30.jpg');

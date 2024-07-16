-- member 테이블 + 학생 예시 데이터
INSERT INTO member (email, name, password, phone, birth, create_date, role, active, active_key, profile_image) VALUES
('john@example.com', '홍길동', 'password1', '010-1234-5678', '1990-01-01', '2023-07-10 10:00:00', 'student', '1', 'activation_key_1', 'profile1.jpg'),
('emma@example.com', '김영희', 'password2', '010-2345-6789', '1985-05-15', '2023-07-09 12:30:00', 'student', '1', 'activation_key_2', 'profile2.jpg'),
('michael@example.com', '박철수', 'password3', '010-3456-7890', '1995-08-20', '2023-07-08 15:45:00', 'student', '1', 'activation_key_3', 'profile3.jpg'),
('sophia@example.com', '이미자', 'password4', '010-4567-8901', '1988-11-30', '2023-07-07 09:00:00', 'student', '0', '', 'profile4.jpg'),
('james@example.com', '김미영', 'password5', '010-5678-9012', '1992-04-25', '2023-07-06 14:20:00', 'student', '1', 'activation_key_5', 'profile5.jpg'),
('emily@example.com', '황정은', 'password6', '010-6789-0123', '1987-07-12', '2023-07-05 11:10:00', 'student', '1', 'activation_key_6', 'profile6.jpg'),
('ethan@example.com', '최상도', 'password7', '010-7890-1234', '1993-10-10', '2023-07-04 08:30:00', 'student', '1', 'activation_key_7', 'profile7.jpg'),
('olivia@example.com', '송현주', 'password8', '010-8901-2345', '1986-03-05', '2023-07-03 16:50:00', 'student', '0', '', 'profile8.jpg'),
('alexander@example.com', '정지우', 'password9', '010-9012-3456', '1991-06-15', '2023-07-02 13:15:00', 'student', '1', 'activation_key_9', 'profile9.jpg'),
('ava@example.com', '김승연', 'password10', '010-0123-4567', '1989-09-05', '2023-07-01 07:45:00', 'student', '1', 'activation_key_10', 'profile10.jpg'),
('william@example.com', '유재석', 'password11', '010-1234-5678', '1994-12-20', '2023-06-30 10:30:00', 'student', '1', 'activation_key_11', 'profile11.jpg'),
('isabella@example.com', '김민준', 'password12', '010-2345-6789', '1984-02-28', '2023-06-29 12:00:00', 'student', '0', '', 'profile12.jpg'),
('jacob@example.com', '서지환', 'password13', '010-3456-7890', '1996-03-15', '2023-06-28 15:20:00', 'student', '1', 'activation_key_13', 'profile13.jpg'),
('mia@example.com', '이승현', 'password14', '010-4567-8901', '1983-05-10', '2023-06-27 09:20:00', 'student', '1', 'activation_key_14', 'profile14.jpg'),
('logan@example.com', '고지용', 'password15', '010-5678-9012', '1997-08-05', '2023-06-26 14:10:00', 'student', '1', 'activation_key_15', 'profile15.jpg'),
('amelia@example.com', '박수빈', 'password16', '010-6789-0123', '1982-11-15', '2023-06-25 11:50:00', 'student', '0', '', 'profile16.jpg'),
('mason@example.com', '김재호', 'password17', '010-7890-1234', '1998-01-30', '2023-06-24 08:40:00', 'student', '1', 'activation_key_17', 'profile17.jpg'),
('sophia111@example.com', '임슬기', 'password18', '010-8901-2345', '1981-04-20', '2023-06-23 17:00:00', 'student', '1', 'activation_key_18', 'profile18.jpg'),
('jacob222@example.com', '김영재', 'password19', '010-9012-3456', '1999-07-15', '2023-06-22 13:30:00', 'student', '1', 'activation_key_19', 'profile19.jpg'),
('mia66@example.com', '오성민', 'password20', '010-0123-4567', '1980-10-05', '2023-06-21 08:15:00', 'student', '0', '', 'profile20.jpg'),
('william66@example.com', '김동현', 'password21', '010-1234-5678', '2000-02-10', '2023-06-20 11:40:00', 'student', '1', 'activation_key_21', 'profile21.jpg'),
('ava11@example.com', '장미래', 'password22', '010-2345-6789', '1979-03-25', '2023-06-19 12:20:00', 'student', '1', 'activation_key_22', 'profile22.jpg'),
('jacob11@example.com', '오승훈', 'password23', '010-3456-7890', '2001-04-15', '2023-06-18 15:50:00', 'student', '1', 'activation_key_23', 'profile23.jpg'),
('mia22@example.com', '이지안', 'password24', '010-4567-8901', '1978-05-20', '2023-06-17 09:30:00', 'student', '0', '', 'profile24.jpg'),
('logan33@example.com', '김민찬', 'password25', '010-5678-9012', '2002-06-05', '2023-06-16 14:25:00', 'student', '1', 'activation_key_25', 'profile25.jpg'),
('amelia123@example.com', '신현우', 'password26', '010-6789-0123', '1977-07-10', '2023-06-15 11:55:00', 'student', '1', 'activation_key_26', 'profile26.jpg'),
('mason00@example.com', '김수현', 'password27', '010-7890-1234', '2003-08-15', '2023-06-14 08:35:00', 'student', '1', 'activation_key_27', 'profile27.jpg'),
('sophia123@example.com', '장현우', 'password28', '010-8901-2345', '1976-09-30', '2023-06-13 16:15:00', 'student', '1', 'activation_key_28', 'profile28.jpg'),
('jacob555@example.com', '강지우', 'password29', '010-9012-3456', '2004-10-25', '2023-06-12 13:05:00', 'student', '0', '', 'profile29.jpg'),
('mia135@example.com', '신지현', 'password30', '010-0123-4567', '1975-11-10', '2023-06-11 07:55:00', 'student', '1', 'activation_key_30', 'profile30.jpg');


-- member 테이블 + 강사 예시 데이터 
INSERT INTO member (email, name, password, phone, birth, create_date, role, active, active_key, category, profile_image) VALUES
('teacher1@example.com', '김철수', 'password1', '010-1111-1111', '1980-01-01', '2023-01-01 10:00:00', 'teacher', '1', 'key1', '프론트엔드', 'teacher1.jpg'),
('teacher2@example.com', '이영희', 'password2', '010-2222-2222', '1981-02-02', '2023-02-01 11:00:00', 'teacher', '1', 'key2', '백엔드', 'teacher2.jpg'),
('teacher3@example.com', '박민수', 'password3', '010-3333-3333', '1982-03-03', '2023-03-01 12:00:00', 'teacher', '1', 'key3', '모바일앱개발', 'teacher3.jpg'),
('teacher4@example.com', '최수진', 'password4', '010-4444-4444', '1983-04-04', '2023-04-01 13:00:00', 'teacher', '1', 'key4', '알고리즘', 'teacher4.jpg'),
('teacher5@example.com', '홍길동', 'password5', '010-5555-5555', '1984-05-05', '2023-05-01 14:00:00', 'teacher', '1', 'key5', '자격증', 'teacher5.jpg'),
('teacher6@example.com', '김영수', 'password6', '010-6666-6666', '1985-06-06', '2023-06-01 15:00:00', 'teacher', '1', 'key6', '프론트엔드', 'teacher6.jpg'),
('teacher7@example.com', '이민정', 'password7', '010-7777-7777', '1986-07-07', '2023-07-01 16:00:00', 'teacher', '1', 'key7', '백엔드', 'teacher7.jpg'),
('teacher8@example.com', '박지훈', 'password8', '010-8888-8888', '1987-08-08', '2023-08-01 17:00:00', 'teacher', '1', 'key8', '모바일앱개발', 'teacher8.jpg'),
('teacher9@example.com', '최지연', 'password9', '010-9999-9999', '1988-09-09', '2023-09-01 18:00:00', 'teacher', '1', 'key9', '알고리즘', 'teacher9.jpg'),
('teacher10@example.com', '정현우', 'password10', '010-1010-1010', '1989-10-10', '2023-10-01 19:00:00', 'teacher', '1', 'key10', '자격증', 'teacher10.jpg'),
('teacher11@example.com', '한예슬', 'password11', '010-1111-1112', '1990-11-11', '2023-11-01 20:00:00', 'teacher', '1', 'key11', '프론트엔드', 'teacher11.jpg'),
('teacher12@example.com', '서준호', 'password12', '010-1212-1212', '1991-12-12', '2023-12-01 21:00:00', 'teacher', '1', 'key12', '백엔드', 'teacher12.jpg'),
('teacher13@example.com', '윤아름', 'password13', '010-1313-1313', '1992-01-13', '2024-01-01 22:00:00', 'teacher', '1', 'key13', '모바일앱개발', 'teacher13.jpg'),
('teacher14@example.com', '백지훈', 'password14', '010-1414-1414', '1993-02-14', '2024-02-01 23:00:00', 'teacher', '1', 'key14', '알고리즘', 'teacher14.jpg'),
('teacher15@example.com', '전지현', 'password15', '010-1515-1515', '1994-03-15', '2024-03-01 00:00:00', 'teacher', '1', 'key15', '자격증', 'teacher15.jpg'),
('teacher16@example.com', '한수진', 'password16', '010-1616-1616', '1995-04-16', '2024-04-01 01:00:00', 'teacher', '1', 'key16', '프론트엔드', 'teacher16.jpg'),
('teacher17@example.com', '이준영', 'password17', '010-1717-1717', '1996-05-17', '2024-05-01 02:00:00', 'teacher', '1', 'key17', '백엔드', 'teacher17.jpg'),
('teacher18@example.com', '김소희', 'password18', '010-1818-1818', '1997-06-18', '2024-06-01 03:00:00', 'teacher', '1', 'key18', '모바일앱개발', 'teacher18.jpg'),
('teacher19@example.com', '박준혁', 'password19', '010-1919-1919', '1998-07-19', '2024-07-01 04:00:00', 'teacher', '1', 'key19', '알고리즘', 'teacher19.jpg'),
('teacher20@example.com', '최유리', 'password20', '010-2020-2020', '1999-08-20', '2024-08-01 05:00:00', 'teacher', '1', 'key20', '자격증', 'teacher20.jpg');






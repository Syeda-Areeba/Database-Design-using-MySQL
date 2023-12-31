INSERT INTO User (User_Name, Email, Password) VALUES
('John Smith', 'john.smith@gmail.com', 'pass123'),
('Alice Johnson', 'alice.johnson@yahoo.com', '12345'),
('Mohammed Ali', 'm.ali@hotmail.com', 'abcde'),
('Sarah Kim', 'sarah.kim@gmail.com', 'password555'),
('Juan Perez', 'jperez@gmail.com', 'qwert'),
('Maria Rodriguez', 'maria.rodriguez@yahoo.com', 'mypasscode'),
('James Lee', 'james.lee@gmail.com', 'fedcba'),
('Hannah Baker', 'h.baker@hotmail.com', '54321'),
('Amanda Nguyen', 'amanda.nguyen@gmail.com', 'password1234'),
('David Hernandez', 'dhernandez@gmail.com', 'pass_code_098'),
('Emily Wang', 'emily.wang@gmail.com', 'pin_658'),
('Omar Ali', 'o.ali@hotmail.com', 'qwerty_99'),
('Jasmine Patel', 'jpatel@yahoo.com', '1234_password'),
('Brandon Lee', 'blee@gmail.com', 'xyz_pin_65'),
('Grace Kim', 'gkim@hotmail.com', 'my_pin_pass'),
('Emma Woods', 'emma.woods@example.com', 'secret'),
('Gabriel Davidson', 'gabriel.baker@example.com', 'pincode88'),
('Lauren Rivera', 'lauren.rivera@example.com', 'my_pass_yt' ),
('Owen Garcia', 'owen.garcia@example.com', 'asd1234'),
('Sophia Lee', 'sophia.lee@gmail.com', 'sophia123'),
('Ethan Chen', 'ethan.chen@yahoo.com', 'chen456'),
('Lila Patel', 'lila.patel@hotmail.com', 'lila567'),
('Alexis Johnson', 'alexis.johnson@gmail.com', 'johnson789'),
('Adam Smith', 'adam.smith@example.com', 'adam_pass'),
('Liam Brown', 'liam.brown@yahoo.com', 'brown123'),
('Aria Davis', 'aria.davis@gmail.com', 'aria_password'),
('Nathan Wilson', 'n.wilson@example.com', 'nathan123'),
('Mia Jackson', 'mia.jackson@example.com', 'mia567');

INSERT INTO Content_Creator (User_Id, Video_Count) VALUES
(1, 20),
(2, 15),
(3, 10),
(4, 30),
(5, 25),
(6, 12),
(7, 8),
(8, 18),
(9, 22),
(10, 27),
(11, 17),
(12, 23),
(13, 8),
(14, 11),
(15, 6);

INSERT INTO Viewer (User_Id, Num_watched_videos, Num_favourite_videos) VALUES
(28, 100, 15),
(27, 75, 10),
(26, 50, 5),
(25, 200, 20),
(24, 150, 12),
(23, 60, 7),
(22, 40, 3),
(21, 90, 9),
(20, 120, 14),
(19, 180, 18),
(11, 200, 25),
(12, 150, 20),
(13, 75, 7),
(14, 100, 10),
(15, 50, 5);

INSERT INTO Ad_Agency (User_Id, Num_Ads_Subscribed) VALUES
(1, 5),
(2, 4),
(3, 3),
(4, 6),
(5, 7),
(16, 2),
(17, 1),
(18, 3),
(19, 4),
(20, 6);

INSERT INTO Admin (User_Id, Admin_Level) VALUES
(1, 'high'),
(2, 'med'),
(3, 'low'),
(4, 'high'),
(5, 'low'),
(6, 'med'),
(7, 'high');
    
INSERT INTO Channels (User_Id, Ch_Name, No_of_Subscribers) VALUES 
(1, 'FoodiesTV', 1500),
(2, 'FitnessGuru', 100),
(3, 'TravelDiaries', 750),
(4, 'DIY_Hacks', 500),
(5, 'Pet_Lovers', 2500),
(6, 'Music_Notes', 1250),
(7, 'Fashion_Life', 800),
(8, 'Comedy_Central', 600),
(9, 'Tech_Trends', 4500),
(10, 'Artistic_Soul', 300),
(11, 'Gaming Network', 5000),
(12, 'Movie Buffs', 280),
(13, 'Nature Lovers', 1700),
(14, 'Educational Insights', 3200),
(15, 'Science Enthusiasts', 2700),
(16, 'Spiritual Journey', 2100),
(17, 'Business Savvy', 2600),
(18, 'Photography', 2900),
(19, 'News Update', 400),
(20, 'PewDiePie', 11),
(21, 'MrBeast', 63),
(22, 'Dude Perfect', 4),
(23, 'Markiplier', 15),
(24, 'Smosh', 0),
(25, 'JennaMarbles', 2),
(26, 'Tyler Oakley', 74),
(27, 'Caspar Lee', 78),
(28, 'Grace Helbig', 31);

INSERT INTO Video (Vid_Name, Channel_Id, Creator_Id, Ad_Enabled, Date_Posted, No_of_Views, Duration, URL) VALUES 
('5-Minute Recipe', 1, 1, true, '2023-01-20', 50000, '00:15:30', 'https://www.youtube.com/watch?v=12345'),
('HIIT Workout', 2, 2, true, '2023-01-22', 75000, '00:25:15', 'https://www.youtube.com/watch?v=23456'),
('Island Paradise', 3, 3, true, '2023-02-23', 25000, '00:10:01', 'https://www.youtube.com/watch?v=34567'),
('DIY Home Decor', 4, 4, true, '2023-02-25', 10000, '00:12:34', 'https://www.youtube.com/watch?v=45678'),
('Cute Pet Compilation', 5, 5, true, '2023-02-26', 15000, '00:34:05', 'https://www.youtube.com/watch?v=56789'),
('Guitar Tutorial', 6, 6, false, '2023-03-27', 30000, '00:15:15', 'https://www.youtube.com/watch?v=67890'),
('Spring Fashion Haul', 7, 7, true, '2023-03-28', 45000, '00:09:19', 'https://www.youtube.com/watch?v=78901'),
('Comedy Sketch', 8, 8, true, '2022-03-29', 20000, '00:17:08', 'https://www.youtube.com/watch?v=89012'),
('Latest Tech Gadgets', 9, 9, true, '2022-03-30', 40000, '00:20:00', 'https://www.youtube.com/watch?v=90123'),
('Oil Painting Tutorial', 4, 4, true, '2022-03-31', 10000, '00:16:17', 'https://www.youtube.com/watch?v=01234'),
('Travel Vlog: Japan', 10, 10, true, '2023-04-01', 80000, '00:23:47', 'https://www.youtube.com/watch?v=12345'),
('Yoga for Beginners', 10, 10, true, '2023-04-02', 60000, '00:30:01', 'https://www.youtube.com/watch?v=23456'),
('ReactJS Tutorial', 13, 13, false, '2023-04-03', 35000, '00:42:22', 'https://www.youtube.com/watch?v=34567'),
('Beauty Hacks', 12, 12, true, '2022-04-04', 20000, '00:11:59', 'https://www.youtube.com/watch?v=45678'),
('Motivational Speech', 11, 11, true, '2022-04-05', 5000, '00:05:56', 'https://www.youtube.com/watch?v=56789'),
('Healthy Breakfast Ideas', 3, 3, true, '2022-04-06', 30000, '00:08:45', 'https://www.youtube.com/watch?v=67890'),
('Gameplay Walkthrough', 2, 2, false, '2022-04-07', 40000, '01:02:15', 'https://www.youtube.com/watch?v=78901'),
('Fashion Trends 2022', 14, 14, true, '2022-04-08', 55000, '00:13:05', 'https://www.youtube.com/watch?v=89012'),
('Healthy Habits', 1, 1, true, '2022-04-09', 25000, '00:19:19', 'https://www.youtube.com/watch?v=90123'),
('Plant Care Tips', 15, 15, false, '2022-04-10', 12000, '00:07:27', 'https://www.youtube.com/watch?v=01234');

INSERT INTO Subscribe (User_Id, Channel_Id, Subscribe_date) VALUES 
(1, 2, '2022-01-20'),
(1, 3, '2022-01-21'),
(1, 4, '2022-01-23'),
(2, 1, '2022-01-24'),
(2, 5, '2022-01-25'),
(2, 6, '2022-01-27'),
(3, 7, '2022-02-28'),
(3, 8, '2022-02-05'),
(4, 12, '2022-02-22'),
(4, 13, '2022-02-24'),
(5, 14, '2022-03-26'),
(6, 15, '2022-03-28'),
(7, 16, '2022-03-30'),
(7, 17, '2022-04-01'),
(20, 3, '2022-04-03'),
(7, 10, '2022-04-05'),
(8, 11, '2022-05-07'),
(8, 1, '2022-05-09'),
(9, 2, '2022-05-11'),
(9, 13, '2022-06-13'),
(10, 14, '2022-06-15'),
(10, 5, '2022-07-17'),
(11, 9, '2022-07-19'),
(12, 6, '2022-07-21'),
(13, 16, '2022-07-23'),
(13, 18, '2022-07-25'),
(14, 19, '2022-08-27'),
(14, 3, '2022-09-27'),
(15, 19, '2022-10-27'),
(16, 17, '2022-10-01'),
(17, 8, '2022-10-03'),
(18, 10, '2022-11-05'),
(20, 11, '2022-12-07'),
(21, 1, '2022-12-09'),
(19, 2, '2022-12-11'),
(22, 20, '2022-12-13'),
(23, 21, '2023-01-15'),
(24, 22, '2023-01-17'),
(25, 23, '2023-02-19'),
(26, 25, '2023-02-21'),
(27, 24, '2023-03-23'),
(28, 26, '2023-03-25'),
(14, 25, '2023-04-01'),
(14, 27, '2023-04-02'),
(15, 28, '2023-04-03');

INSERT INTO Comments (User_Id, Video_Id, Comment_Text, Comment_DateTime, Sentiment) VALUES 
(1, 2, "Great video!", '2023-03-10 10:23:00', 'pos'),
(2, 3, "I didn't understand the point of this video", '2023-03-11 15:02:00', 'neu'),
(1, 5, "This video was really helpful, thanks!", '2023-03-12 08:45:00', 'pos'),
(3, 2, "I found this video quite boring", '2023-03-13 17:30:00', 'neg'),
(4, 4, "I'm looking forward to the next episode of this series!", '2023-03-15 11:10:00', 'pos'),
(2, 7, "This video made me laugh out loud", '2023-03-16 13:45:00', 'pos'),
(5, 9, "I learned a lot from this video, thanks for sharing", '2023-03-18 09:20:00', 'pos'),
(3, 6, "I didn't agree with the opinion presented in this video", '2023-03-20 16:15:00', 'neu'),
(9, 6, "Pretty Pathetic!!", '2023-03-20 16:15:00', 'neg'),
(6, 8, "I wish this video was longer, I enjoyed it so much", '2023-03-22 14:00:00', 'pos'),
(4, 10, "This video was too technical for me, but I still appreciate the effort", '2023-03-24 12:30:00', 'neu'),
(10, 8, "This video is such a time waste!", "2022-03-14 07:30:00", "neg"),
(2, 8, "Wow, this is amazing. I never knew you could do that!", "2022-02-14 08:30:00", "pos"),
(5, 1, "I didn't really understand what was going on in this video", "2022-02-28 10:15:00", "neu"),
(4, 3, "Great job, keep up the good work!", "2022-03-03 14:00:00", "pos"),
(3, 10, "This video is so inspiring! I can't wait to try this myself", "2022-03-15 16:45:00", "pos"),
(1, 7, "I found this video to be really informative. Thank you for sharing!", "2022-03-22 11:20:00", "pos"),
(20, 20, "This video was really interesting", '2023-04-01 09:30:00', 'pos'),
(21, 19, "I completely agree with the opinion presented in this video", '2023-04-02 12:15:00', 'pos'),
(22, 18, "I didn't enjoy this video at all, it was quite boring", '2023-04-03 16:20:00', 'neg'),
(23, 13, "I'm so glad I stumbled upon this video, it was really helpful", '2023-04-04 11:05:00', 'pos'),
(24, 12, "This video was too fast-paced for me to follow", '2023-04-05 13:45:00', 'neu'),
(25, 11, "I wish this video was longer, it was really enjoyable", '2023-04-06 08:50:00', 'pos'),
(26, 14, "This video was great, I'll definitely be trying out this workout", '2023-04-07 10:20:00', 'pos'),
(27, 15, "I found this video to be quite confusing, but I appreciate the effort", '2023-04-08 14:30:00', 'neu'),
(28, 16, "This video was hilarious, I couldn't stop laughing", '2023-04-09 16:15:00', 'pos'),
(10, 17, "I didn't find this video to be very helpful, it didn't provide any new information", '2023-04-10 12:40:00', 'neg');

INSERT INTO Reactions (User_Id, Video_Id, Reaction_type) VALUES 
(1, 1, 'like'),
(2, 3, 'dislike'),
(1, 5, 'like'),
(3, 2, 'like'),
(4, 4, 'like'),
(2, 7, 'like'),
(5, 9, 'like'),
(3, 6, 'dislike'),
(6, 8, 'like'),
(4, 10, 'dislike'),
(3, 6, "like"),
(8, 9, "dislike"),
(6, 2, "dislike"),
(2, 10, "like"),
(7, 1, "dislike");

INSERT INTO Ad (Ad_Name, Ad_Type, Price_per_View,Agency_Id) VALUES 
("Summer Sale", "image", 5,5),
("Car Commercial", "video", 10,1),
("Soda Advertisement", "short pause", 2,4),
("Fashion Collection", "image", 4,2),
("Movie Trailer", "video", 8,16),
("Fast Food Promotion", "short pause", 1,3),
("Cosmetic Product", "image", 3,4),
("Sports Event", "video", 12,17),
("Insurance Plan", "short pause", 3,18),
("Online Course", "video", 6,1),
('New Game', 'video', 11,18),
('New Music Album', 'video', 15,19),
('Fitness App', 'short pause', 6,20),
('Luxury Car Showroom', 'image', 7,3),
('Movie Trailer', 'video', 5,2),
('Transport Service', 'image', 5,20);

INSERT INTO Location (Location_Name, Cost_per_View) VALUES 
('North America', 2),
('Europe', 3),
('Asia', 1),
('Australia', 4),
('South America', 2),
('Africa', 1),
('Middle East', 3),
('Central America', 2),
('Caribbean', 2),
('Oceania', 4),
('New York City', 5),
('Los Angeles', 4),
('London', 3),
('Paris', 4),
('Sydney', 5);

INSERT INTO Ad_Location (Ad_Id, Location_Id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(1, 10),
(2, 7),
(3, 8),
(4, 9),
(5, 9);

INSERT INTO Ad_Video (Video_Id, Ad_Id) VALUES 
(1, 10),
(2, 9),
(3, 8),
(4, 7),
(5, 1),
(16, 5),
(7, 4),
(8, 3),
(9, 2),
(10, 6),
(1, 9),
(2, 8),
(13, 4),
(4, 3),
(5, 7),
(4, 6),
(15, 1),
(16, 4),
(7, 7),
(18, 3),
(12, 2),
(19, 1),
(11, 6),
(2, 1),
(3, 4),
(8, 8),
(9, 7);

INSERT INTO Earnings (Earning_Date, Amount, Creator_Id) VALUES
('2023-04-01', 500, 1),
('2023-03-29', 750, 2),
('2023-03-27', 1000, 3),
('2023-03-25', 900, 4),
('2023-03-22', 1200, 5),
('2023-03-20', 1500, 6),
('2023-03-08', 800, 7),
('2023-02-13', 1100, 8),
('2023-02-11', 1300, 9),
('2023-02-12', 900, 10),
('2023-01-15', 1200, 7),
('2023-01-01', 8000, 3),
('2023-01-15', 6000, 1),
('2022-12-01', 1000, 5),
('2022-11-19', 7000, 6),
('2022-01-10', 1110, 15),
('2023-01-23', 1230, 14),
('2023-01-13', 6780, 13),
('2022-02-14', 1450, 12),
('2022-03-07', 7600, 11),
('2022-04-16', 2100, 11),
('2022-07-01', 2300, 13),
('2022-06-15', 4300, 12),
('2022-06-15', 1400, 4),
('2022-05-01', 1200, 9),
('2022-05-15', 5500, 7);
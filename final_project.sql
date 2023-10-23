

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `categories` (
  `categorie_name` varchar(100) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `categories` (`categorie_name`, `categorie_id`) VALUES
('headphone', 1),
('laptop', 2),
('phone', 3);


CREATE TABLE `photos` (
  `photo_title` varchar(100) NOT NULL,
  `photo_License` varchar(100) NOT NULL,
  `Photo_Date` date NOT NULL,
  `photo_Dimension` varchar(100) NOT NULL,
  `photo_format` varchar(100) NOT NULL,
  `photo_active` tinytext NOT NULL,
  `photo_tag` varchar(100) NOT NULL,
  `photo_image` blob NOT NULL,
  `photo_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `photos` (`photo_title`, `photo_License`, `Photo_Date`, `photo_Dimension`, `photo_format`, `photo_active`, `photo_tag`, `photo_image`, `photo_id`, `category_id`) VALUES
('yellow', 'License yellow', '2023-10-01', '400*500', 'JPG File (.jpg)', 'on', 'girl', 0x322e6a7067, 43, 1),
('black', 'License black', '2023-10-08', '400*550', 'JPG File (.jpg)', 'on', 'girl', 0x3831664f7668654974314c2e5f41435f5546313030302c313030305f514c38305f2e6a7067, 52, 1),
('girl', 'License girl', '2023-10-13', '500*500', 'JPG File (.jpg)', 'on', 'girl', 0x36314c6a496f7930684f4c2e5f41435f53583637395f2e6a7067, 53, 3),



CREATE TABLE `photo_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `user` (
  `user_name` varchar(150) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_password` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `user` (`user_name`, `full_name`, `user_email`, `user_password`, `active`, `user_id`) VALUES
('ayarabih', 'ayarabih', 'ayarabih21@gmail.com', 'ayaaya', 0, 1),
('hossammostafa', 'hossammostafa', 'hossam@gmail.com', '12345', 0, 2),
('yassmen', 'yassmenmohamed', 'yassmen@gmail.com', 'ayaaa', 0, 3),



CREATE TABLE `user_tag` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `categorie_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorie_id`);

ALTER TABLE `photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `category_id` (`category_id`);

ALTER TABLE `photo_user`
  ADD KEY `user_name` (`user_id`,`photo_id`),
  ADD KEY `photo_id` (`photo_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `user_tag`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `categorie_name` (`categorie_name`);


ALTER TABLE `categories`
  MODIFY `categorie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;


ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `photo_user`
  ADD CONSTRAINT `photo_user_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`photo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `photo_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `user_tag`
  ADD CONSTRAINT `user_tag_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_tag_ibfk_2` FOREIGN KEY (`categorie_name`) REFERENCES `categories` (`categorie_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


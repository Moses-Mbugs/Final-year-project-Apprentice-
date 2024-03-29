-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 01:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apprentice`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_projects`
--

CREATE TABLE `accepted_projects` (
  `acceptance_id` int(11) NOT NULL,
  `mentee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accepted_projects`
--

INSERT INTO `accepted_projects` (`acceptance_id`, `mentee_id`, `project_id`, `timestamp`, `is_deleted`) VALUES
(1, 12, 1, '2023-11-22 08:11:40', 1),
(2, 12, 15, '2023-11-22 08:18:31', 1),
(3, 12, 4, '2023-11-22 16:30:15', 1),
(4, 12, 7, '2023-11-22 16:51:54', 1),
(5, 12, 4, '2023-11-23 03:40:19', 1),
(6, 12, 8, '2023-11-23 03:43:27', 1),
(7, 12, 4, '2023-11-23 03:46:56', 0),
(8, 6, 4, '2023-11-23 04:20:53', 0),
(9, 6, 5, '2023-11-23 04:20:56', 0),
(10, 12, 6, '2023-11-28 07:33:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `message_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `mentee_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`message_id`, `mentor_id`, `mentee_id`, `message`, `timestamp`) VALUES
(1, 7, 12, 'hello sir', '2023-11-24 11:31:49'),
(2, 7, 12, 'my name is zion', '2023-11-24 11:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `mentorship_requests`
--

CREATE TABLE `mentorship_requests` (
  `request_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `mentee_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentorship_requests`
--

INSERT INTO `mentorship_requests` (`request_id`, `mentor_id`, `mentee_id`, `status`, `timestamp`) VALUES
(1, 7, 12, 'accepted', '2023-11-20 05:22:53'),
(2, 7, 6, 'accepted', '2023-11-23 15:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `image_path`, `description`, `title`, `category`, `start_date`, `end_date`, `is_deleted`) VALUES
(1, 7, '../images/project_images/d28fae66aa7684395cb8dd7760b90891.jpg', 'Hadi sijui hii ni gani', 'hadi ', 'ArtificialIntelligence', '2023-11-30', '2023-12-09', 1),
(4, 7, '../images/project_images/F90tXWJakAA1UqE.jpeg', 'please work', 'Let me cook', 'IOT', '2023-11-13', '2023-12-09', 1),
(5, 7, '../images/project_images/F9204pTXgAAW-A9.jpeg', 'anime 4 life', 'Jogo is weak', 'IOT', '2023-11-13', '2023-12-09', 1),
(6, 7, '../images/project_images/premio.jpg', 'Toyota premio \r\nstanced', 'Premio', 'ArtificialIntelligence', '2023-11-13', '2023-12-01', 1),
(7, 7, '../images/project_images/4q1MFt.jpg', 'Mitsubishi Evo x', 'Evo ix', 'ArtificialIntelligence', '2023-12-09', '2023-12-09', 0),
(8, 7, '../images/project_images/HTML-Basics.webp', 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser. It defines the meaning and structure of web content. It is often assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\n', 'HTML and CSS', 'Front End', '2023-11-14', '2023-12-09', 1),
(9, 7, '../images/project_images/program.webp', 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser. It defines the meaning and structure of web content. It is often assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for its appearance.\r\n\r\nHTML can embed programs written in a scripting language such as JavaScript, which affects the behavior and content of web pages. The inclusion of CSS defines the look and layout of content. The World Wide Web Consortium (W3C), former maintainer of the HTML and current maintainer of the CSS standards, has encouraged the use of CSS over explicit presentational HTML since 1997. A form of HTML, known as HTML5, is used to display video and audio, primarily using the  element, together with JavaScript.\r\n\r\nThe first publicly available description of HTML was a document called &#34;HTML Tags&#34;,\r\n\r\nAfter the HTML and HTML+ drafts expired in early 1994, the IETF created an HTML Working Group. In 1995, this working group completed &#34;HTML 2.0&#34;, the first HTML specification intended to be treated as a standard against which future implementations should be based.', 'trial 2', 'Artificial Intelligence', '2023-12-09', '2023-12-09', 1),
(10, 7, '../images/project_images/download.jpeg', 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser. It defines the meaning and structure of web content. It is often assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for its appearance.\r\n\r\nHTML can embed programs written in a scripting language such as JavaScript, which affects the behavior and content of web pages. The inclusion of CSS defines the look and layout of content. The World Wide Web Consortium (W3C), former maintainer of the HTML and current maintainer of the CSS standards, has encouraged the use of CSS over explicit presentational HTML since 1997. A form of HTML, known as HTML5, is used to display video and audio, primarily using the  element, together with JavaScript.\r\n\r\nThe first publicly available description of HTML was a document called &#34;HTML Tags&#34;,\r\n\r\nAfter the HTML and HTML+ drafts expired in early 1994, the IETF created an HTML Working Group. In 1995, this working group completed &#34;HTML 2.0&#34;, the first HTML specification intended to be treated as a standard against which future implementations should be based.', 'CSS', 'Front End', '2023-11-14', '2023-12-09', 1),
(11, 7, '../images/project_images/house.png', 'hehehe', 'Operation build', 'IOT', '2023-11-14', '2023-12-09', 1),
(12, 7, '../images/project_images/riggy g.jpeg', 'Operation destroy kenya\r\nwakadinali 4 life\r\nNairobi baddies', 'Riggy G', 'Cyber Security', '2023-11-14', '2023-12-09', 1),
(13, 7, '../images/project_images/riggy g.jpeg', 'riggy g', 'Loans', 'Artificial Intelligence', '2023-11-14', '2023-12-09', 1),
(14, 7, '../images/project_images/meme.jpg', 'meme', 'meme', 'Artificial Intelligence', '2023-11-16', '2023-12-09', 1),
(15, 7, '../images/project_images/creepy squidward.jpg', 'bleh', 'Squidward', 'Back End', '2023-11-21', '2023-12-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `experience` enum('beginner','mentor') NOT NULL,
  `profession` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastlogin` text DEFAULT NULL,
  `code` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `experience`, `profession`, `password`, `registration_date`, `lastlogin`, `code`) VALUES
(3, 'King', 'Asgard', 'asgard@gmail.com', 'mentor', 'Artificial Intelligence', '$2y$10$jti1bB/P5r0GMA7YWL3/jO82WwA6dw32D/LgtyHFGZEmC/QQtUkCa', '2023-10-10 11:49:54', NULL, NULL),
(4, 'Bosco121', 'Mlulwa', 'wmuchiri@strathmore.edu', 'beginner', 'Front end', '$2y$10$Cj5NBHbWPy.1yaZS/d9G2OD2kqGDnHNnFjfy4MEEAZ3DwAcBkelqe', '2023-10-11 07:41:40', '2023-10-11 10:07:32', 83970),
(5, 'Aicha', 'Zindamoyen', 'zindamoyen2@gmail.com', 'beginner', 'Back end', '$2y$10$qKDEuYkVZAEFEeaeLzDI.eO8ip/jiHYFXHRK5lNg6kLg6XdiEByPa', '2023-10-12 12:12:07', '2023-10-12 14:12:18', 94707),
(6, 'Kamondia', 'Walter', 'kamondia101@gmail.com', 'beginner', 'Artificial Intelligence', '$2y$10$Kn5Z6ArDtKIBUXBeyQDmmOBy6lFj9NxM/ZTQgxoaeYfD3XRB3NtUm', '2023-10-16 15:28:24', '2023-11-23 16:24:48', 47543),
(7, 'Moses', 'Mbugua', 'mbuguam323@gmail.com', 'mentor', 'Cyber Security', '$2y$10$nHGchvL215aBcRX5K/nnU.tjTSLQlQVCOvouoS1rWBqo7nbconVWK', '2023-10-17 11:22:03', '2023-11-30 11:10:40', 16764),
(11, 'Aicha', 'Zindamoyen', 'zindamuoyen2@gmail.com', 'beginner', 'Back end', '$2y$10$qKDEuYkVZAEFEeaeLzDI.eO8ip/jiHYFXHRK5lNg6kLg6XdiEByPa', '2023-10-12 12:12:07', '2023-10-12 14:12:18', 94707),
(12, 'zion', 'babylon', 'zion@g.com', 'beginner', 'Front end', '$2y$10$V9m3vTVGu5RA9iiRwnhTmewQ59X4iTKHpAB4Ozt58QG6QncwE/g36', '2023-11-19 16:00:45', '2023-11-30 09:47:18', 83154),
(13, 'Terrie', 'Joan', 'terrieteejay@gmail.com', 'mentor', 'Artificial Intelligence', '$2y$10$RROFyRPpiBZ35KE5EkshLOqZbVvfHwACHEakV9nWz2tVS./CN7Gyi', '2023-11-30 09:50:15', '2023-11-30 10:50:23', 14386);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `age` int(3) NOT NULL,
  `location` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bio` text NOT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `age`, `location`, `gender`, `bio`, `profile_photo`, `linkedin_link`, `github_link`) VALUES
(5, 7, 50, 'Nairobi', 'male', 'trial 3', '../images/profile_photos/me.jpeg', 'linkedin.com', 'github.com'),
(6, 12, 19, 'Thika', 'male', 'hivyo tu', '', 'youtune.com', 'google.com'),
(7, 6, 28, 'nairobi', 'male', 'i am just there', '', 'linkedin.com', 'github.com'),
(8, 13, 26, 'Canada', 'female', 'Very Rich and unapologetic ', '../images/profile_photos/d28fae66aa7684395cb8dd7760b90891.jpg', 'linkedin.com', 'github.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_projects`
--
ALTER TABLE `accepted_projects`
  ADD PRIMARY KEY (`acceptance_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `mentor_id` (`mentor_id`),
  ADD KEY `mentee_id` (`mentee_id`);

--
-- Indexes for table `mentorship_requests`
--
ALTER TABLE `mentorship_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `mentor_id` (`mentor_id`),
  ADD KEY `mentee_id` (`mentee_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_is_deleted` (`is_deleted`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_fk` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted_projects`
--
ALTER TABLE `accepted_projects`
  MODIFY `acceptance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mentorship_requests`
--
ALTER TABLE `mentorship_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `fk_chat_messages_mentee` FOREIGN KEY (`mentee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_chat_messages_mentor` FOREIGN KEY (`mentor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `mentorship_requests`
--
ALTER TABLE `mentorship_requests`
  ADD CONSTRAINT `fk_mentorship_requests_mentee` FOREIGN KEY (`mentee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_mentorship_requests_mentor` FOREIGN KEY (`mentor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

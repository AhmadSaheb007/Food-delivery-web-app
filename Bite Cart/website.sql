-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 02:42 AM
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
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`email`, `password`) VALUES
('13mmmahin@gmail.com', 'abc1234'),
('demo2@email.com', '678'),
('demo@email.com', '123'),
('email10@example.com', 'password10'),
('email1@example.com', 'password1'),
('email2@example.com', 'password2'),
('email3@example.com', 'password3'),
('email4@example.com', 'password4'),
('email5@example.com', 'password5'),
('email6@example.com', 'password6'),
('email7@example.com', 'password7'),
('email8@example.com', 'password8'),
('email9@example.com', 'password9'),
('emu@customer.com', 'abc123'),
('mahin@admin.com', 'mahin123'),
('some@email.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `NID` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `fname`, `lname`, `email`, `NID`, `phone`) VALUES
(1, 'Mohammed', 'Rahman', 'email1@example.com', '199451293847125', '1234567890'),
(2, 'Farhana', 'Ahmed', 'email2@example.com', '198672581934745', '1234567890'),
(3, 'Ahmed', 'Khan', 'email3@example.com', '197868536128947', '1234567890'),
(4, 'Fatima', 'Begum', 'email4@example.com', '199478256972345', '1234567890'),
(5, 'Abul', 'Hasan', 'email5@example.com', '198768564793421', '1234567890'),
(6, 'Ayesha', 'Siddiqua', 'email6@example.com', '199572893456217', '1234567890'),
(7, 'Nasir', 'Uddin', 'email7@example.com', '198462734593286', '1234567890'),
(8, 'Nusrat', 'Jahan', 'email8@example.com', '199378456192837', '1234567890'),
(9, 'Kamrul', 'Islam', 'email9@example.com', '198451672938475', '1234567890'),
(10, 'Roksana', 'Begum', 'email10@example.com', '199763482175936', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `item_name`, `price`, `r_id`, `f_id`, `c_id`) VALUES
(8, 'Chicken Swarma', 210, 2, 8, 12),
(9, 'Beef Swarma', 240, 2, 9, 12),
(10, 'Chicken Nugget Meatbox', 220, 2, 10, 12),
(15, 'Spicy Beef', 1340, 4, 16, 11),
(17, 'Coleslaw', 60, 1, 6, 11),
(18, 'Sausage, Egg & Swiss Croissant', 380, 24, 143, 11),
(19, 'Honey Butter Biscuit', 200, 24, 147, 11);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `type`, `r_id`) VALUES
(1, 'Fried Chicken', 1),
(2, 'Pizza', 2),
(3, 'Burger', 3),
(4, 'Swarma', 2),
(5, 'Ramen', 5),
(6, 'Peri Peri Chicken', 6),
(7, 'Meatbox', 7),
(8, 'Intercontinental', 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `NID` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `fname`, `lname`, `email`, `NID`, `phone`, `address`) VALUES
(1, 'Mohammed', 'Rahman', 'email1@example.com', '199451293847125', '1234567890', '123 Street, City'),
(2, 'Farhana', 'Ahmed', 'email2@example.com', '198672581934745', '1234567890', '456 Street, City'),
(3, 'Ahmed', 'Khan', 'email3@example.com', '197868536128947', '1234567890', '789 Street, City'),
(4, 'Fatima', 'Begum', 'email4@example.com', '199478256972345', '1234567890', '321 Street, City'),
(5, 'Abul', 'Hasan', 'email5@example.com', '198768564793421', '1234567890', '654 Street, City'),
(6, 'Ayesha', 'Siddiqua', 'email6@example.com', '199572893456217', '1234567890', '987 Street, City'),
(7, 'Nasir', 'Uddin', 'email7@example.com', '198462734593286', '1234567890', '159 Street, City'),
(8, 'Nusrat', 'Jahan', 'email8@example.com', '199378456192837', '1234567890', '753 Street, City'),
(9, 'Kamrul', 'Islam', 'email9@example.com', '198451672938475', '1234567890', '246 Street, City'),
(10, 'Roksana', 'Begum', 'email10@example.com', '199763482175936', '1234567890', '531 Street, City'),
(11, 'Muhaiminu', 'Mahin', 'mahin@admin.com', '2111714642', '01694206969', 'Dhanmondi'),
(12, 'Sanzidil', 'Mohsina', 'emu@customer.com', '2111714666', 'abc123', 'Dhanmondi, 1st Lane'),
(13, 'Random', 'Guy', 'some@email.com', '123', '456', '789'),
(14, 'Demo', 'Data', 'demo@email.com', '123', '890', 'Secret'),
(15, 'demo ', '2', 'demo2@email.com', '567', '0112233', 'Secret 2');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `f_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`f_id`, `name`, `description`, `price`, `r_id`) VALUES
(1, 'Fried Chicken', 'Delicious Biryani with tender meat.', 120, 1),
(2, 'Best Burger', 'Hilsa fish cooked with mustard sauce.', 220, 1),
(3, 'Coke', 'Rice and lentils cooked together with spices.', 45, 1),
(4, 'Sprite', 'Traditional sweet made from deep-fried batter.', 45, 1),
(5, 'Mirinda', 'Roasted chicken with a blend of spices.', 45, 1),
(6, 'Coleslaw', 'Slow-cooked mutton in rich gravy.', 60, 1),
(7, 'French Fries', 'Grilled cottage cheese cubes marinated with spices.', 200, 1),
(8, 'Chicken Swarma', 'Crispy fried fish with a tangy taste.', 210, 2),
(9, 'Beef Swarma', 'Flavorful rice dish with mixed vegetables.', 240, 2),
(10, 'Chicken Nugget Meatbox', 'Spongy and syrupy sweet made from chhena.', 220, 2),
(11, 'Fried Chicken', 'Delicious Fried Chicken', 140, 3),
(12, 'Rice Bowl', 'Delicious Rice bowl', 250, 3),
(13, 'Zinger Burger', 'Delicious Fried Chicken with buns', 340, 3),
(14, 'Crushers', 'Refreshing drink', 250, 3),
(15, 'BBQ Pizza', 'Delicious bbq pizza', 1240, 4),
(16, 'Spicy Beef', 'Delicious beef pizza', 1340, 4),
(17, 'Pepperoni Pizza', 'Delicious pepperoni pizza', 1090, 4),
(18, 'Spicy Chicken Pizza', 'Crazy good chicken pizza', 1299, 5),
(19, 'Spicy Chicken Wings', 'Fantistic hot wings', 510, 5),
(20, 'Dominos Special', 'Chef special pizza', 620, 5),
(21, 'Garlic Bread', 'Bad food dont try', 120, 5),
(22, 'Fried rice', 'Delicious egg fried rice with tender meat.', 250, 2),
(23, 'Chicken Parmesan', 'Breaded chicken cutlets topped with marinara and cheese.', 320, 2),
(24, 'Beef Burger', 'Juicy beef patty with lettuce, tomato, and cheese.', 250, 7),
(25, 'Caesar Salad', 'Crisp romaine lettuce with garlic croutons and Caesar dressing.', 180, 7),
(26, 'Mushroom Pizza', 'Thin crust pizza topped with mushrooms and mozzarella.', 280, 4),
(27, 'Grilled Salmon', 'Grilled salmon fillet seasoned with herbs and lemon.', 380, 6),
(28, 'Spaghetti Bolognese', 'Classic Italian pasta dish with meat sauce.', 260, 6),
(29, 'Chicken Noodle Soup', 'Hearty soup with chicken, noodles, and vegetables.', 200, 6),
(30, 'Vegetable Curry', 'Flavorful curry made with a variety of vegetables.', 240, 8),
(31, 'Cheese Quesadilla', 'Grilled tortilla filled with melted cheese.', 160, 6),
(32, 'Steak and Mashed Potatoes', 'Tender steak served with creamy mashed potatoes.', 420, 6),
(33, 'Chicken Caesar Wrap', 'Grilled chicken wrapped in a tortilla with Caesar salad.', 280, 11),
(34, 'Eggplant Parmesan', 'Breaded eggplant slices topped with marinara and cheese.', 300, 8),
(35, 'Teriyaki Chicken', 'Grilled chicken glazed with teriyaki sauce and served with rice.', 320, 8),
(36, 'Caprese Salad', 'Fresh mozzarella, tomatoes, and basil drizzled with balsamic glaze.', 200, 8),
(37, 'Margherita Pizza', 'Classic pizza with tomato sauce, mozzarella, and basil.', 250, 4),
(38, 'Grilled Shrimp Skewers', 'Juicy grilled shrimp skewers with a zesty marinade.', 360, 4),
(39, 'Beef Stir-Fry', 'Tender beef strips stir-fried with vegetables in a savory sauce.', 300, 8),
(40, 'Tomato Soup', 'Smooth and comforting tomato soup served with a side of bread.', 180, 7),
(41, 'Vegetable Biryani', 'Fragrant rice dish cooked with assorted vegetables and spices.', 280, 12),
(42, 'Spinach and Feta Stuffed Chicken', 'Chicken breast filled with spinach and feta cheese.', 340, 7),
(43, 'Taco Salad', 'Crispy tortilla bowl filled with seasoned ground beef, lettuce, and toppings.', 240, 7),
(44, 'Cheese Ravioli', 'Pasta pockets filled with cheese and served with marinara sauce.', 260, 15),
(45, 'Minestrone Soup', 'Hearty vegetable soup with beans and pasta.', 220, 9),
(46, 'Honey Glazed Ham', 'Roasted ham coated in a sweet and sticky honey glaze.', 380, 17),
(47, 'Shrimp Scampi Pasta', 'Garlic butter shrimp served over linguine pasta.', 320, 9),
(48, 'Vegetable Spring Rolls', 'Crispy spring rolls filled with assorted vegetables.', 200, 11),
(49, 'Chicken Fajitas', 'Grilled chicken strips with sautÃ©ed peppers and onions.', 300, 3),
(50, 'Greek Salad', 'Refreshing salad with cucumbers, tomatoes, olives, and feta cheese.', 220, 3),
(51, 'Pepperoni Pizza', 'Classic pizza topped with spicy pepperoni slices.', 280, 5),
(52, 'Grilled Steak', 'Juicy grilled steak seasoned with a blend of herbs and spices.', 380, 9),
(53, 'Penne Alfredo', 'Pasta tossed in creamy Alfredo sauce with parmesan cheese.', 260, 9),
(54, 'Tom Yum Soup', 'Spicy and sour soup with shrimp, mushrooms, and lemongrass.', 240, 8),
(55, 'Vegetable Pad Thai', 'Stir-fried rice noodles with vegetables and tangy Pad Thai sauce.', 280, 9),
(56, 'Chicken Tikka Masala', 'Tender chicken in a creamy and aromatic tomato-based sauce.', 320, 11),
(57, 'Beef Tacos', 'Flavorful beef filling wrapped in soft tortillas with toppings.', 300, 19),
(58, 'Miso Soup', 'Traditional Japanese soup made with soybean paste and tofu.', 180, 21),
(59, 'Vegetable Pizza', 'Assorted vegetables and cheese on a thin crust pizza.', 250, 19),
(60, 'Lemon Herb Roasted Chicken', 'Roasted chicken infused with lemon and aromatic herbs.', 360, 19),
(61, 'Beef and Broccoli', 'Stir-fried beef and broccoli in a savory sauce served with rice.', 320, 19),
(62, 'Greek Gyro', 'Warm pita filled with seasoned meat, tzatziki sauce, and vegetables.', 280, 11),
(63, 'Fish and Chips', 'Crispy battered fish served with french fries and tartar sauce.', 340, 14),
(64, 'Shrimp Fried Rice', 'Fried rice with shrimp, vegetables, and soy sauce.', 280, 16),
(65, 'Chicken Enchiladas', 'Tortillas filled with shredded chicken and smothered in enchilada sauce.', 320, 14),
(66, 'Vegetable Lasagna', 'Layers of pasta, vegetables, and cheese baked to perfection.', 280, 17),
(67, 'Clam Chowder', 'Creamy soup with clams, potatoes, and vegetables.', 240, 17),
(68, 'Cheeseburger', 'Classic burger with a juicy beef patty, cheese, and toppings.', 250, 18),
(69, 'Butter Chicken', 'Tender chicken in a rich and creamy tomato-based sauce.', 340, 18),
(70, 'Veggie Wrap', 'Assorted vegetables wrapped in a tortilla with dressing.', 220, 18),
(71, 'Hawaiian Pizza', 'Pizza topped with ham, pineapple, and mozzarella cheese.', 270, 21),
(72, 'Chicken Teriyaki Bowl', 'Grilled chicken served over rice and drizzled with teriyaki sauce.', 320, 16),
(73, 'Egg Fried Noodles', 'Stir-fried noodles with vegetables and scrambled eggs.', 240, 16),
(74, 'Vegetable Curry', 'Spicy and aromatic curry made with a variety of vegetables.', 280, 14),
(75, 'Shorshe Ilish', 'Hilsa fish cooked in a mustard sauce, a delicacy of Bengali cuisine.', 350, 12),
(76, 'Chingri Malai Curry', 'Creamy prawn curry made with coconut milk and aromatic spices.', 320, 12),
(77, 'Bhapa Pitha', 'Steamed rice cakes filled with sweet coconut or jaggery filling.', 200, 12),
(78, 'Kosha Mangsho', 'Slow-cooked mutton curry with a rich and flavorful gravy.', 380, 12),
(79, 'Mishti Doi', 'Sweetened yogurt made by fermenting milk and sugar.', 180, 12),
(80, 'Shorshe Bata Maach', 'Fish marinated in a mustard paste and steamed or grilled.', 300, 13),
(81, 'Shorshe Chingri Bhape', 'Steamed prawns cooked in a mustard sauce with coconut.', 340, 13),
(82, 'Bengali Vegetable Pulao', 'Fragrant rice dish cooked with vegetables, spices, and ghee.', 260, 13),
(83, 'Begun Bhaja', 'Crispy fried eggplant slices seasoned with spices.', 180, 13),
(84, 'Mutton Biryani', 'Flavorful rice dish layered with spiced mutton and aromatic spices.', 400, 13),
(85, 'Aloo Posto', 'Potatoes cooked in a poppy seed paste, a classic Bengali dish.', 220, 13),
(86, 'Big Mac', 'Two beef patties, special sauce, lettuce, cheese, pickles, onions on a sesame seed bun.', 500, 14),
(87, 'Chicken McNuggets', 'Breaded and seasoned chicken nuggets served with your choice of dipping sauce.', 350, 14),
(88, 'Quarter Pounder with Cheese', 'A quarter pound of 100% beef, cheese, onions, pickles, mustard, and ketchup on a sesame seed bun.', 600, 14),
(89, 'McChicken', 'A crispy chicken patty, lettuce, and mayo on a sesame seed bun.', 400, 14),
(90, 'Filet-O-Fish', 'A fish filet topped with tartar sauce and cheese on a steamed bun.', 500, 14),
(91, 'French Fries', 'Golden and crispy fries made from quality potatoes.', 200, 14),
(92, 'Whopper', 'A flame-grilled beef patty, tomatoes, lettuce, mayo, ketchup, pickles, and onions on a sesame seed bun.', 450, 10),
(93, 'Chicken Sandwich', 'A crispy chicken patty, lettuce, and mayo on a sesame seed bun.', 350, 10),
(94, 'Bacon King', 'Two flame-grilled beef patties, bacon, cheese, tomatoes, lettuce, mayo, ketchup, pickles, and onions on a sesame seed bun.', 450, 10),
(95, 'Whopper Jr.', 'A flame-grilled beef patty, tomatoes, lettuce, mayo, ketchup, pickles, and onions on a sesame seed bun.', 350, 10),
(96, 'Crispy Chicken Tenders', 'Breaded and seasoned chicken tenders served with your choice of dipping sauce.', 300, 10),
(97, 'French Fries', 'Golden and crispy fries made from quality potatoes.', 200, 10),
(98, 'Onion Rings', 'Battered and deep-fried onion rings with a crispy texture.', 250, 10),
(99, 'Hamburger', 'A flame-grilled beef patty, pickles, onions, ketchup, and mustard on a sesame seed bun.', 450, 15),
(100, 'Chicken Burrito', 'Grilled chicken, rice, black beans, salsa, cheese, and sour cream wrapped in a flour tortilla.', 350, 15),
(101, 'Barbacoa Bowl', 'Tender barbacoa beef, cilantro-lime rice, pinto beans, salsa, cheese, and guacamole in a bowl.', 450, 15),
(102, 'Veggie Burrito Bowl', 'Fajita veggies, brown rice, black beans, salsa, cheese, guacamole, and lettuce in a bowl.', 400, 15),
(103, 'Steak Quesadilla', 'Grilled steak, melted cheese, and salsa folded in a grilled flour tortilla.', 450, 16),
(104, 'Carnitas Tacos', 'Slow-cooked carnitas, salsa, cilantro, and onions wrapped in soft corn tortillas.', 650, 18),
(105, 'Sofritas Salad', 'Spicy tofu sofritas, romaine lettuce, brown rice, black beans, salsa, and vinaigrette dressing in a salad bowl.', 400, 16),
(106, 'Chocolate Chip Cookie', 'Classic chocolate chip cookie made with premium chocolate chips.', 250, 17),
(107, 'Snickerdoodle Cookie', 'Soft and chewy cinnamon sugar cookie with a hint of vanilla.', 200, 17),
(108, 'Peanut Butter Cookie', 'Rich and buttery peanut butter cookie with a slightly crispy texture.', 220, 17),
(109, 'Sugar Cookie', 'Buttery and sweet sugar cookie with a soft and delicate texture.', 180, 17),
(110, 'Oatmeal Raisin Cookie', 'Hearty oatmeal cookie packed with plump raisins and warm spices.', 150, 17),
(111, 'M&M Cookie', 'Colorful M&M candies embedded in a chewy and delicious cookie.', 210, 17),
(112, 'White Chocolate Macadamia Nut Cookie', 'Buttery cookie loaded with creamy white chocolate chunks and crunchy macadamia nuts.', 150, 18),
(113, 'Double Chocolate Brownie', 'Decadent double chocolate brownie with a rich and fudgy center.', 200, 18),
(114, 'Classic Milkshake', 'Creamy and indulgent milkshake made with your choice of flavors.', 300, 18),
(115, 'Strawberry Cheesecake Shake', 'Rich and velvety strawberry cheesecake flavored milkshake with a luscious texture.', 350, 18),
(116, 'Cookies and Cream Shake', 'Delicious blend of vanilla ice cream and crushed chocolate cookies, topped with whipped cream.', 320, 18),
(117, 'Chocolate Brownie Shake', 'Decadent chocolate shake infused with chunks of fudgy brownies for an extra chocolatey treat.', 250, 22),
(118, 'Salted Caramel Shake', 'Creamy caramel flavored milkshake with a hint of salt for a perfect balance of sweetness.', 800, 22),
(119, 'Peanut Butter Banana Shake', 'Smooth and nutty peanut butter blended with ripe bananas for a creamy and flavorful shake.', 600, 22),
(120, 'Mint Chocolate Chip Shake', 'Refreshing mint flavored shake loaded with chocolate chips for a cool and delightful treat.', 500, 22),
(121, 'Chicken Nugget', 'Made with chicken thai and drumsticks to be more juicy', 350, 16),
(122, 'Fish Nugget', 'Made with salmon  to be more juicy', 450, 16),
(123, 'Chickenjoy', 'Jollibees famous crispy fried chicken served with rice and gravy.', 600, 21),
(124, 'Yumburger', 'Classic Jollibee burger with a juicy beef patty, special sauce, lettuce, and cheese.', 350, 21),
(125, 'Jolly Spaghetti', 'Filipino-style spaghetti with a sweet and savory sauce, ground meat, and hotdog slices.', 500, 21),
(126, 'Peach Mango Pie', 'Flaky pastry filled with sweet and tangy peach and mango filling, served warm.', 300, 21),
(127, 'Crunchy Taco', 'Seasoned beef, lettuce, and cheese in a crunchy corn shell.', 130, 23),
(128, 'Bean Burrito', 'Refried beans, red sauce, and cheese wrapped in a flour tortilla.', 200, 23),
(129, 'Cheesy Gordita Crunch', 'A warm flatbread layered with a crunchy taco shell, seasoned beef, lettuce, cheese, and spicy ranch sauce.', 350, 23),
(130, 'Quesarito', 'A burrito wrapped in a quesadilla, filled with seasoned beef, rice, nacho cheese, and sour cream.', 300, 23),
(131, 'Nachos Supreme', 'Tortilla chips topped with seasoned beef, refried beans, nacho cheese sauce, diced tomatoes, and sour cream.', 350, 23),
(132, 'Chickenjoy', 'Jollibees famous crispy fried chicken served with rice and gravy.', 600, 21),
(133, 'Yumburger', 'Classic Jollibee burger with a juicy beef patty, special sauce, lettuce, and cheese.', 350, 21),
(134, 'Jolly Spaghetti', 'Filipino-style spaghetti with a sweet and savory sauce, ground meat, and hotdog slices.', 500, 21),
(135, 'Peach Mango Pie', 'Flaky pastry filled with sweet and tangy peach and mango filling, served warm.', 300, 21),
(136, 'Crunchy Taco', 'Seasoned beef, lettuce, and cheese in a crunchy corn shell.', 130, 23),
(137, 'Bean Burrito', 'Refried beans, red sauce, and cheese wrapped in a flour tortilla.', 200, 23),
(138, 'Cheesy Gordita Crunch', 'A warm flatbread layered with a crunchy taco shell, seasoned beef, lettuce, cheese, and spicy ranch sauce.', 350, 23),
(139, 'Quesarito', 'A burrito wrapped in a quesadilla, filled with seasoned beef, rice, nacho cheese, and sour cream.', 300, 23),
(140, 'Nachos Supreme', 'Tortilla chips topped with seasoned beef, refried beans, nacho cheese sauce, diced tomatoes, and sour cream.', 350, 23),
(141, 'Honey Butter Chicken Biscuit', 'A flaky buttermilk biscuit topped with a crispy chicken fillet drizzled with honey butter.', 350, 24),
(142, 'Classic Bacon, Egg & Cheese', 'A freshly-cracked egg, crispy Applewood smoked bacon, and American cheese served on a toasted bun.', 330, 24),
(143, 'Sausage, Egg & Swiss Croissant', 'A savory sausage patty, a freshly-cracked egg, and creamy Swiss cheese sandwiched between a flaky croissant.', 380, 24),
(144, 'Maple Bacon Chicken Croissant', 'A crispy chicken fillet topped with Applewood smoked bacon and maple butter sauce, served on a flaky croissant.', 450, 24),
(145, 'Frosty-ccino', 'Creamy, smooth cold brew coffee mixed with your choice of Vanilla or Chocolate Frosty.', 240, 24),
(146, 'Sausage Gravy & Biscuit', 'A warm, flaky buttermilk biscuit topped with creamy sausage gravy.', 300, 24),
(147, 'Honey Butter Biscuit', 'A warm, flaky buttermilk biscuit drizzled with sweet honey butter.', 200, 24),
(148, 'Maple Walnut Pie', 'A rich and nutty pie filled with a maple-flavored walnut filling, baked to perfection and garnished with a drizzle of maple syrup.', 430, 25),
(149, 'Maple Chess Pie', 'A Southern favorite, this sweet and gooey pie features a rich maple filling with a hint of vanilla, baked until golden brown.', 350, 25),
(150, 'Maple Sweet Potato Pie', 'A comforting combination of creamy sweet potato filling infused with maple syrup, baked in a buttery crust and finished with a dollop of whipped cream.', 500, 25),
(151, 'Maple Blueberry Pie', 'A delightful marriage of juicy blueberries and maple syrup baked in a flaky crust, served with a scoop of vanilla ice cream.', 245, 25),
(152, 'Maple Pumpkin Pie', 'A seasonal favorite, this maple-spiced pumpkin pie features a velvety smooth filling baked in a flaky crust, topped with a dollop of whipped cream.', 400, 25),
(153, 'Maple Cherry Pie', 'A sweet and tangy cherry pie infused with maple syrup, baked until bubbly and golden, served warm with a scoop of vanilla ice cream.', 450, 25),
(154, 'Maple Pecan Chess Pie', 'A decadent twist on a classic chess pie, this version features a maple-infused filling with a generous amount of pecans, baked to perfection.', 430, 25);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `name`, `description`, `category_id`) VALUES
(1, 'BFC', 'Serves Friend Chicken', 1),
(2, 'Aloush', 'Serves Swarma and Meatbox', 4),
(3, 'KFC', 'Serves Friend Chicken', 3),
(4, 'Pizzahut', 'Serves Pizza', 2),
(5, 'Dominos', 'Serves Pizza', 2),
(6, 'Nandos', 'Serves Peri Peri Chicken', 6),
(7, 'Jay\'s Craft', 'Serves Burger and Friend Chicken', 3),
(8, 'Yamcha', 'Serves Intercontinental dishes', 8),
(9, 'Tokyo Kitchen', 'Serves Ramen', 5),
(10, 'Burger King', 'Serves Burger', 3),
(11, 'Khadem', 'Bhaat er hotel', 8),
(12, 'CFC', 'Serves Bakery goods', 8),
(13, 'Maa er doa', 'Hotel that serves shutki', 8),
(14, 'McDonalds', 'Serves Pizza', 8),
(15, 'Chipotle', 'Serves wraps', 8),
(16, 'MrNuggets', 'Serves nuggests', 8),
(17, 'Crumbl', 'Serves cookies', 8),
(18, 'Shake Snack', 'Serves Burger', 8),
(19, 'Popeyes', 'Serves Chicken fries', 8),
(20, 'Cinnamon', 'Serves deserts', 8),
(21, 'Jollibee', 'Serves Spagetti', 8),
(22, 'Tacobell', 'Serves tacos', 8),
(23, 'Starbucks', 'Serves coffee', 8),
(24, 'Wendys Breakfast', 'Serves breakfast sandwitch', 8),
(25, 'Maple Pies', 'Serves Pies', 8),
(26, 'Meat theory', 'Serves Steak', 8),
(27, 'Manhattan Fish Market', 'Serves fish fillet', 8),
(28, 'Fry Bucket', 'Serves Chiken fries', 8),
(29, 'Star Hotel', 'Serves everything', 8),
(30, 'Sultans Dine', 'Serves dog meat', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `relation_link` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `relation_link100` (`r_id`),
  ADD KEY `relation_link200` (`f_id`),
  ADD KEY `relation_link300` (`c_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `relation_link2` (`r_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `relation_link7` (`email`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `relation_link8` (`r_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `relation1` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `relation_link` FOREIGN KEY (`email`) REFERENCES `accounts` (`email`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `relation_link100` FOREIGN KEY (`r_id`) REFERENCES `restaurants` (`r_id`),
  ADD CONSTRAINT `relation_link200` FOREIGN KEY (`f_id`) REFERENCES `food` (`f_id`),
  ADD CONSTRAINT `relation_link300` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `relation_link2` FOREIGN KEY (`r_id`) REFERENCES `restaurants` (`r_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `relation_link7` FOREIGN KEY (`email`) REFERENCES `accounts` (`email`);

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `relation_link8` FOREIGN KEY (`r_id`) REFERENCES `restaurants` (`r_id`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `relation` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `relation1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

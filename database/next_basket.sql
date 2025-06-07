-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2024 at 09:55 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `next_basket`
--

-- --------------------------------------------------------

--
-- Table structure for table `nb_admin`
--

CREATE TABLE `nb_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_admin`
--

INSERT INTO `nb_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nb_cart`
--

CREATE TABLE `nb_cart` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `check_st` int(11) NOT NULL,
  `av_product` int(11) NOT NULL,
  `seller` varchar(20) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_cart`
--

INSERT INTO `nb_cart` (`id`, `uname`, `pid`, `status`, `rdate`, `price`, `category`, `quantity`, `amount`, `bill_id`, `check_st`, `av_product`, `seller`, `month`, `year`, `session_id`) VALUES
(2, 'dinesh', 3, 1, '05-03-2024', 5000, 'Phones', 1, 5000, 8, 0, 0, 'amazon', 3, 2024, 8),
(3, 'dinesh', 1, 1, '11-03-2024', 5000, 'Chairs', 1, 5000, 9, 0, 0, 'bigsale', 3, 2024, 0),
(4, 'dinesh', 19, 1, '13-03-2024', 48, 'Binders', 1, 48, 10, 0, 0, 'amazon', 3, 2024, 0),
(5, 'dinesh', 1, 1, '15-03-2024', 5000, 'Chairs', 1, 5000, 11, 0, 0, 'bigsale', 3, 2024, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nb_category`
--

CREATE TABLE `nb_category` (
  `id` int(11) NOT NULL,
  `seller` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `category1` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_category`
--

INSERT INTO `nb_category` (`id`, `seller`, `category`, `category1`) VALUES
(1, 'bigsale', 'Chairs', 'Furniture'),
(2, 'bigsale', 'Bookcases', 'Furniture'),
(3, 'bigsale', 'Phones', 'Technology'),
(4, 'amazon', 'Binders', 'Office Supplies'),
(5, 'amazon', 'Fasteners', 'Office Supplies'),
(6, 'amazon', 'Appliances', 'Office Supplies'),
(8, 'amazon', 'Accessories', 'Technology'),
(9, 'amazon', 'Tables', 'Furniture'),
(10, 'amazon', 'Machines', 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `nb_customer`
--

CREATE TABLE `nb_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `otp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_customer`
--

INSERT INTO `nb_customer` (`id`, `name`, `address`, `city`, `mobile`, `email`, `uname`, `pass`, `create_date`, `otp`) VALUES
(1, 'Dinesh', '88, MK Street', 'Karur', 9894442716, 'dinesh@gmail.com', 'dinesh', '123456', '06-02-2024', '6222'),
(2, '', '', '', 0, '', '', '', '15-03-2024', '');

-- --------------------------------------------------------

--
-- Table structure for table `nb_forecast`
--

CREATE TABLE `nb_forecast` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subproduct` varchar(100) NOT NULL,
  `product` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_forecast`
--

INSERT INTO `nb_forecast` (`id`, `category`, `subproduct`, `product`) VALUES
(1, 'Technology', 'Phones', 'Phones'),
(2, 'Technology', 'Phones', 'Phones'),
(3, 'Furniture', 'Chair', 'Chair'),
(4, 'Furniture', 'Chairs', 'Global Leather & Oak Executive Chair, Burgundy'),
(5, 'Technology', 'Accessories', 'Kensington SlimBlade Notebook Wireless Mouse with Nano Receiver'),
(6, 'Furniture', 'Chairs', 'Global Deluxe High-Back Manager''s Chair'),
(7, 'Furniture', 'Bookcases', 'Atlantic Metals Mobile 5-Shelf Bookcases, Custom Colors'),
(8, 'Office Supplies', 'Paper', 'Ampad Gold Fibre Wirebound Steno Books, 6" x 9", Gregg Ruled'),
(9, 'Technology', 'Phones', 'Panasonic KX - TS880B Telephone'),
(10, 'Furniture', 'Tables', 'BPI Conference Tables'),
(11, 'Office Supplies', 'Storage', 'Carina Mini System Audio Rack, Model AR050B'),
(12, 'Office Supplies', 'Binders', 'GBC Instant Index System for Binding Systems'),
(13, 'Office Supplies', 'Labels', 'Avery 05222 Permanent Self-Adhesive File Folder Labels for Typewriters, on Rolls, White, 250/Roll'),
(14, 'Technology', 'Accessories', 'Logitech G602 Wireless Gaming Mouse'),
(15, 'Office Supplies', 'Appliances', 'Bionaire Personal Warm Mist Humidifier/Vaporizer'),
(16, 'Office Supplies', 'Binders', 'Pressboard Hanging Data Binders for Unburst Sheets'),
(17, 'Office Supplies', 'Binders', 'XtraLife ClearVue Slant-D Ring Binder, White, 3"'),
(18, 'Office Supplies', 'Storage', 'Dual Level, Single-Width Filing Carts'),
(19, 'Furniture', 'Furnishings', 'DAX Charcoal/Nickel-Tone Document Frame, 5 x 7'),
(20, 'Office Supplies', 'Labels', 'Smead Alpha-Z Color-Coded Name Labels First Letter Starter Set'),
(21, 'Furniture', 'Chairs', 'Global Leather and Oak Executive Chair, Black'),
(22, 'Furniture', 'Chairs', 'Office Star - Task Chair with Contemporary Loop Arms'),
(23, 'Office Supplies', 'Storage', 'Contico 72"H Heavy-Duty Storage System'),
(24, 'Office Supplies', 'Art', 'Newell Chalk Holder'),
(25, 'Office Supplies', 'Art', 'Binney & Smith inkTank Erasable Desk Highlighter, Chisel Tip, Yellow, 12/Box'),
(26, 'Office Supplies', 'Binders', 'Ibico Plastic and Wire Spiral Binding Combs'),
(27, 'Furniture', 'Chairs', 'Global Leather Highback Executive Chair with Pneumatic Height Adjustment, Black'),
(28, 'Office Supplies', 'Storage', 'Iris Project Case'),
(29, 'Office Supplies', 'Paper', 'Xerox 1887'),
(30, 'Technology', 'Phones', 'Jackery Bar Premium Fast-charging Portable Charger'),
(31, 'Office Supplies', 'Storage', 'Mini 13-1/2 Capacity Data Binder Rack, Pearl'),
(32, 'Office Supplies', 'Paper', 'Xerox 1963'),
(33, 'Technology', 'Machines', 'Hewlett-Packard Deskjet 6540 Color Inkjet Printer'),
(34, 'Technology', 'Phones', 'PowerGen Dual USB Car Charger'),
(35, 'Office Supplies', 'Storage', 'Fellowes Officeware Wire Shelving'),
(36, 'Furniture', 'Furnishings', 'Eldon Expressions Wood Desk Accessories, Oak'),
(37, 'Office Supplies', 'Fasteners', 'Super Bands, 12/Pack'),
(38, 'Office Supplies', 'Binders', 'C-Line Peel & Stick Add-On Filing Pockets, 8-3/4 x 5-1/8, 10/Pack'),
(39, 'Office Supplies', 'Binders', 'Cardinal EasyOpen D-Ring Binders'),
(40, 'Office Supplies', 'Art', 'Newell 345'),
(41, 'Office Supplies', 'Labels', 'Avery 511'),
(42, 'Office Supplies', 'Art', 'BIC Brite Liner Grip Highlighters, Assorted, 5/Pack'),
(43, 'Technology', 'Accessories', 'Imation Swivel Flash Drive USB flash drive - 8 GB'),
(44, 'Office Supplies', 'Art', 'Eberhard Faber 3 1/2" Golf Pencils'),
(45, 'Office Supplies', 'Art', 'Newell 35');

-- --------------------------------------------------------

--
-- Table structure for table `nb_product`
--

CREATE TABLE `nb_product` (
  `id` int(11) NOT NULL,
  `seller` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `product` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `details` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `required_qty` int(11) NOT NULL,
  `scount` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_product`
--

INSERT INTO `nb_product` (`id`, `seller`, `category`, `product`, `price`, `quantity`, `photo`, `details`, `status`, `required_qty`, `scount`, `star`) VALUES
(1, 'bigsale', 'Chairs', 'Global Leather and Oak Executive Chair, Black', 5000, 39, 'P1chair1.jpg', 'wheel chair', 0, -4, 0, 0),
(2, 'bigsale', 'Phones', 'Nokia Lumia 521 (T-Mobile)', 4000, 44, 'P2nokia.jpg', 'Nokia Lumia', 0, 0, 0, 0),
(3, 'amazon', 'Phones', 'Nokia Lumia 521 (T-Mobile)', 5000, 97, 'P3P2nokia.jpg', 'Nokia Lumia', 0, -2, 0, 0),
(4, 'amazon', 'Chairs', 'Hon GuestStacker Chair', 3000, 50, 'P4pd.png', 'Hon GuestStacker Chair', 0, 0, 0, 0),
(5, 'amazon', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 3000, 100, 'P5pd.png', 'Harbour Creations 67200 Series Stacking Chairs', 0, 0, 0, 0),
(6, 'amazon', 'Binders', 'Avery Non-Stick Binders', 30, 150, 'P6pd.png', 'Avery Non-Stick Binders', 0, 0, 0, 0),
(7, 'amazon', 'Chairs', 'Global Stack Chair with Arms, Black', 4500, 30, 'P7pd.png', 'Global Stack Chair with Arms, Black', 0, 0, 0, 0),
(8, 'amazon', 'Fasteners', 'Staples', 30, 100, 'P8pd.png', 'Staples', 0, 0, 0, 0),
(9, 'amazon', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 60, 25, 'P9pd.png', 'Belkin 6 Outlet Metallic Surge Strip', 0, 0, 0, 0),
(10, 'amazon', 'Accessories', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 25/Pack', 40, 100, 'P10pd.png', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 25/Pack', 0, 0, 0, 0),
(11, 'amazon', 'Accessories', 'SanDisk Ultra 32 GB MicroSDHC Class 10 Memory Card', 250, 100, 'P11pd.png', 'SanDisk Ultra 32 GB MicroSDHC Class 10 Memory Card', 0, 0, 0, 0),
(12, 'amazon', 'Tables', 'Hon Racetrack Conference Tables', 787, 50, 'P12pd.png', 'Hon Racetrack Conference Tables', 0, 0, 0, 0),
(13, 'amazon', 'Tables', 'Bevis 36 x 72 Conference Tables', 622, 50, 'P13pd.png', 'Bevis 36 x 72 Conference Tables', 0, 0, 0, 0),
(14, 'amazon', 'Tables', 'Hon 5100 Series Wood Tables', 698, 50, 'P14pd.png', 'Hon 5100 Series Wood Tables', 0, 0, 0, 0),
(15, 'amazon', 'Phones', 'Mitel 5320 IP Phone VoIP phone', 907, 50, 'P15pd.png', 'Mitel 5320 IP Phone VoIP phone', 0, 0, 0, 0),
(16, 'amazon', 'Phones', 'Avaya 5420 Digital phone', 944, 50, 'P16pd.png', 'Avaya 5420 Digital phone', 0, 0, 0, 0),
(17, 'amazon', 'Accessories', 'Memorex Micro Travel Drive 8 GB', 20, 100, 'P17pd.png', 'Memorex Micro Travel Drive 8 GB', 0, 0, 0, 0),
(18, 'amazon', 'Accessories', 'Razer Kraken PRO Over Ear PC and Music Headset', 295, 100, 'P18pd.png', 'Razer Kraken PRO Over Ear PC and Music Headset', 0, 0, 0, 0),
(19, 'amazon', 'Binders', 'Plastic Binding Combs', 48, 50, 'P19pd.png', 'Plastic Binding Combs', 0, 1, 0, 0),
(20, 'amazon', 'Binders', 'Safco Industrial Wire Shelving System', 72, 50, 'P20pd.png', 'Safco Industrial Wire Shelving System', 0, 0, 0, 0),
(21, 'amazon', 'Fasteners', 'Bagged Rubber Bands', 7, 100, 'P21pd.png', 'Bagged Rubber Bands', 0, 0, 0, 0),
(22, 'amazon', 'Fasteners', 'OIC Bulk Pack Metal Binder Clips', 13, 50, 'P22pd.png', 'OIC Bulk Pack Metal Binder Clips', 0, 0, 0, 0),
(23, 'amazon', 'Machines', 'Lexmark MX611dhe Monochrome Laser Printer', 8159, 50, 'P23pd.png', 'Lexmark MX611dhe Monochrome Laser Printer', 0, 0, 0, 0),
(24, 'amazon', 'Machines', 'Lexmark MX611dhe Monochrome Laser Printer', 3059, 50, 'P24pd.png', 'Lexmark MX611dhe Monochrome Laser Printer', 0, 0, 0, 0),
(25, 'amazon', 'Machines', 'Cubify CubeX 3D Printer Triple Head Print', 7999, 30, 'P25pd.png', 'Cubify CubeX 3D Printer Triple Head Print', 0, 0, 0, 0),
(26, 'amazon', 'Bookcases', 'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors', 532, 100, 'P26pd.png', 'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors', 0, 0, 0, 0),
(27, 'amazon', 'Bookcases', 'Bestar Classic Bookcase', 254, 50, 'P27pd.png', 'Bestar Classic Bookcase', 0, 0, 0, 0),
(28, 'amazon', 'Bookcases', 'Sauder Barrister Bookcases', 220, 50, 'P28pd.png', 'Sauder Barrister Bookcases', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nb_purchase`
--

CREATE TABLE `nb_purchase` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `deliver_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_purchase`
--

INSERT INTO `nb_purchase` (`id`, `uname`, `amount`, `rdate`, `deliver_status`) VALUES
(1, 'dinesh', 5000, '08-02-2024', 0),
(2, 'dinesh', 4000, '04-03-2024', 0),
(3, 'dinesh', 9000, '04-03-2024', 0),
(4, 'dinesh', 9000, '04-03-2024', 0),
(5, 'dinesh', 9000, '04-03-2024', 0),
(6, 'dinesh', 9000, '04-03-2024', 0),
(7, 'dinesh', 4000, '04-03-2024', 0),
(8, 'dinesh', 5000, '05-03-2024', 0),
(9, 'dinesh', 5000, '11-03-2024', 0),
(10, 'dinesh', 48, '13-03-2024', 0),
(11, 'dinesh', 5000, '25-03-2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nb_recommend`
--

CREATE TABLE `nb_recommend` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `cartid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `recommend` varchar(200) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_recommend`
--

INSERT INTO `nb_recommend` (`id`, `uname`, `cartid`, `pid`, `product`, `category`, `recommend`, `price`) VALUES
(1, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back', 731.94),
(2, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Deluxe Stacking Chair, Gray', 71.372),
(3, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Fabric Manager''s Chair, Dark Gray', 212.058),
(4, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Leather Task Chair, Black', 89.99),
(5, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Novimex Turbo Task Chair', 319.41),
(6, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Value Mid-Back Manager''s Chair, Gray', 213.115),
(7, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'High-Back Leather Manager''s Chair', 831.936),
(8, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Novimex Swivel Fabric Task Chair', 301.96),
(9, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Deluxe High-Back Manager''s Chair', 600.558),
(10, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Task Chair, Black', 81.424),
(11, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back', 1951.84),
(12, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Deluxe High-Back Manager''s Chair', 457.568),
(13, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'SAFCO Arco Folding Chair', 1740.06),
(14, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Global Value Steno Chair, Gray', 340.144),
(15, 'dinesh', 5, 1, 'Global Leather and Oak Executive Chair, Black', 'Chairs', 'Padded Folding Chairs, Black, 4/Carton', 396.802);

-- --------------------------------------------------------

--
-- Table structure for table `nb_review`
--

CREATE TABLE `nb_review` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `review` varchar(100) NOT NULL,
  `star` int(11) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `review_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_review`
--

INSERT INTO `nb_review` (`id`, `pid`, `uname`, `review`, `star`, `rdate`, `status`, `review_code`) VALUES
(1, 1, 'dinesh', 'super', 5, '08-02-2024', 0, '41338'),
(2, 1, 'dinesh', 'super', 5, '08-02-2024', 0, '17046'),
(3, 1, 'dinesh', 'super', 5, '08-02-2024', 0, '86003');

-- --------------------------------------------------------

--
-- Table structure for table `nb_saleforecast`
--

CREATE TABLE `nb_saleforecast` (
  `id` int(11) NOT NULL,
  `seller` varchar(20) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `sdate` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `product` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `pcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_saleforecast`
--

INSERT INTO `nb_saleforecast` (`id`, `seller`, `month`, `year`, `sdate`, `category`, `product`, `amount`, `pcount`) VALUES
(1, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1967', 15.552, 0),
(2, 'amazon', 4, 2021, '', 'Binders', 'C-Line Peel & Stick Add-On Filing Pockets, 8-3/4 x 5-1/8, 10/Pack', 38.22, 0),
(3, 'amazon', 4, 2021, '', 'Labels', 'Avery 485', 75.18, 0),
(4, 'amazon', 4, 2021, '', 'Furnishings', 'Longer-Life Soft White Bulbs', 6.16, 0),
(5, 'amazon', 4, 2021, '', 'Chairs', 'Global Leather Task Chair, Black', 89.99, 0),
(6, 'amazon', 4, 2021, '', 'Chairs', 'Global Value Mid-Back Manager''s Chair, Gray', 213.115, 0),
(7, 'amazon', 4, 2021, '', 'Chairs', 'High-Back Leather Manager''s Chair', 831.936, 0),
(8, 'amazon', 4, 2021, '', 'Furnishings', 'Tenex Traditional Chairmats for Medium Pile Carpet, Standard Lip, 36" x 48"', 97.04, 0),
(9, 'amazon', 4, 2021, '', 'Storage', 'Safco Industrial Wire Shelving System', 72.784, 0),
(10, 'amazon', 4, 2022, '', 'Storage', 'Eldon Portable Mobile Manager', 158.368, 0),
(11, 'amazon', 4, 2021, '', 'Binders', 'GBC DocuBind 300 Electric Binding Machine', 157.794, 0),
(12, 'amazon', 4, 2023, '', 'Appliances', 'Acco 7-Outlet Masterpiece Power Center, Wihtout Fax/Phone Line Protection', 97.264, 0),
(13, 'amazon', 4, 2023, '', 'Tables', 'Bush Advantage Collection Round Conference Table', 233.86, 0),
(14, 'amazon', 4, 2023, '', 'Tables', 'Bretford Rectangular Conference Table Tops', 620.6145, 0),
(15, 'amazon', 4, 2023, '', 'Binders', 'GBC Instant Index System for Binding Systems', 5.328, 0),
(16, 'amazon', 4, 2023, '', 'Furnishings', 'Tenex Contemporary Contur Chairmats for Low and Medium Pile Carpet, Computer, 39" x 49"', 258.072, 0),
(17, 'amazon', 4, 2023, '', 'Accessories', 'Logitech P710e Mobile Speakerphone', 617.976, 0),
(18, 'amazon', 4, 2023, '', 'Art', 'Faber Castell Col-Erase Pencils', 4.89, 0),
(19, 'amazon', 4, 2022, '', 'Binders', 'Ibico Laser Imprintable Binding System Covers', 251.52, 0),
(20, 'amazon', 4, 2022, '', 'Accessories', 'Logitech Wireless Headset h800', 99.99, 0),
(21, 'amazon', 4, 2022, '', 'Phones', 'AT&T 841000 Phone', 82.8, 0),
(22, 'amazon', 4, 2022, '', 'Binders', 'Ibico Recycled Grain-Textured Covers', 20.724, 0),
(23, 'amazon', 4, 2022, '', 'Binders', 'Wilson Jones Custom Binder Spines & Labels', 4.896, 0),
(24, 'amazon', 4, 2020, '', 'Art', 'Newell 314', 17.856, 0),
(25, 'amazon', 4, 2020, '', 'Binders', 'Fellowes PB200 Plastic Comb Binding Machine', 509.97, 0),
(26, 'amazon', 4, 2020, '', 'Fasteners', 'Staples', 30.992, 0),
(27, 'amazon', 4, 2020, '', 'Phones', 'Square Credit Card Reader, 4 1/2" x 4 1/2" x 1", White', 71.928, 0),
(28, 'amazon', 4, 2022, '', 'Bookcases', 'Sauder Barrister Bookcases', 388.704, 0),
(29, 'amazon', 4, 2022, '', 'Envelopes', '#10 Gummed Flap White Envelopes, 100/Box', 8.26, 0),
(30, 'amazon', 4, 2022, '', 'Art', 'Dixon Prang Watercolor Pencils, 10-Color Set with Brush', 17.04, 0),
(31, 'amazon', 4, 2022, '', 'Paper', 'Adams Phone Message Book, 200 Message Capacity, 8 1/16” x 11”', 34.4, 0),
(32, 'amazon', 4, 2022, '', 'Paper', 'Southworth 25% Cotton Linen-Finish Paper & Envelopes', 36.24, 0),
(33, 'amazon', 4, 2021, '', 'Appliances', 'Holmes Odor Grabber', 8.652, 0),
(34, 'amazon', 4, 2021, '', 'Storage', 'Akro-Mils 12-Gallon Tote', 23.832, 0),
(35, 'amazon', 4, 2021, '', 'Binders', 'GBC Twin Loop Wire Binding Elements, 9/16" Spine, Black', 12.176, 0),
(36, 'amazon', 4, 2020, '', 'Art', 'Avery Hi-Liter EverBold Pen Style Fluorescent Highlighters, 4/Pack', 39.072, 0),
(37, 'amazon', 4, 2022, '', 'Chairs', 'Bevis Steel Folding Chairs', 383.8, 0),
(38, 'amazon', 4, 2022, '', 'Binders', 'GBC ProClick 150 Presentation Binding System', 189.588, 0),
(39, 'amazon', 4, 2022, '', 'Accessories', 'Imation Secure+ Hardware Encrypted USB 2.0 Flash Drive; 16GB', 408.744, 0),
(40, 'amazon', 4, 2022, '', 'Accessories', 'Imation Secure+ Hardware Encrypted USB 2.0 Flash Drive; 16GB', 291.96, 0),
(41, 'amazon', 4, 2022, '', 'Storage', 'Woodgrain Magazine Files by Perma', 4.768, 0),
(42, 'amazon', 4, 2022, '', 'Art', 'Newell 345', 59.52, 0),
(43, 'amazon', 4, 2022, '', 'Storage', 'Fellowes Bankers Box Recycled Super Stor/Drawer', 161.94, 0),
(44, 'amazon', 4, 2022, '', 'Art', 'Boston 1645 Deluxe Heavier-Duty Electric Pencil Sharpener', 263.88, 0),
(45, 'amazon', 4, 2022, '', 'Art', '50 Colored Long Pencils', 30.48, 0),
(46, 'amazon', 4, 2022, '', 'Art', 'Newell 342', 9.84, 0),
(47, 'amazon', 4, 2022, '', 'Phones', 'Mitel 5320 IP Phone VoIP phone', 907.152, 0),
(48, 'amazon', 4, 2022, '', 'Furnishings', 'Eldon Wave Desk Accessories', 23.56, 0),
(49, 'amazon', 4, 2022, '', 'Tables', 'Bush Advantage Collection Racetrack Conference Table', 1272.63, 0),
(50, 'amazon', 4, 2022, '', 'Binders', 'Poly Designer Cover & Back', 28.485, 0),
(51, 'amazon', 4, 2022, '', 'Supplies', 'Premier Electric Letter Opener', 185.376, 0),
(52, 'amazon', 4, 2022, '', 'Appliances', 'Fellowes Premier Superior Surge Suppressor, 10-Outlet, With Phone and Remote', 78.272, 0),
(53, 'amazon', 4, 2021, '', 'Chairs', 'Safco Contoured Stacking Chairs', 190.72, 0),
(54, 'amazon', 4, 2022, '', 'Chairs', 'HON 5400 Series Task Chairs for Big and Tall', 1121.568, 0),
(55, 'amazon', 4, 2022, '', 'Phones', 'Nortel Meridian M3904 Professional Digital phone', 369.576, 0),
(56, 'amazon', 4, 2022, '', 'Labels', 'Avery 493', 15.712, 0),
(57, 'amazon', 4, 2022, '', 'Fasteners', 'Staples', 31.56, 0),
(58, 'amazon', 4, 2022, '', 'Appliances', 'Belkin F9H710-06 7 Outlet SurgeMaster Surge Protector', 30.144, 0),
(59, 'amazon', 4, 2021, '', 'Tables', 'Laminate Occasional Tables', 369.912, 0),
(60, 'amazon', 4, 2020, '', 'Paper', 'Eaton Premium Continuous-Feed Paper, 25% Cotton, Letter Size, White, 1000 Shts/Box', 55.48, 0),
(61, 'amazon', 4, 2022, '', 'Copiers', 'Hewlett Packard 610 Color Digital Copier / Printer', 1199.976, 0),
(62, 'amazon', 4, 2022, '', 'Chairs', 'Hon 4070 Series Pagoda Round Back Stacking Chairs', 641.96, 0),
(63, 'amazon', 4, 2021, '', 'Chairs', 'Hon GuestStacker Chair', 544.008, 0),
(64, 'amazon', 4, 2023, '', 'Furnishings', 'Eldon Stackable Tray, Side-Load, Legal, Smoke', 18.28, 0),
(65, 'amazon', 4, 2023, '', 'Paper', 'Wirebound Message Books, Two 4 1/4" x 5" Forms per Page', 7.61, 0),
(66, 'amazon', 4, 2023, '', 'Fasteners', 'OIC Binder Clips', 7.16, 0),
(67, 'amazon', 4, 2020, '', 'Binders', 'Large Capacity Hanging Post Binders', 44.91, 0),
(68, 'amazon', 4, 2020, '', 'Furnishings', 'Dax Clear Box Frame', 17.46, 0),
(69, 'amazon', 4, 2021, '', 'Binders', 'Fellowes Black Plastic Comb Bindings', 13.944, 0),
(70, 'amazon', 4, 2022, '', 'Binders', 'Wilson Jones Hanging Recycled Pressboard Data Binders', 8.904, 0),
(71, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1923', 20.04, 0),
(72, 'amazon', 4, 2022, '', 'Storage', 'Fellowes Neat Ideas Storage Cubes', 64.96, 0),
(73, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1931', 12.96, 0),
(74, 'amazon', 4, 2021, '', 'Accessories', 'Maxell 4.7GB DVD-R', 85.14, 0),
(75, 'amazon', 4, 2021, '', 'Phones', 'OtterBox Commuter Series Case - iPhone 5 & 5s', 21.99, 0),
(76, 'amazon', 4, 2021, '', 'Appliances', 'Kensington 4 Outlet MasterPiece Compact Power Control Center', 406.6, 0),
(77, 'amazon', 4, 2023, '', 'Art', 'Zebra Zazzle Fluorescent Highlighters', 14.592, 0),
(78, 'amazon', 4, 2023, '', 'Art', 'Sanford Prismacolor Professional Thick Lead Art Pencils, 36-Color Set', 89.856, 0),
(79, 'amazon', 4, 2023, '', 'Paper', 'Xerox 196', 13.872, 0),
(80, 'amazon', 4, 2023, '', 'Furnishings', 'Staple-based wall hangings', 25.472, 0),
(81, 'amazon', 4, 2023, '', 'Labels', 'Color-Coded Legal Exhibit Labels', 9.82, 0),
(82, 'amazon', 4, 2023, '', 'Art', 'Bulldog Vacuum Base Pencil Sharpener', 35.97, 0),
(83, 'amazon', 4, 2023, '', 'Paper', 'Xerox 212', 12.96, 0),
(84, 'amazon', 4, 2023, '', 'Paper', 'Computer Printout Paper with Letter-Trim Fine Perforations', 191.6, 0),
(85, 'amazon', 4, 2023, '', 'Labels', 'Avery File Folder Labels', 8.64, 0),
(86, 'amazon', 4, 2023, '', 'Storage', 'Office Impressions Heavy Duty Welded Shelving & Multimedia Storage Drawers', 501.81, 0),
(87, 'amazon', 4, 2021, '', 'Art', 'Staples in misc. colors', 22.74, 0),
(88, 'amazon', 4, 2021, '', 'Chairs', 'Global Comet Stacking Arm Chair', 1267.53, 0),
(89, 'amazon', 4, 2021, '', 'Machines', 'Cisco SPA525G2 5-Line IP Phone', 1379.92, 0),
(90, 'amazon', 4, 2022, '', 'Furnishings', 'Eldon Advantage Chair Mats for Low to Medium Pile Carpets', 86.62, 0),
(91, 'amazon', 4, 2021, '', 'Art', 'DIXON Ticonderoga Erasable Checking Pencils', 11.16, 0),
(92, 'amazon', 4, 2021, '', 'Furnishings', 'Eldon Advantage Foldable Chair Mats for Low Pile Carpets', 108.4, 0),
(93, 'amazon', 4, 2021, '', 'Binders', 'GBC Prestige Therm-A-Bind Covers', 82.344, 0),
(94, 'amazon', 4, 2021, '', 'Binders', 'Avery Round Ring Poly Binders', 9.088, 0),
(95, 'amazon', 4, 2021, '', 'Appliances', 'Belkin F9H710-06 7 Outlet SurgeMaster Surge Protector', 45.216, 0),
(96, 'amazon', 4, 2021, '', 'Fasteners', 'Super Bands, 12/Pack', 10.416, 0),
(97, 'amazon', 4, 2021, '', 'Art', 'Crayola Colored Pencils', 7.872, 0),
(98, 'amazon', 4, 2021, '', 'Phones', 'Plantronics 81402', 118.782, 0),
(99, 'amazon', 4, 2021, '', 'Fasteners', 'Assorted Color Push Pins', 1.448, 0),
(100, 'amazon', 4, 2021, '', 'Binders', 'GBC Velobind Prepunched Cover Sets, Regency Series', 55.47, 0),
(101, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1881', 29.472, 0),
(102, 'amazon', 4, 2023, '', 'Binders', 'Avery Non-Stick Binders', 2.694, 0),
(103, 'amazon', 4, 2023, '', 'Binders', 'UniKeep View Case Binders', 2.934, 0),
(104, 'amazon', 4, 2022, '', 'Tables', 'KI Adjustable-Height Table', 343.92, 0),
(105, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1945', 40.99, 0),
(106, 'amazon', 4, 2022, '', 'Envelopes', 'Globe Weis Peel & Seel First Class Envelopes', 63.9, 0),
(107, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(108, 'amazon', 4, 2021, '', 'Fasteners', 'Staples', 5.84, 0),
(109, 'amazon', 4, 2021, '', 'Binders', 'Acco Expandable Hanging Binders', 12.76, 0),
(110, 'amazon', 4, 2021, '', 'Phones', 'Shocksock Galaxy S4 Armband', 10.95, 0),
(111, 'amazon', 4, 2021, '', 'Copiers', 'Brother DCP1000 Digital 3 in 1 Multifunction Machine', 599.98, 0),
(112, 'amazon', 4, 2020, '', 'Binders', 'ACCOHIDE Binder by Acco', 16.52, 0),
(113, 'amazon', 4, 2022, '', 'Accessories', 'Plantronics S12 Corded Telephone Headset System', 258.696, 0),
(114, 'amazon', 4, 2022, '', 'Accessories', 'Kensington Orbit Wireless Mobile Trackball for PC and Mac', 431.928, 0),
(115, 'amazon', 4, 2022, '', 'Chairs', 'Global Chrome Stack Chair', 95.984, 0),
(116, 'amazon', 4, 2022, '', 'Binders', 'GBC DocuBind P400 Electric Binding System', 1088.792, 0),
(117, 'amazon', 4, 2022, '', 'Chairs', 'Hon GuestStacker Chair', 544.008, 0),
(118, 'amazon', 4, 2022, '', 'Storage', 'Fellowes Bankers Box Stor/Drawer Steel Plus', 102.336, 0),
(119, 'amazon', 4, 2022, '', 'Appliances', 'Kensington 4 Outlet MasterPiece Compact Power Control Center', 48.792, 0),
(120, 'amazon', 4, 2022, '', 'Binders', 'Performers Binder/Pad Holder, Black', 44.848, 0),
(121, 'amazon', 4, 2023, '', 'Labels', 'Avery 48', 15.12, 0),
(122, 'amazon', 4, 2023, '', 'Binders', 'Avery Arch Ring Binders', 17.43, 0),
(123, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1915', 251.64, 0),
(124, 'amazon', 4, 2022, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 21.78, 0),
(125, 'amazon', 4, 2023, '', 'Furnishings', 'Westinghouse Clip-On Gooseneck Lamps', 25.11, 0),
(126, 'amazon', 4, 2023, '', 'Furnishings', 'DAX Value U-Channel Document Frames, Easel Back', 1.988, 0),
(127, 'amazon', 4, 2020, '', 'Labels', 'Avery 490', 29.6, 0),
(128, 'amazon', 4, 2020, '', 'Binders', 'Pressboard Data Binder, Crimson, 12" X 8 1/2"', 17.088, 0),
(129, 'amazon', 4, 2022, '', 'Tables', 'Bush Andora Conference Table, Maple/Graphite Gray Finish', 205.176, 0),
(130, 'amazon', 4, 2022, '', 'Paper', 'Xerox 189', 419.4, 0),
(131, 'amazon', 4, 2020, '', 'Supplies', 'Martin-Yale Premier Letter Opener', 10.304, 0),
(132, 'amazon', 4, 2020, '', 'Tables', 'KI Adjustable-Height Table', 154.764, 0),
(133, 'amazon', 4, 2020, '', 'Accessories', 'Imation Secure+ Hardware Encrypted USB 2.0 Flash Drive; 16GB', 116.784, 0),
(134, 'amazon', 4, 2022, '', 'Chairs', 'Hon GuestStacker Chair', 408.006, 0),
(135, 'amazon', 4, 2023, '', 'Binders', 'Storex Dura Pro Binders', 29.7, 0),
(136, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1948', 39.96, 0),
(137, 'amazon', 4, 2020, '', 'Binders', 'Wilson Jones Suede Grain Vinyl Binders', 2.502, 0),
(138, 'amazon', 4, 2023, '', 'Envelopes', '#10-4 1/8" x 9 1/2" Premium Diagonal Seam Envelopes', 62.96, 0),
(139, 'amazon', 4, 2023, '', 'Art', 'Newell 325', 16.52, 0),
(140, 'amazon', 4, 2022, '', 'Binders', 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Light Blue', 35.352, 0),
(141, 'amazon', 4, 2020, '', 'Labels', 'Avery 518', 18.9, 0),
(142, 'amazon', 4, 2020, '', 'Chairs', 'Safco Contoured Stacking Chairs', 381.44, 0),
(143, 'amazon', 4, 2022, '', 'Storage', 'Pizazz Global Quick File', 23.952, 0),
(144, 'amazon', 4, 2022, '', 'Art', 'Dixon Ticonderoga Erasable Colored Pencil Set, 12-Color', 33.488, 0),
(145, 'amazon', 4, 2022, '', 'Fasteners', 'Ideal Clamps', 8.04, 0),
(146, 'amazon', 4, 2022, '', 'Phones', 'PowerGen Dual USB Car Charger', 39.96, 0),
(147, 'amazon', 4, 2022, '', 'Art', 'Newell 307', 5.46, 0),
(148, 'amazon', 4, 2022, '', 'Art', 'Panasonic KP-4ABK Battery-Operated Pencil Sharpener', 73.2, 0),
(149, 'amazon', 4, 2022, '', 'Binders', 'Angle-D Binders with Locking Rings, Label Holders', 5.84, 0),
(150, 'amazon', 4, 2022, '', 'Paper', 'Adams Telephone Message Book W/Dividers/Space For Phone Numbers, 5 1/4"X8 1/2", 200/Messages', 22.72, 0),
(151, 'amazon', 4, 2022, '', 'Binders', 'Avery Binder Labels', 9.336, 0),
(152, 'amazon', 4, 2023, '', 'Phones', 'Polycom SoundPoint IP 450 VoIP phone', 677.58, 0),
(153, 'amazon', 4, 2023, '', 'Binders', 'GBC VeloBind Cover Sets', 13.896, 0),
(154, 'amazon', 4, 2023, '', 'Appliances', 'Acco Smartsocket Table Surge Protector, 6 Color-Coded Adapter Outlets', 99.28, 0),
(155, 'amazon', 4, 2023, '', 'Binders', 'Avery Reinforcements for Hole-Punch Pages', 1.188, 0),
(156, 'amazon', 4, 2023, '', 'Binders', 'GBC ProClick Spines for 32-Hole Punch', 7.518, 0),
(157, 'amazon', 4, 2021, '', 'Chairs', 'Safco Contoured Stacking Chairs', 1931.04, 0),
(158, 'amazon', 4, 2022, '', 'Binders', 'Tuff Stuff Recycled Round Ring Binders', 7.712, 0),
(159, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(160, 'amazon', 4, 2023, '', 'Tables', 'SAFCO PlanMaster Heigh-Adjustable Drafting Table Base, 43w x 30d x 30-37h, Black', 1048.35, 0),
(161, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1985', 10.368, 0),
(162, 'amazon', 4, 2020, '', 'Art', '12 Colored Short Pencils', 6.24, 0),
(163, 'amazon', 4, 2020, '', 'Binders', 'Acco Data Flex Cable Posts For Top & Bottom Load Binders, 6" Capacity', 20.86, 0),
(164, 'amazon', 4, 2020, '', 'Storage', 'Recycled Steel Personal File for Standard File Folders', 497.61, 0),
(165, 'amazon', 4, 2020, '', 'Art', 'Blackstonian Pencils', 5.34, 0),
(166, 'amazon', 4, 2020, '', 'Labels', 'Avery 488', 3.15, 0),
(167, 'amazon', 4, 2022, '', 'Chairs', 'Global Stack Chair with Arms, Black', 62.958, 0),
(168, 'amazon', 4, 2023, '', 'Furnishings', 'Howard Miller 12" Round Wall Clock', 196.45, 0),
(169, 'amazon', 4, 2022, '', 'Furnishings', 'Ultra Door Pull Handle', 31.56, 0),
(170, 'amazon', 4, 2023, '', 'Labels', 'Avery 474', 4.608, 0),
(171, 'amazon', 4, 2023, '', 'Art', 'Staples in misc. colors', 15.528, 0),
(172, 'amazon', 4, 2023, '', 'Labels', 'Avery 499', 11.952, 0),
(173, 'amazon', 4, 2022, '', 'Chairs', 'Hon 4070 Series Pagoda Armless Upholstered Stacking Chairs', 933.536, 0),
(174, 'amazon', 4, 2022, '', 'Storage', 'Fellowes Personal Hanging Folder Files, Navy', 42.976, 0),
(175, 'amazon', 4, 2023, '', 'Accessories', 'SanDisk Ultra 64 GB MicroSDHC Class 10 Memory Card', 199.95, 0),
(176, 'amazon', 4, 2023, '', 'Art', 'Dixon Ticonderoga Erasable Colored Pencil Set, 12-Color', 41.86, 0),
(177, 'amazon', 4, 2023, '', 'Binders', 'Flexible Leather- Look Classic Collection Ring Binder', 11.364, 0),
(178, 'amazon', 4, 2023, '', 'Chairs', 'Hon GuestStacker Chair', 1586.69, 0),
(179, 'amazon', 4, 2021, '', 'Accessories', 'Plantronics Audio 478 Stereo USB Headset', 199.96, 0),
(180, 'amazon', 4, 2021, '', 'Tables', 'Hon 94000 Series Round Tables', 710.832, 0),
(181, 'amazon', 4, 2021, '', 'Supplies', 'Martin-Yale Premier Letter Opener', 12.88, 0),
(182, 'amazon', 4, 2023, '', 'Paper', 'Xerox 4200 Series MultiUse Premium Copy Paper (20Lb. and 84 Bright)', 5.28, 0),
(183, 'amazon', 4, 2023, '', 'Binders', 'GBC DocuBind TL200 Manual Binding Machine', 895.92, 0),
(184, 'amazon', 4, 2020, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(185, 'amazon', 4, 2022, '', 'Furnishings', 'Flat Face Poster Frame', 22.608, 0),
(186, 'amazon', 4, 2023, '', 'Furnishings', 'Eldon Cleatmat Chair Mats for Medium Pile Carpets', 44.4, 0),
(187, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1911', 143.7, 0),
(188, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(189, 'amazon', 4, 2021, '', 'Phones', 'Pyle PMP37LED', 287.97, 0),
(190, 'amazon', 4, 2021, '', 'Furnishings', 'GE 48" Fluorescent Tube, Cool White Energy Saver, 34 Watts, 30/Box', 595.38, 0),
(191, 'amazon', 4, 2021, '', 'Paper', 'Xerox 2', 12.96, 0),
(192, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(193, 'amazon', 4, 2023, '', 'Binders', 'SpineVue Locking Slant-D Ring Binders by Cardinal', 13.71, 0),
(194, 'amazon', 4, 2023, '', 'Storage', 'Hanging Personal Folder File', 94.2, 0),
(195, 'amazon', 4, 2023, '', 'Envelopes', 'Staple envelope', 28.4, 0),
(196, 'amazon', 4, 2022, '', 'Storage', 'Safco Industrial Wire Shelving', 230.376, 0),
(197, 'amazon', 4, 2022, '', 'Paper', 'Adams Telephone Message Books, 5 1/4” x 11”', 9.664, 0),
(198, 'amazon', 4, 2021, '', 'Accessories', 'Memorex Froggy Flash Drive 8 GB', 106.5, 0),
(199, 'amazon', 4, 2021, '', 'Art', 'Newell 312', 42.048, 0),
(200, 'amazon', 4, 2021, '', 'Accessories', 'Maxell 4.7GB DVD-RW 3/Pack', 25.488, 0),
(201, 'amazon', 4, 2021, '', 'Binders', 'Ibico Covers for Plastic or Wire Binding Elements', 6.9, 0),
(202, 'amazon', 4, 2021, '', 'Binders', 'Fellowes Twister Kit, Gray/Clear, 3/pkg', 9.648, 0),
(203, 'amazon', 4, 2021, '', 'Paper', 'Xerox 1949', 7.968, 0),
(204, 'amazon', 4, 2022, '', 'Furnishings', '12-1/2 Diameter Round Wall Clock', 111.888, 0),
(205, 'amazon', 4, 2023, '', 'Storage', 'Belkin 19" Vented Equipment Shelf, Black', 205.92, 0),
(206, 'amazon', 4, 2023, '', 'Bookcases', 'O''Sullivan Living Dimensions 2-Shelf Bookcases', 102.833, 0),
(207, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(208, 'amazon', 4, 2023, '', 'Appliances', 'Tripp Lite Isotel 6 Outlet Surge Protector with Fax/Modem Protection', 121.94, 0),
(209, 'amazon', 4, 2023, '', 'Supplies', 'Acme 10" Easy Grip Assistive Scissors', 122.71, 0),
(210, 'amazon', 4, 2022, '', 'Chairs', 'Global Stack Chair without Arms, Black', 41.568, 0),
(211, 'amazon', 4, 2020, '', 'Chairs', 'Bevis Steel Folding Chairs', 230.28, 0),
(212, 'amazon', 4, 2020, '', 'Binders', 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Executive Red', 18.288, 0),
(213, 'amazon', 4, 2023, '', 'Labels', 'Avery 498', 5.78, 0),
(214, 'amazon', 4, 2023, '', 'Binders', 'Fellowes Binding Cases', 121.68, 0),
(215, 'amazon', 4, 2023, '', 'Chairs', 'Safco Contoured Stacking Chairs', 858.24, 0),
(216, 'amazon', 4, 2022, '', 'Phones', 'Motorola L804', 36.792, 0),
(217, 'amazon', 4, 2022, '', 'Furnishings', 'GE General Purpose, Extra Long Life, Showcase & Floodlight Incandescent Bulbs', 18.624, 0),
(218, 'amazon', 4, 2023, '', 'Binders', 'Acco 3-Hole Punch', 8.76, 0),
(219, 'amazon', 4, 2020, '', 'Phones', 'AT&T CL2909', 302.376, 0),
(220, 'amazon', 4, 2022, '', 'Storage', 'Acco Perma 4000 Stacking Storage Drawers', 81.2, 0),
(221, 'amazon', 4, 2023, '', 'Supplies', 'Compact Automatic Electric Letter Opener', 477.24, 0),
(222, 'amazon', 4, 2023, '', 'Accessories', 'SanDisk Ultra 16 GB MicroSDHC Class 10 Memory Card', 25.98, 0),
(223, 'amazon', 4, 2021, '', 'Art', 'Prang Drawing Pencil Set', 5.56, 0),
(224, 'amazon', 4, 2021, '', 'Accessories', 'Plantronics S12 Corded Telephone Headset System', 323.37, 0),
(225, 'amazon', 4, 2021, '', 'Phones', 'Plantronics Calisto P620-M USB Wireless Speakerphone System', 783.96, 0),
(226, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Upright Vacuum With Dirt Cup', 1447.65, 0),
(227, 'amazon', 4, 2021, '', 'Paper', 'Xerox 1903', 11.96, 0),
(228, 'amazon', 4, 2021, '', 'Appliances', 'APC 7 Outlet Network SurgeArrest Surge Protector', 32.192, 0),
(229, 'amazon', 4, 2021, '', 'Accessories', 'Kingston Digital DataTraveler 16GB USB 2.0', 50.12, 0),
(230, 'amazon', 4, 2021, '', 'Accessories', 'Anker Ultra-Slim Mini Bluetooth 3.0 Wireless Keyboard', 47.976, 0),
(231, 'amazon', 4, 2021, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 60.984, 0),
(232, 'amazon', 4, 2023, '', 'Furnishings', '3M Hangers With Command Adhesive', 23.68, 0),
(233, 'amazon', 4, 2023, '', 'Accessories', 'Maxell 4.7GB DVD+R 5/Pack', 2.376, 0),
(234, 'amazon', 4, 2020, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(235, 'amazon', 4, 2020, '', 'Phones', 'Nokia Lumia 521 (T-Mobile)', 1000, 0),
(236, 'amazon', 4, 2020, '', 'Phones', 'AT&T 1080 Corded phone', 438.368, 0),
(237, 'amazon', 4, 2020, '', 'Binders', 'Recycled Pressboard Report Cover with Reinforced Top Hinge', 18.088, 0),
(238, 'amazon', 4, 2020, '', 'Bookcases', 'O''Sullivan Living Dimensions 2-Shelf Bookcases', 308.499, 0),
(239, 'amazon', 4, 2022, '', 'Paper', 'Embossed Ink Jet Note Cards', 108.336, 0),
(240, 'amazon', 4, 2022, '', 'Storage', 'Eldon Fold ''N Roll Cart System', 55.92, 0),
(241, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1942', 78.304, 0),
(242, 'amazon', 4, 2023, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 10.89, 0),
(243, 'amazon', 4, 2023, '', 'Furnishings', 'Eldon Expressions Punched Metal & Wood Desk Accessories, Black & Cherry', 56.28, 0),
(244, 'amazon', 4, 2023, '', 'Binders', 'GBC DocuBind TL300 Electric Binding System', 2690.97, 0),
(245, 'amazon', 4, 2020, '', 'Chairs', 'Global Stack Chair without Arms, Black', 51.96, 0),
(246, 'amazon', 4, 2020, '', 'Binders', 'Avery Non-Stick Heavy Duty View Round Locking Ring Binders', 17.94, 0),
(247, 'amazon', 4, 2021, '', 'Chairs', 'Hon 4070 Series Pagoda Armless Upholstered Stacking Chairs', 408.422, 0),
(248, 'amazon', 4, 2023, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 113.888, 0),
(249, 'amazon', 4, 2023, '', 'Paper', 'Strathmore Photo Mount Cards', 20.34, 0),
(250, 'amazon', 4, 2023, '', 'Labels', 'Avery 478', 39.28, 0),
(251, 'amazon', 4, 2022, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(252, 'amazon', 4, 2023, '', 'Binders', 'Insertable Tab Post Binder Dividers', 12.03, 0),
(253, 'amazon', 4, 2023, '', 'Machines', 'Lexmark MX611dhe Monochrome Laser Printer', 2549.985, 0),
(254, 'amazon', 4, 2023, '', 'Binders', 'GBC VeloBinder Manual Binding System', 21.594, 0),
(255, 'amazon', 4, 2023, '', 'Binders', 'Cardinal Holdit Business Card Pockets', 8.964, 0),
(256, 'amazon', 4, 2023, '', 'Paper', 'Xerox 225', 20.736, 0),
(257, 'amazon', 4, 2023, '', 'Furnishings', 'Tenex 46" x 60" Computer Anti-Static Chairmat, Rectangular Shaped', 254.352, 0),
(258, 'amazon', 4, 2021, '', 'Phones', 'Cisco Unified IP Phone 7945G VoIP phone', 1022.97, 0),
(259, 'amazon', 4, 2023, '', 'Tables', 'Bevis 44 x 96 Conference Tables', 411.8, 0),
(260, 'amazon', 4, 2023, '', 'Accessories', 'NETGEAR N750 Dual Band Wi-Fi Gigabit Router', 360, 0),
(261, 'amazon', 4, 2022, '', 'Phones', 'Nortel Meridian M5316 Digital phone', 517.9, 0),
(262, 'amazon', 4, 2022, '', 'Binders', 'Storex Flexible Poly Binders with Double Pockets', 5.28, 0),
(263, 'amazon', 4, 2023, '', 'Labels', 'Avery Address/Shipping Labels for Typewriters, 4" x 2"', 33.12, 0),
(264, 'amazon', 4, 2023, '', 'Bookcases', 'Sauder Barrister Bookcases', 220.2656, 0),
(265, 'amazon', 4, 2023, '', 'Binders', 'Avery Non-Stick Binders', 10.776, 0),
(266, 'amazon', 4, 2023, '', 'Bookcases', 'Bush Westfield Collection Bookcases, Fully Assembled', 242.352, 0),
(267, 'amazon', 4, 2021, '', 'Appliances', 'Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter', 206.43, 0),
(268, 'amazon', 4, 2022, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(269, 'amazon', 4, 2023, '', 'Binders', 'Satellite Sectional Post Binders', 26.046, 0),
(270, 'amazon', 4, 2023, '', 'Binders', 'GBC White Gloss Covers, Plain Front', 2.896, 0),
(271, 'amazon', 4, 2023, '', 'Storage', 'Tennsco Commercial Shelving', 32.544, 0),
(272, 'amazon', 4, 2022, '', 'Binders', 'Cardinal Holdit Business Card Pockets', 3.984, 0),
(273, 'amazon', 4, 2022, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 113.888, 0),
(274, 'amazon', 4, 2023, '', 'Furnishings', 'Eldon Executive Woodline II Desk Accessories, Mahogany', 60.312, 0),
(275, 'amazon', 4, 2020, '', 'Art', 'Crayola Colored Pencils', 22.96, 0),
(276, 'amazon', 4, 2020, '', 'Phones', 'AT&T CL82213', 28.99, 0),
(277, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1957', 12.96, 0),
(278, 'amazon', 4, 2020, '', 'Art', 'Newell 321', 22.96, 0),
(279, 'amazon', 4, 2020, '', 'Supplies', 'Martin Yale Chadless Opener Electric Letter Opener', 4164.05, 0),
(280, 'amazon', 4, 2023, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(281, 'amazon', 4, 2020, '', 'Chairs', 'Global Leather Highback Executive Chair with Pneumatic Height Adjustment, Black', 281.372, 0),
(282, 'amazon', 4, 2020, '', 'Chairs', 'Global Leather Highback Executive Chair with Pneumatic Height Adjustment, Black', 281.372, 0),
(283, 'amazon', 4, 2020, '', 'Binders', 'Zipper Ring Binder Pockets', 7.488, 0),
(284, 'amazon', 4, 2020, '', 'Furnishings', 'G.E. Halogen Desk Lamp Bulbs', 22.336, 0),
(285, 'amazon', 4, 2023, '', 'Paper', 'Xerox 222', 10.368, 0),
(286, 'amazon', 4, 2021, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 43.56, 0),
(287, 'amazon', 4, 2021, '', 'Supplies', 'Acme Value Line Scissors', 5.84, 0),
(288, 'amazon', 4, 2023, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 2504.74, 0),
(289, 'amazon', 4, 2021, '', 'Paper', 'Xerox 1884', 47.952, 0),
(290, 'amazon', 4, 2020, '', 'Furnishings', 'Stacking Tray, Side-Loading, Legal, Smoke', 8.96, 0),
(291, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1894', 10.368, 0),
(292, 'amazon', 4, 2023, '', 'Accessories', 'Logitech MX Performance Wireless Mouse', 95.736, 0),
(293, 'amazon', 4, 2021, '', 'Binders', 'Insertable Tab Post Binder Dividers', 12.832, 0),
(294, 'amazon', 4, 2020, '', 'Machines', 'Ativa MDM8000 8-Sheet Micro-Cut Shredder', 287.968, 0),
(295, 'amazon', 4, 2020, '', 'Art', 'Newell 351', 13.12, 0),
(296, 'amazon', 4, 2020, '', 'Art', 'Binney & Smith inkTank Desk Highlighter, Chisel Tip, Yellow, 12/Box', 10.75, 0),
(297, 'amazon', 4, 2020, '', 'Fasteners', 'Advantus Push Pins, Aluminum Head', 11.62, 0),
(298, 'amazon', 4, 2020, '', 'Labels', 'Avery File Folder Labels', 6.912, 0),
(299, 'amazon', 4, 2020, '', 'Storage', 'X-Rack File for Hanging Folders', 27.096, 0),
(300, 'amazon', 4, 2020, '', 'Storage', 'Carina Mini System Audio Rack, Model AR050B', 177.568, 0),
(301, 'amazon', 4, 2023, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(302, 'amazon', 4, 2023, '', 'Storage', 'Sensible Storage WireTech Storage Systems', 113.568, 0),
(303, 'amazon', 4, 2022, '', 'Envelopes', '#10 Self-Seal White Envelopes', 8.872, 0),
(304, 'amazon', 4, 2022, '', 'Binders', 'Catalog Binders with Expanding Posts', 121.104, 0),
(305, 'amazon', 4, 2023, '', 'Accessories', 'Verbatim Slim CD and DVD Storage Cases, 50/Pack', 11.54, 0),
(306, 'amazon', 4, 2023, '', 'Furnishings', 'Eldon Advantage Foldable Chair Mats for Low Pile Carpets', 162.6, 0),
(307, 'amazon', 4, 2023, '', 'Art', 'Prang Colored Pencils', 7.056, 0),
(308, 'amazon', 4, 2020, '', 'Fasteners', 'Acco Banker''s Clasps, 5 3/4"-Long', 6.912, 0),
(309, 'amazon', 4, 2020, '', 'Accessories', 'Logitech Wireless Gaming Headset G930', 383.976, 0),
(310, 'amazon', 4, 2020, '', 'Paper', 'Xerox 224', 10.368, 0),
(311, 'amazon', 4, 2020, '', 'Accessories', 'Logitech Wireless Anywhere Mouse MX for PC and Mac', 335.944, 0),
(312, 'amazon', 4, 2022, '', 'Fasteners', 'Advantus Push Pins, Aluminum Head', 29.05, 0),
(313, 'amazon', 4, 2023, '', 'Chairs', 'Safco Contoured Stacking Chairs', 476.8, 0),
(314, 'amazon', 4, 2020, '', 'Fasteners', 'Binder Clips by OIC', 2.368, 0),
(315, 'amazon', 4, 2020, '', 'Paper', 'Things To Do Today Spiral Book', 19.008, 0),
(316, 'amazon', 4, 2023, '', 'Accessories', 'TRENDnet 56K USB 2.0 Phone, Internet and Fax Modem', 155.34, 0),
(317, 'amazon', 4, 2020, '', 'Storage', 'Tenex File Box, Personal Filing Tote with Lid, Black', 49.632, 0),
(318, 'amazon', 4, 2020, '', 'Storage', 'Adjustable Personal File Tote', 52.096, 0),
(319, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(320, 'amazon', 4, 2021, '', 'Storage', 'Fellowes High-Stak Drawer Files', 563.808, 0),
(321, 'amazon', 4, 2021, '', 'Binders', 'Cardinal Slant-D Ring Binders', 10.428, 0),
(322, 'amazon', 4, 2021, '', 'Furnishings', 'Tenex Antistatic Computer Chair Mats', 547.136, 0),
(323, 'amazon', 4, 2021, '', 'Phones', 'Cush Cases Heavy Duty Rugged Cover Case for Samsung Galaxy S5 - Purple', 14.85, 0),
(324, 'amazon', 4, 2021, '', 'Phones', 'Speck Products Candyshell Flip Case', 41.988, 0),
(325, 'amazon', 4, 2021, '', 'Furnishings', 'DAX Charcoal/Nickel-Tone Document Frame, 5 x 7', 7.584, 0),
(326, 'amazon', 4, 2021, '', 'Bookcases', 'Bush Heritage Pine Collection 5-Shelf Bookcase, Albany Pine Finish, *Special Order', 352.45, 0),
(327, 'amazon', 4, 2020, '', 'Furnishings', 'Advantus Panel Wall Acrylic Frame', 5.47, 0),
(328, 'amazon', 4, 2020, '', 'Art', 'Newell 319', 79.36, 0),
(329, 'amazon', 4, 2022, '', 'Art', 'Boston 16801 Nautilus Battery Pencil Sharpener', 88.04, 0),
(330, 'amazon', 4, 2022, '', 'Bookcases', 'Bush Westfield Collection Bookcases, Fully Assembled', 257.499, 0),
(331, 'amazon', 4, 2023, '', 'Storage', 'Tennsco 16-Compartment Lockers with Coat Rack', 2591.56, 0),
(332, 'amazon', 4, 2023, '', 'Appliances', 'Black & Decker Filter for Double Action Dustbuster Cordless Vac BLDV7210', 41.95, 0),
(333, 'amazon', 4, 2022, '', 'Furnishings', 'Ultra Door Kickplate, 8"H x 34"W', 79.12, 0),
(334, 'amazon', 4, 2021, '', 'Binders', 'Aluminum Screw Posts', 9.156, 0),
(335, 'amazon', 4, 2021, '', 'Chairs', 'Safco Contoured Stacking Chairs', 572.16, 0),
(336, 'amazon', 4, 2022, '', 'Labels', 'Avery 473', 20.7, 0),
(337, 'amazon', 4, 2022, '', 'Supplies', 'Acme Value Line Scissors', 10.95, 0),
(338, 'amazon', 4, 2022, '', 'Binders', 'Avery Hanging File Binders', 14.352, 0),
(339, 'amazon', 4, 2022, '', 'Art', 'Newell 341', 12.84, 0),
(340, 'amazon', 4, 2021, '', 'Paper', 'Xerox 210', 31.104, 0),
(341, 'amazon', 4, 2021, '', 'Paper', 'Xerox 1973', 54.816, 0),
(342, 'amazon', 4, 2020, '', 'Phones', 'AT&T TR1909W', 629.95, 0),
(343, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1945', 122.97, 0),
(344, 'amazon', 4, 2022, '', 'Furnishings', 'C-Line Magnetic Cubicle Keepers, Clear Polypropylene', 24.7, 0),
(345, 'amazon', 4, 2021, '', 'Labels', 'Avery 486', 21.93, 0),
(346, 'amazon', 4, 2023, '', 'Bookcases', 'Safco Value Mate Steel Bookcase, Baked Enamel Finish on Steel, Black', 482.664, 0),
(347, 'amazon', 4, 2023, '', 'Machines', 'Cubify CubeX 3D Printer Double Head Print', 4799.984, 0),
(348, 'amazon', 4, 2022, '', 'Phones', 'Anker Astro 15000mAh USB Portable Charger', 149.97, 0),
(349, 'amazon', 4, 2022, '', 'Paper', 'Wirebound Message Books, Four 2 3/4" x 5" Forms per Page, 600 Sets per Book', 27.81, 0),
(350, 'amazon', 4, 2022, '', 'Machines', '3D Systems Cube Printer, 2nd Generation, Magenta', 9099.93, 0),
(351, 'amazon', 4, 2022, '', 'Furnishings', 'Stacking Trays by OIC', 9.96, 0),
(352, 'amazon', 4, 2022, '', 'Binders', 'Wilson Jones Standard D-Ring Binders', 25.3, 0),
(353, 'amazon', 4, 2023, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(354, 'amazon', 4, 2023, '', 'Paper', 'Wirebound Message Books, Four 2 3/4 x 5 Forms per Page, 200 Sets per Book', 42.93, 0),
(355, 'amazon', 4, 2023, '', 'Storage', 'Sterilite Officeware Hinged File Box', 16.768, 0),
(356, 'amazon', 4, 2023, '', 'Accessories', 'Kingston Digital DataTraveler 32GB USB 2.0', 27.12, 0),
(357, 'amazon', 4, 2020, '', 'Furnishings', 'Tenex Traditional Chairmats for Medium Pile Carpet, Standard Lip, 36" x 48"', 303.25, 0),
(358, 'amazon', 4, 2020, '', 'Appliances', 'Kensington 6 Outlet MasterPiece HOMEOFFICE Power Control Center', 270.72, 0),
(359, 'amazon', 4, 2020, '', 'Chairs', 'GuestStacker Chair with Chrome Finish Legs', 1487.04, 0),
(360, 'amazon', 4, 2023, '', 'Binders', 'GBC Recycled Regency Composition Covers', 478.24, 0),
(361, 'amazon', 4, 2022, '', 'Paper', 'Xerox 227', 12.96, 0),
(362, 'amazon', 4, 2022, '', 'Binders', 'Wilson Jones Clip & Carry Folder Binder Tool for Ring Binders, Clear', 23.2, 0),
(363, 'amazon', 4, 2022, '', 'Chairs', 'Hon GuestStacker Chair', 408.006, 0),
(364, 'amazon', 4, 2023, '', 'Labels', 'Avery 5', 5.76, 0),
(365, 'amazon', 4, 2020, '', 'Furnishings', 'Executive Impressions 13" Chairman Wall Clock', 76.14, 0),
(366, 'amazon', 4, 2020, '', 'Binders', 'GBC Personal VeloBind Strips', 9.584, 0),
(367, 'amazon', 4, 2023, '', 'Art', 'Boston School Pro Electric Pencil Sharpener, 1670', 123.92, 0),
(368, 'amazon', 4, 2023, '', 'Art', 'Newell Chalk Holder', 12.39, 0),
(369, 'amazon', 4, 2023, '', 'Art', 'Boston Home & Office Model 2000 Electric Pencil Sharpeners', 47.3, 0),
(370, 'amazon', 4, 2022, '', 'Chairs', 'Office Star - Mid Back Dual function Ergonomic High Back Chair with 2-Way Adjustable Arms', 434.646, 0),
(371, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1891', 244.55, 0),
(372, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1942', 195.76, 0),
(373, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(374, 'amazon', 4, 2021, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 142.36, 0),
(375, 'amazon', 4, 2021, '', 'Storage', 'Tennsco Stur-D-Stor Boltless Shelving, 5 Shelves, 24" Deep, Sand', 947.17, 0),
(376, 'amazon', 4, 2021, '', 'Paper', 'Xerox 19', 61.96, 0),
(377, 'amazon', 4, 2022, '', 'Chairs', 'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back', 658.746, 0),
(378, 'amazon', 4, 2023, '', 'Binders', 'GBC Linen Binding Covers', 43.372, 0),
(379, 'amazon', 4, 2021, '', 'Art', 'BOSTON Ranger #55 Pencil Sharpener, Black', 25.99, 0),
(380, 'amazon', 4, 2021, '', 'Appliances', 'Hoover Upright Vacuum With Dirt Cup', 463.248, 0),
(381, 'amazon', 4, 2021, '', 'Accessories', 'Razer Kraken PRO Over Ear PC and Music Headset', 383.952, 0),
(382, 'amazon', 4, 2020, '', 'Binders', 'Avery Non-Stick Binders', 7.184, 0),
(383, 'amazon', 4, 2020, '', 'Phones', 'Jawbone JAMBOX Wireless Bluetooth Speaker', 758.352, 0),
(384, 'amazon', 4, 2022, '', 'Paper', 'Xerox 226', 15.552, 0),
(385, 'amazon', 4, 2022, '', 'Chairs', 'SAFCO Arco Folding Chair', 1325.76, 0),
(386, 'amazon', 4, 2022, '', 'Binders', 'Wilson Jones Impact Binders', 3.108, 0),
(387, 'amazon', 4, 2020, '', 'Accessories', 'Maxell 4.7GB DVD-RW 3/Pack', 47.79, 0),
(388, 'amazon', 4, 2020, '', 'Tables', 'Chromcraft Bull-Nose Wood Round Conference Table Top, Wood Base', 653.55, 0),
(389, 'amazon', 4, 2020, '', 'Accessories', 'Kingston Digital DataTraveler 32GB USB 2.0', 33.9, 0),
(390, 'amazon', 4, 2022, '', 'Binders', 'GBC Velobind Prepunched Cover Sets, Regency Series', 99.846, 0),
(391, 'amazon', 4, 2023, '', 'Binders', 'Cardinal Slant-D Ring Binder, Heavy Gauge Vinyl', 13.904, 0),
(392, 'amazon', 4, 2020, '', 'Tables', 'Bush Advantage Collection Round Conference Table', 744.1, 0),
(393, 'amazon', 4, 2020, '', 'Storage', 'Personal Folder Holder, Ebony', 44.84, 0),
(394, 'amazon', 4, 2020, '', 'Tables', 'Riverside Furniture Stanwyck Manor Table Series', 401.59, 0),
(395, 'amazon', 4, 2023, '', 'Art', 'Newell 312', 42.048, 0),
(396, 'amazon', 4, 2023, '', 'Art', 'Stanley Bostitch Contemporary Electric Pencil Sharpeners', 67.92, 0),
(397, 'amazon', 4, 2020, '', 'Storage', 'Safco Commercial Shelving', 232.55, 0),
(398, 'amazon', 4, 2020, '', 'Accessories', 'Logitech Wireless Marathon Mouse M705', 99.98, 0),
(399, 'amazon', 4, 2020, '', 'Paper', 'Xerox 209', 19.44, 0),
(400, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1966', 12.96, 0),
(401, 'amazon', 4, 2020, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(402, 'amazon', 4, 2022, '', 'Chairs', 'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back', 1317.492, 0),
(403, 'amazon', 4, 2022, '', 'Supplies', 'Staple remover', 63.84, 0),
(404, 'amazon', 4, 2022, '', 'Binders', 'Avery Non-Stick Binders', 3.592, 0),
(405, 'amazon', 4, 2021, '', 'Furnishings', 'Flat Face Poster Frame', 37.68, 0),
(406, 'amazon', 4, 2021, '', 'Phones', 'Aastra 57i VoIP phone', 258.576, 0),
(407, 'amazon', 4, 2021, '', 'Appliances', '3M Replacement Filter for Office Air Cleaner for 20'' x 33'' Room', 75.84, 0),
(408, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1883', 79.14, 0),
(409, 'amazon', 4, 2023, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 498.26, 0),
(410, 'amazon', 4, 2021, '', 'Fasteners', 'Staples', 12.576, 0),
(411, 'amazon', 4, 2021, '', 'Chairs', 'Safco Contoured Stacking Chairs', 715.2, 0),
(412, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1919', 163.96, 0),
(413, 'amazon', 4, 2023, '', 'Furnishings', 'Seth Thomas 16" Steel Case Clock', 64.96, 0),
(414, 'amazon', 4, 2023, '', 'Envelopes', '#10- 4 1/8" x 9 1/2" Security-Tint Envelopes', 30.56, 0),
(415, 'amazon', 4, 2023, '', 'Bookcases', 'Sauder Cornerstone Collection Library', 198.272, 0),
(416, 'amazon', 4, 2023, '', 'Furnishings', '3M Polarizing Task Lamp with Clamp Arm, Light Gray', 273.96, 0),
(417, 'amazon', 4, 2023, '', 'Furnishings', 'Luxo Professional Combination Clamp-On Lamps', 306.9, 0),
(418, 'amazon', 4, 2022, '', 'Bookcases', 'Bush Somerset Collection Bookcase', 556.665, 0),
(419, 'amazon', 4, 2023, '', 'Art', 'Newell 318', 8.896, 0),
(420, 'amazon', 4, 2022, '', 'Binders', 'Ibico Ibimaster 300 Manual Binding System', 588.784, 0),
(421, 'amazon', 4, 2021, '', 'Accessories', 'Enermax Acrylux Wireless Keyboard', 99.6, 0),
(422, 'amazon', 4, 2021, '', 'Binders', 'DXL Angle-View Binders with Locking Rings, Black', 62.296, 0),
(423, 'amazon', 4, 2021, '', 'Art', 'Barrel Sharpener', 10.71, 0),
(424, 'amazon', 4, 2023, '', 'Storage', 'Sterilite Officeware Hinged File Box', 8.384, 0),
(425, 'amazon', 4, 2023, '', 'Art', 'Newell 341', 6.848, 0),
(426, 'amazon', 4, 2022, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(427, 'amazon', 4, 2023, '', 'Phones', 'Mediabridge Sport Armband iPhone 5s', 23.976, 0),
(428, 'amazon', 4, 2023, '', 'Labels', 'Avery 494', 6.264, 0),
(429, 'amazon', 4, 2023, '', 'Appliances', 'Staple holder', 20.808, 0),
(430, 'amazon', 4, 2023, '', 'Chairs', 'Global Wood Trimmed Manager''s Task Chair, Khaki', 218.352, 0),
(431, 'amazon', 4, 2022, '', 'Envelopes', 'Ampad #10 Peel & Seel Holiday Envelopes', 17.92, 0),
(432, 'amazon', 4, 2023, '', 'Art', 'Faber Castell Col-Erase Pencils', 9.78, 0),
(433, 'amazon', 4, 2023, '', 'Fasteners', 'Colored Push Pins', 1.81, 0),
(434, 'amazon', 4, 2021, '', 'Binders', 'Fellowes Black Plastic Comb Bindings', 17.43, 0),
(435, 'amazon', 4, 2020, '', 'Chairs', 'Safco Contoured Stacking Chairs', 572.16, 0),
(436, 'amazon', 4, 2023, '', 'Art', 'Newell 318', 11.12, 0),
(437, 'amazon', 4, 2022, '', 'Furnishings', 'Regeneration Desk Collection', 7.04, 0),
(438, 'amazon', 4, 2023, '', 'Furnishings', 'Tensor Computer Mounted Lamp', 74.45, 0),
(439, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1990', 15.84, 0),
(440, 'amazon', 4, 2020, '', 'Phones', 'Motorola Droid Maxx', 1049.93, 0),
(441, 'amazon', 4, 2020, '', 'Appliances', 'Euro-Pro Shark Turbo Vacuum', 154.9, 0),
(442, 'amazon', 4, 2021, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 29.403, 0),
(443, 'amazon', 4, 2022, '', 'Chairs', 'Hon Comfortask Task/Swivel Chairs', 638.288, 0),
(444, 'amazon', 4, 2022, '', 'Binders', 'JM Magazine Binder', 13.208, 0),
(445, 'amazon', 4, 2021, '', 'Machines', 'Vtech AT&T CL2940 Corded Speakerphone, Black', 71.976, 0),
(446, 'amazon', 4, 2023, '', 'Furnishings', 'Stackable Trays', 12.32, 0),
(447, 'amazon', 4, 2023, '', 'Binders', 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Light Blue', 4.419, 0),
(448, 'amazon', 4, 2020, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 26.136, 0),
(449, 'amazon', 4, 2022, '', 'Chairs', 'Global Stack Chair with Arms, Black', 29.98, 0),
(450, 'amazon', 4, 2021, '', 'Paper', 'Xerox 1949', 7.968, 0),
(451, 'amazon', 4, 2020, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 644.076, 0),
(452, 'amazon', 4, 2020, '', 'Chairs', 'Hon GuestStacker Chair', 1133.35, 0),
(453, 'amazon', 4, 2021, '', 'Art', 'Newell 331', 11.736, 0),
(454, 'amazon', 4, 2022, '', 'Binders', 'GBC ProClick Spines for 32-Hole Punch', 25.06, 0),
(455, 'amazon', 4, 2022, '', 'Furnishings', 'Seth Thomas 13 1/2" Wall Clock', 71.12, 0),
(456, 'amazon', 4, 2022, '', 'Phones', 'Plantronics Voyager Pro HD - Bluetooth Headset', 259.96, 0),
(457, 'amazon', 4, 2020, '', 'Tables', 'SAFCO PlanMaster Boards, 60w x 37-1/2d, White Melamine', 1215.92, 0),
(458, 'amazon', 4, 2023, '', 'Paper', 'Xerox 207', 20.736, 0),
(459, 'amazon', 4, 2022, '', 'Chairs', 'Hon 4070 Series Pagoda Round Back Stacking Chairs', 770.352, 0),
(460, 'amazon', 4, 2023, '', 'Phones', 'AT&T 841000 Phone', 552, 0),
(461, 'amazon', 4, 2023, '', 'Furnishings', 'Deflect-o DuraMat Lighweight, Studded, Beveled Mat for Low Pile Carpeting', 127.95, 0),
(462, 'amazon', 4, 2020, '', 'Furnishings', 'Tenex B1-RE Series Chair Mats for Low Pile Carpets', 91.96, 0),
(463, 'amazon', 4, 2020, '', 'Furnishings', 'C-Line Cubicle Keepers Polyproplyene Holder With Velcro Backings', 33.11, 0),
(464, 'amazon', 4, 2020, '', 'Paper', 'Xerox 211', 19.44, 0),
(465, 'amazon', 4, 2020, '', 'Paper', 'Xerox 194', 55.48, 0),
(466, 'amazon', 4, 2023, '', 'Accessories', 'V7 USB Numeric Keypad', 69.98, 0),
(467, 'amazon', 4, 2023, '', 'Supplies', 'Fiskars Softgrip Scissors', 54.9, 0),
(468, 'amazon', 4, 2021, '', 'Appliances', 'Fellowes Premier Superior Surge Suppressor, 10-Outlet, With Phone and Remote', 19.568, 0),
(469, 'amazon', 4, 2021, '', 'Binders', 'Fellowes PB300 Plastic Comb Binding Machine', 310.392, 0),
(470, 'amazon', 4, 2021, '', 'Art', 'Newell 324', 57.75, 0),
(471, 'amazon', 4, 2021, '', 'Appliances', 'Belkin 5 Outlet SurgeMaster Power Centers', 272.4, 0),
(472, 'amazon', 4, 2021, '', 'Storage', 'Steel Personal Filing/Posting Tote', 142.04, 0),
(473, 'amazon', 4, 2021, '', 'Art', 'Faber Castell Col-Erase Pencils', 14.67, 0),
(474, 'amazon', 4, 2021, '', 'Labels', 'Avery 499', 23.904, 0),
(475, 'amazon', 4, 2022, '', 'Chairs', 'Hon 4070 Series Pagoda Round Back Stacking Chairs', 449.372, 0),
(476, 'amazon', 4, 2021, '', 'Storage', 'Advantus Rolling Drawer Organizers', 115.44, 0),
(477, 'amazon', 4, 2022, '', 'Bookcases', 'Hon Metal Bookcases, Black', 354.9, 0),
(478, 'amazon', 4, 2023, '', 'Furnishings', 'Computer Room Manger, 14"', 51.968, 0),
(479, 'amazon', 4, 2023, '', 'Storage', 'Sortfiler Multipurpose Personal File Organizer, Black', 51.336, 0),
(480, 'amazon', 4, 2023, '', 'Storage', 'Deluxe Rollaway Locking File with Drawer', 332.704, 0),
(481, 'amazon', 4, 2023, '', 'Furnishings', 'Executive Impressions 12" Wall Clock', 42.408, 0),
(482, 'amazon', 4, 2021, '', 'Paper', 'Xerox 1916', 117.456, 0),
(483, 'amazon', 4, 2023, '', 'Phones', 'Cisco SPA 502G IP Phone', 383.84, 0),
(484, 'amazon', 4, 2021, '', 'Copiers', 'Canon PC940 Copier', 1439.968, 0),
(485, 'amazon', 4, 2021, '', 'Accessories', 'Logitech Keyboard K120', 43.56, 0),
(486, 'amazon', 4, 2020, '', 'Paper', 'Xerox 226', 58.32, 0),
(487, 'amazon', 4, 2020, '', 'Phones', 'Nokia Lumia 521 (T-Mobile)', 1000, 0),
(488, 'amazon', 4, 2021, '', 'Phones', 'Logitech B530 USB Headset - headset - Full size, Binaural', 88.776, 0),
(489, 'amazon', 4, 2021, '', 'Art', 'Boston 1730 StandUp Electric Pencil Sharpener', 64.14, 0),
(490, 'amazon', 4, 2023, '', 'Phones', 'Panasonic KX - TS880B Telephone', 41.22, 0),
(491, 'amazon', 4, 2023, '', 'Supplies', 'Premier Automatic Letter Opener', 240.37, 0),
(492, 'amazon', 4, 2023, '', 'Phones', 'LG Electronics Tone+ HBS-730 Bluetooth Headset', 119.02, 0),
(493, 'amazon', 4, 2020, '', 'Chairs', 'Global Leather Executive Chair', 561.584, 0),
(494, 'amazon', 4, 2020, '', 'Storage', '2300 Heavy-Duty Transfer File Systems by Perma', 99.92, 0),
(495, 'amazon', 4, 2023, '', 'Accessories', 'Logitech G700s Rechargeable Gaming Mouse', 99.99, 0),
(496, 'amazon', 4, 2023, '', 'Storage', 'Recycled Steel Personal File for Hanging File Folders', 286.15, 0),
(497, 'amazon', 4, 2020, '', 'Fasteners', 'Alliance Super-Size Bands, Assorted Sizes', 49.792, 0),
(498, 'amazon', 4, 2020, '', 'Art', 'Prang Dustless Chalk Sticks', 2.688, 0),
(499, 'amazon', 4, 2020, '', 'Chairs', 'DMI Arturo Collection Mission-style Design Wood Chair', 317.058, 0),
(500, 'amazon', 4, 2020, '', 'Envelopes', 'Cameo Buff Policy Envelopes', 149.352, 0),
(501, 'amazon', 4, 2020, '', 'Accessories', 'Kensington Expert Mouse Optical USB Trackball for PC or Mac', 227.976, 0),
(502, 'amazon', 4, 2021, '', 'Art', 'Newell 324', 34.65, 0),
(503, 'amazon', 4, 2021, '', 'Phones', 'Cush Cases Heavy Duty Rugged Cover Case for Samsung Galaxy S5 - Purple', 19.8, 0),
(504, 'amazon', 4, 2023, '', 'Binders', 'XtraLife ClearVue Slant-D Ring Binders by Cardinal', 11.76, 0),
(505, 'amazon', 4, 2023, '', 'Paper', 'Xerox 195', 5.344, 0),
(506, 'amazon', 4, 2020, '', 'Chairs', 'Global Stack Chair with Arms, Black', 239.84, 0),
(507, 'amazon', 4, 2021, '', 'Chairs', 'Global Deluxe Office Fabric Chairs', 191.96, 0),
(508, 'amazon', 4, 2021, '', 'Binders', 'Wilson Jones Hanging View Binder, White, 1"', 21.3, 0),
(509, 'amazon', 4, 2021, '', 'Phones', 'Jabra SPEAK 410', 469.95, 0),
(510, 'amazon', 4, 2021, '', 'Furnishings', 'Tenex "The Solids" Textured Chair Mats', 209.88, 0),
(511, 'amazon', 4, 2021, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 199.304, 0),
(512, 'amazon', 4, 2020, '', 'Labels', 'Avery 479', 7.83, 0),
(513, 'amazon', 4, 2022, '', 'Fasteners', 'Advantus Plastic Paper Clips', 30, 0),
(514, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1993', 25.92, 0),
(515, 'amazon', 4, 2022, '', 'Furnishings', 'Eldon Radial Chair Mat for Low to Medium Pile Carpets', 159.92, 0),
(516, 'amazon', 4, 2022, '', 'Appliances', '3M Replacement Filter for Office Air Cleaner for 20'' x 33'' Room', 113.76, 0),
(517, 'amazon', 4, 2022, '', 'Storage', 'Fellowes Staxonsteel Drawer Files', 579.51, 0),
(518, 'amazon', 4, 2022, '', 'Storage', 'Rogers Profile Extra Capacity Storage Tub', 150.66, 0),
(519, 'amazon', 4, 2022, '', 'Binders', 'GBC Prepunched Paper, 19-Hole, for Binding Systems, 24-lb', 48.032, 0),
(520, 'amazon', 4, 2023, '', 'Chairs', 'DMI Arturo Collection Mission-style Design Wood Chair', 317.058, 0),
(521, 'amazon', 4, 2023, '', 'Art', 'Lumber Crayons', 15.76, 0),
(522, 'amazon', 4, 2023, '', 'Furnishings', 'Master Caster Door Stop, Large Neon Orange', 14.56, 0),
(523, 'amazon', 4, 2022, '', 'Chairs', 'Global Stack Chair with Arms, Black', 47.968, 0),
(524, 'amazon', 4, 2020, '', 'Furnishings', 'GE 4 Foot Flourescent Tube, 40 Watt', 59.92, 0),
(525, 'amazon', 4, 2023, '', 'Paper', 'Rediform S.O.S. 1-Up Phone Message Bk, 4-1/4x3-1/16 Bk, 1 Form/Pg, 40 Messages/Bk, 3/Pk', 28.14, 0),
(526, 'amazon', 4, 2023, '', 'Labels', 'Avery 517', 7.38, 0),
(527, 'amazon', 4, 2023, '', 'Fasteners', 'Stockwell Push Pins', 10.9, 0),
(528, 'amazon', 4, 2023, '', 'Accessories', 'Logitech Wireless Touch Keyboard K400', 274.89, 0),
(529, 'amazon', 4, 2023, '', 'Labels', 'Avery 474', 23.04, 0),
(530, 'amazon', 4, 2023, '', 'Chairs', 'Global Wood Trimmed Manager''s Task Chair, Khaki', 218.352, 0),
(531, 'amazon', 4, 2023, '', 'Paper', 'Telephone Message Books with Fax/Mobile Section, 5 1/2" x 3 3/16"', 19.05, 0),
(532, 'amazon', 4, 2023, '', 'Binders', 'Surelock Post Binders', 73.344, 0),
(533, 'amazon', 4, 2022, '', 'Supplies', 'Stiletto Hand Letter Openers', 28.8, 0),
(534, 'amazon', 4, 2023, '', 'Envelopes', 'Brown Kraft Recycled Envelopes', 16.98, 0),
(535, 'amazon', 4, 2021, '', 'Storage', 'SAFCO Commercial Wire Shelving, Black', 221.024, 0),
(536, 'amazon', 4, 2021, '', 'Chairs', 'Global Armless Task Chair, Royal Blue', 128.058, 0),
(537, 'amazon', 4, 2021, '', 'Envelopes', 'Laser & Ink Jet Business Envelopes', 21.34, 0),
(538, 'amazon', 4, 2020, '', 'Tables', 'Bevis 36 x 72 Conference Tables', 99.592, 0),
(539, 'amazon', 4, 2020, '', 'Accessories', 'Logitech Wireless Headset h800', 399.96, 0),
(540, 'amazon', 4, 2023, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 32.67, 0),
(541, 'amazon', 4, 2022, '', 'Phones', 'Gear Head AU3700S Headset', 25.98, 0),
(542, 'amazon', 4, 2022, '', 'Art', 'BIC Brite Liner Grip Highlighters', 3.28, 0),
(543, 'amazon', 4, 2022, '', 'Storage', 'Space Solutions HD Industrial Steel Shelving.', 459.88, 0),
(544, 'amazon', 4, 2022, '', 'Supplies', 'Acme Kleen Earth Office Shears', 7.76, 0),
(545, 'amazon', 4, 2022, '', 'Art', 'Panasonic KP-380BK Classic Electric Pencil Sharpener', 71.96, 0),
(546, 'amazon', 4, 2022, '', 'Supplies', 'Fiskars Softgrip Scissors', 54.9, 0),
(547, 'amazon', 4, 2022, '', 'Binders', 'Wilson Jones Clip & Carry Folder Binder Tool for Ring Binders, Clear', 9.28, 0),
(548, 'amazon', 4, 2022, '', 'Accessories', 'Memorex Froggy Flash Drive 4 GB', 35.168, 0),
(549, 'amazon', 4, 2022, '', 'Paper', 'Standard Line “While You Were Out” Hardbound Telephone Message Book', 123.088, 0),
(550, 'amazon', 4, 2023, '', 'Labels', 'Color-Coded Legal Exhibit Labels', 4.91, 0),
(551, 'amazon', 4, 2020, '', 'Envelopes', 'Staple envelope', 247.84, 0),
(552, 'amazon', 4, 2020, '', 'Binders', 'ACCOHIDE 3-Ring Binder, Blue, 1"', 9.912, 0),
(553, 'amazon', 4, 2023, '', 'Accessories', 'Sony 64GB Class 10 Micro SDHC R40 Memory Card', 107.97, 0),
(554, 'amazon', 4, 2023, '', 'Binders', 'Fellowes Black Plastic Comb Bindings', 23.24, 0),
(555, 'amazon', 4, 2023, '', 'Chairs', 'Global Fabric Manager''s Chair, Dark Gray', 908.82, 0),
(556, 'amazon', 4, 2020, '', 'Art', 'Newell 347', 21.4, 0),
(557, 'amazon', 4, 2020, '', 'Labels', 'Avery 495', 12.6, 0),
(558, 'amazon', 4, 2023, '', 'Furnishings', 'DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7', 66.36, 0);
INSERT INTO `nb_saleforecast` (`id`, `seller`, `month`, `year`, `sdate`, `category`, `product`, `amount`, `pcount`) VALUES
(559, 'amazon', 4, 2023, '', 'Binders', 'GBC Durable Plastic Covers', 92.88, 0),
(560, 'amazon', 4, 2023, '', 'Furnishings', 'Eldon 500 Class Desk Accessories', 24.14, 0),
(561, 'amazon', 4, 2022, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 113.888, 0),
(562, 'amazon', 4, 2021, '', 'Furnishings', 'Executive Impressions Supervisor Wall Clock', 67.36, 0),
(563, 'amazon', 4, 2021, '', 'Furnishings', 'Executive Impressions 14" Two-Color Numerals Wall Clock', 54.528, 0),
(564, 'amazon', 4, 2020, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 192.186, 0),
(565, 'amazon', 4, 2022, '', 'Paper', 'Xerox 206', 19.44, 0),
(566, 'amazon', 4, 2022, '', 'Chairs', 'Global Geo Office Task Chair, Gray', 194.352, 0),
(567, 'amazon', 4, 2022, '', 'Binders', 'Aluminum Screw Posts', 36.624, 0),
(568, 'amazon', 4, 2023, '', 'Binders', 'VariCap6 Expandable Binder', 15.57, 0),
(569, 'amazon', 4, 2020, '', 'Tables', 'Riverside Furniture Stanwyck Manor Table Series', 172.11, 0),
(570, 'amazon', 4, 2023, '', 'Appliances', 'Tripp Lite Isotel 6 Outlet Surge Protector with Fax/Modem Protection', 195.104, 0),
(571, 'amazon', 4, 2023, '', 'Furnishings', 'Linden 10" Round Wall Clock, Black', 36.672, 0),
(572, 'amazon', 4, 2020, '', 'Appliances', 'Belkin 6 Outlet Metallic Surge Strip', 32.67, 0),
(573, 'amazon', 4, 2021, '', 'Phones', 'Konftel 250 Conference phone - Charcoal black', 569.64, 0),
(574, 'amazon', 4, 2021, '', 'Binders', 'Cardinal EasyOpen D-Ring Binders', 9.14, 0),
(575, 'amazon', 4, 2021, '', 'Furnishings', 'Tenex Antistatic Computer Chair Mats', 1196.86, 0),
(576, 'amazon', 4, 2021, '', 'Bookcases', 'O''Sullivan 3-Shelf Heavy-Duty Bookcases', 523.26, 0),
(577, 'amazon', 4, 2021, '', 'Copiers', 'Canon PC-428 Personal Copier', 639.968, 0),
(578, 'amazon', 4, 2021, '', 'Paper', 'Easy-staple paper', 52.76, 0),
(579, 'amazon', 4, 2022, '', 'Art', 'BIC Brite Liner Grip Highlighters, Assorted, 5/Pack', 13.568, 0),
(580, 'amazon', 4, 2023, '', 'Accessories', 'Logitech LS21 Speaker System - PC Multimedia - 2.1-CH - Wired', 47.976, 0),
(581, 'amazon', 4, 2023, '', 'Paper', 'Xerox 230', 20.736, 0),
(582, 'amazon', 4, 2021, '', 'Chairs', 'Novimex Turbo Task Chair', 127.764, 0),
(583, 'amazon', 4, 2023, '', 'Binders', 'Premium Transparent Presentation Covers by GBC', 146.86, 0),
(584, 'amazon', 4, 2023, '', 'Binders', 'Cardinal EasyOpen D-Ring Binders', 36.56, 0),
(585, 'amazon', 4, 2021, '', 'Chairs', 'GuestStacker Chair with Chrome Finish Legs', 892.224, 0),
(586, 'amazon', 4, 2020, '', 'Appliances', 'Belkin F9G930V10-GRY 9 Outlet Surge', 106.96, 0),
(587, 'amazon', 4, 2020, '', 'Furnishings', 'Howard Miller 13" Diameter Goldtone Round Wall Clock', 187.76, 0),
(588, 'amazon', 4, 2021, '', 'Appliances', 'Kensington 7 Outlet MasterPiece Power Center with Fax/Phone Line Protection', 186.732, 0),
(589, 'amazon', 4, 2021, '', 'Binders', 'Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind', 3812.97, 0),
(590, 'amazon', 4, 2022, '', 'Chairs', 'Global Stack Chair with Arms, Black', 167.888, 0),
(591, 'amazon', 4, 2021, '', 'Phones', 'Samsung HM1900 Bluetooth Headset', 87.8, 0),
(592, 'amazon', 4, 2023, '', 'Appliances', 'Hoover Commercial SteamVac', 40.74, 0),
(593, 'amazon', 4, 2023, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 286.256, 0),
(594, 'amazon', 4, 2022, '', 'Envelopes', 'Poly String Tie Envelopes', 6.12, 0),
(595, 'amazon', 4, 2022, '', 'Appliances', 'Eureka The Boss Cordless Rechargeable Stick Vac', 203.92, 0),
(596, 'amazon', 4, 2022, '', 'Phones', 'SKILCRAFT Telephone Shoulder Rest, 2" x 6.5" x 2.5", Black', 29.56, 0),
(597, 'amazon', 4, 2021, '', 'Chairs', 'SAFCO Optional Arm Kit for Workspace Cribbage Stacking Chair', 63.936, 0),
(598, 'amazon', 4, 2021, '', 'Art', 'Newell 345', 59.52, 0),
(599, 'amazon', 4, 2021, '', 'Phones', 'RCA ViSYS 25825 Wireless digital phone', 311.976, 0),
(600, 'amazon', 4, 2021, '', 'Binders', 'GBC Premium Transparent Covers with Diagonal Lined Pattern', 50.352, 0),
(601, 'amazon', 4, 2021, '', 'Tables', 'Iceberg OfficeWorks 42" Round Tables', 241.568, 0),
(602, 'amazon', 4, 2021, '', 'Phones', 'Polycom CX600 IP Phone VoIP phone', 479.92, 0),
(603, 'amazon', 4, 2020, '', 'Binders', 'GBC Durable Plastic Covers', 58.05, 0),
(604, 'amazon', 4, 2020, '', 'Paper', 'Xerox 232', 71.28, 0),
(605, 'amazon', 4, 2022, '', 'Appliances', 'Hoover Shoulder Vac Commercial Portable Vacuum', 715.64, 0),
(606, 'amazon', 4, 2022, '', 'Furnishings', 'Eldon Delta Triangular Chair Mat, 52" x 58", Clear', 30.344, 0),
(607, 'amazon', 4, 2020, '', 'Storage', 'Rogers Profile Extra Capacity Storage Tub', 66.96, 0),
(608, 'amazon', 4, 2020, '', 'Binders', 'Zipper Ring Binder Pockets', 6.24, 0),
(609, 'amazon', 4, 2022, '', 'Binders', 'Round Ring Binders', 8.32, 0),
(610, 'amazon', 4, 2023, '', 'Appliances', 'Harmony HEPA Quiet Air Purifiers', 28.08, 0),
(611, 'amazon', 4, 2023, '', 'Binders', 'Acco Data Flex Cable Posts For Top & Bottom Load Binders, 6" Capacity', 10.43, 0),
(612, 'amazon', 4, 2023, '', 'Storage', 'Safco Industrial Wire Shelving System', 72.784, 0),
(613, 'amazon', 4, 2021, '', 'Chairs', 'Hon 4070 Series Pagoda Round Back Stacking Chairs', 577.764, 0),
(614, 'amazon', 4, 2021, '', 'Tables', 'Bretford CR4500 Series Slim Rectangular Table', 191.5155, 0),
(615, 'amazon', 4, 2021, '', 'Art', 'Crayola Colored Pencils', 2.624, 0),
(616, 'amazon', 4, 2022, '', 'Furnishings', 'Deflect-o EconoMat Studded, No Bevel Mat for Low Pile Carpeting', 82.64, 0),
(617, 'amazon', 4, 2022, '', 'Storage', 'Tenex File Box, Personal Filing Tote with Lid, Black', 31.02, 0),
(618, 'amazon', 4, 2022, '', 'Accessories', 'Logitech Trackman Marble Mouse', 89.97, 0),
(619, 'amazon', 4, 2020, '', 'Phones', 'Square Credit Card Reader', 19.98, 0),
(620, 'amazon', 4, 2023, '', 'Storage', 'Tennsco Double-Tier Lockers', 675.06, 0),
(621, 'amazon', 4, 2021, '', 'Envelopes', 'Tyvek Side-Opening Peel & Seel Expanding Envelopes', 180.96, 0),
(622, 'amazon', 4, 2023, '', 'Art', 'Pencil and Crayon Sharpener', 1.752, 0),
(623, 'amazon', 4, 2023, '', 'Art', 'Newell 321', 20.992, 0),
(624, 'amazon', 4, 2023, '', 'Chairs', 'Global Wood Trimmed Manager''s Task Chair, Khaki', 436.704, 0),
(625, 'amazon', 4, 2021, '', 'Furnishings', 'Eldon 200 Class Desk Accessories, Burgundy', 31.4, 0),
(626, 'amazon', 4, 2021, '', 'Furnishings', 'DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7', 9.48, 0),
(627, 'amazon', 4, 2021, '', 'Phones', 'iKross Bluetooth Portable Keyboard + Cell Phone Stand Holder + Brush for Apple iPhone 5S 5C 5, 4S 4', 209.5, 0),
(628, 'amazon', 4, 2021, '', 'Furnishings', 'Eldon Imàge Series Desk Accessories, Clear', 24.3, 0),
(629, 'amazon', 4, 2021, '', 'Paper', 'Weyerhaeuser First Choice Laser/Copy Paper (20Lb. and 88 Bright)', 6.48, 0),
(630, 'amazon', 4, 2020, '', 'Storage', 'Eldon Simplefile Box Office', 87.08, 0),
(631, 'amazon', 4, 2020, '', 'Phones', 'AT&T SB67148 SynJ', 105.584, 0),
(632, 'amazon', 4, 2020, '', 'Accessories', 'Memorex Mini Travel Drive 64 GB USB 2.0 Flash Drive', 217.44, 0),
(633, 'amazon', 4, 2023, '', 'Phones', 'Samsung Galaxy S4 Mini', 751.984, 0),
(634, 'amazon', 4, 2021, '', 'Storage', 'Neat Ideas Personal Hanging Folder Files, Black', 10.744, 0),
(635, 'amazon', 4, 2023, '', 'Paper', 'Easy-staple paper', 106.32, 0),
(636, 'amazon', 4, 2020, '', 'Phones', 'Samsung Galaxy Mega 6.3', 1679.96, 0),
(637, 'amazon', 4, 2022, '', 'Chairs', 'Global High-Back Leather Tilter, Burgundy', 344.372, 0),
(638, 'amazon', 4, 2022, '', 'Storage', 'Tennsco 16-Compartment Lockers with Coat Rack', 1554.936, 0),
(639, 'amazon', 4, 2022, '', 'Furnishings', 'Howard Miller 16" Diameter Gallery Wall Clock', 127.88, 0),
(640, 'amazon', 4, 2021, '', 'Storage', 'Perma STOR-ALL Hanging File Box, 13 1/8"W x 12 1/4"D x 10 1/2"H', 17.94, 0),
(641, 'amazon', 4, 2021, '', 'Appliances', 'Honeywell Enviracaire Portable HEPA Air Cleaner for up to 10 x 16 Room', 370.14, 0),
(642, 'amazon', 4, 2023, '', 'Bookcases', 'O''Sullivan 4-Shelf Bookcase in Odessa Pine', 387.136, 0),
(643, 'amazon', 4, 2023, '', 'Accessories', 'Maxell 4.7GB DVD-R', 45.408, 0),
(644, 'amazon', 4, 2023, '', 'Furnishings', 'Tenex Chairmats For Use with Hard Floors', 77.952, 0),
(645, 'amazon', 4, 2023, '', 'Labels', 'Avery 496', 3, 0),
(646, 'amazon', 4, 2023, '', 'Binders', 'Tuf-Vin Binders', 37.896, 0),
(647, 'amazon', 4, 2023, '', 'Paper', 'Xerox 1893', 65.584, 0),
(648, 'amazon', 4, 2022, '', 'Art', 'Newell 322', 3.64, 0),
(649, 'amazon', 4, 2022, '', 'Phones', 'Cyber Acoustics AC-202b Speech Recognition Stereo Headset', 12.99, 0),
(650, 'amazon', 4, 2022, '', 'Chairs', 'Global Executive Mid-Back Manager''s Chair', 1454.9, 0),
(651, 'amazon', 4, 2023, '', 'Binders', 'Acco PRESSTEX Data Binder with Storage Hooks, Light Blue, 9 1/2" X 11"', 4.842, 0),
(652, 'amazon', 4, 2023, '', 'Furnishings', 'Tenex B1-RE Series Chair Mats for Low Pile Carpets', 220.704, 0),
(653, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1962', 10.272, 0),
(654, 'amazon', 4, 2023, '', 'Envelopes', 'Staple envelope', 18.688, 0),
(655, 'amazon', 4, 2023, '', 'Furnishings', 'Eldon Imàge Series Desk Accessories, Clear', 11.664, 0),
(656, 'amazon', 4, 2020, '', 'Art', 'Hunt Boston Vacuum Mount KS Pencil Sharpener', 174.95, 0),
(657, 'amazon', 4, 2020, '', 'Storage', 'Economy Rollaway Files', 826, 0),
(658, 'amazon', 4, 2023, '', 'Furnishings', 'Luxo Economy Swing Arm Lamp', 139.58, 0),
(659, 'amazon', 4, 2023, '', 'Binders', '3M Organizer Strips', 8.1, 0),
(660, 'amazon', 4, 2022, '', 'Phones', 'Nortel Meridian M5316 Digital phone', 1294.75, 0),
(661, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1898', 26.72, 0),
(662, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1947', 33.488, 0),
(663, 'amazon', 4, 2020, '', 'Art', 'Boston Home & Office Model 2000 Electric Pencil Sharpeners', 70.95, 0),
(664, 'amazon', 4, 2020, '', 'Binders', 'Avery Trapezoid Ring Binder, 3" Capacity, Black, 1040 sheets', 65.568, 0),
(665, 'amazon', 4, 2020, '', 'Accessories', 'Razer Kraken 7.1 Surround Sound Over Ear USB Gaming Headset', 299.97, 0),
(666, 'amazon', 4, 2020, '', 'Furnishings', 'Luxo Adjustable Task Clamp Lamp', 177.68, 0),
(667, 'amazon', 4, 2020, '', 'Accessories', 'Logitech G600 MMO Gaming Mouse', 159.98, 0),
(668, 'amazon', 4, 2021, '', 'Tables', 'Chromcraft Bull-Nose Wood Round Conference Table Top, Wood Base', 609.98, 0),
(669, 'amazon', 4, 2021, '', 'Tables', 'Iceberg OfficeWorks 42" Round Tables', 211.372, 0),
(670, 'amazon', 4, 2021, '', 'Phones', 'Apple iPhone 5C', 239.976, 0),
(671, 'amazon', 4, 2023, '', 'Bookcases', 'Bush Westfield Collection Bookcases, Medium Cherry Finish', 344.981, 0),
(672, 'amazon', 4, 2021, '', 'Accessories', 'SanDisk Ultra 64 GB MicroSDHC Class 10 Memory Card', 239.94, 0),
(673, 'amazon', 4, 2021, '', 'Art', 'Dixon Ticonderoga Pencils', 23.84, 0),
(674, 'amazon', 4, 2021, '', 'Paper', 'Xerox 192', 25.92, 0),
(675, 'amazon', 4, 2021, '', 'Storage', 'X-Rack File for Hanging Folders', 22.58, 0),
(676, 'amazon', 4, 2020, '', 'Storage', 'SAFCO Commercial Wire Shelving, Black', 828.84, 0),
(677, 'amazon', 4, 2020, '', 'Paper', 'Xerox 213', 32.4, 0),
(678, 'amazon', 4, 2022, '', 'Storage', 'Fellowes Bankers Box Recycled Super Stor/Drawer', 129.552, 0),
(679, 'amazon', 4, 2022, '', 'Storage', 'Fellowes Bankers Box Staxonsteel Drawer File/Stacking System', 51.984, 0),
(680, 'amazon', 4, 2022, '', 'Paper', 'TOPS "Important Message" Pads, Canary, 4-1/4 x 5-1/2, 50 Sheets per Pad', 10.272, 0),
(681, 'amazon', 4, 2022, '', 'Art', 'Colorific Watercolor Pencils', 15.48, 0),
(682, 'amazon', 4, 2022, '', 'Paper', 'Xerox 209', 51.84, 0),
(683, 'amazon', 4, 2020, '', 'Paper', 'Xerox 1891', 48.91, 0),
(684, 'amazon', 4, 2021, '', 'Accessories', 'TRENDnet 56K USB 2.0 Phone, Internet and Fax Modem', 41.424, 0),
(685, 'amazon', 4, 2021, '', 'Phones', 'Grandstream GXP2100 Mainstream Business Phone', 244.768, 0),
(686, 'amazon', 4, 2021, '', 'Art', 'Boston School Pro Electric Pencil Sharpener, 1670', 74.352, 0),
(687, 'amazon', 4, 2021, '', 'Binders', 'GBC Standard Recycled Report Covers, Clear Plastic Sheets', 4.312, 0),
(688, 'amazon', 4, 2021, '', 'Chairs', 'Global Geo Office Task Chair, Gray', 56.686, 0),
(689, 'amazon', 4, 2021, '', 'Phones', 'Lunatik TT5L-002 Taktik Strike Impact Protection System for iPhone 5', 97.968, 0),
(690, 'amazon', 4, 2021, '', 'Art', 'Newell 348', 7.872, 0),
(691, 'amazon', 4, 2021, '', 'Paper', 'Xerox 1994', 15.552, 0),
(692, 'amazon', 4, 2021, '', 'Binders', 'GBC Plastic Binding Combs', 1.476, 0),
(693, 'amazon', 4, 2022, '', 'Phones', 'Clearsounds A400', 118.782, 0),
(694, 'amazon', 4, 2022, '', 'Supplies', 'Premier Automatic Letter Opener', 769.184, 0),
(695, 'amazon', 4, 2022, '', 'Paper', 'Xerox 1939', 37.94, 0),
(696, 'amazon', 4, 2023, '', 'Fasteners', 'Translucent Push Pins by OIC', 7.92, 0),
(697, 'amazon', 4, 2023, '', 'Art', '50 Colored Long Pencils', 16.256, 0),
(698, 'amazon', 4, 2023, '', 'Phones', 'AT&T 1080 Corded phone', 219.184, 0),
(699, 'amazon', 4, 2023, '', 'Chairs', 'Harbour Creations 67200 Series Stacking Chairs', 128.124, 0),
(700, 'amazon', 4, 2022, '', 'Art', 'Barrel Sharpener', 32.13, 0),
(701, 'amazon', 4, 2022, '', 'Art', 'Newell 32', 2.88, 0),
(702, 'amazon', 4, 2020, '', 'Art', 'Stanley Contemporary Battery Pencil Sharpeners', 26.7, 0),
(703, 'amazon', 4, 2020, '', 'Binders', 'Fellowes Twister Kit, Gray/Clear, 3/pkg', 40.2, 0),
(704, 'amazon', 4, 2020, '', 'Art', 'Binney & Smith Crayola Metallic Colored Pencils, 8-Color Set', 13.89, 0),
(705, 'amazon', 4, 2020, '', 'Storage', 'Space Solutions HD Industrial Steel Shelving.', 689.82, 0),
(706, 'amazon', 4, 2021, '', 'Chairs', 'Global Stack Chair with Arms, Black', 104.93, 0),
(707, 'amazon', 4, 2023, '', 'Storage', 'Carina Media Storage Towers in Natural & Black', 195.136, 0),
(708, 'amazon', 4, 2021, '', 'Appliances', 'Acco Smartsocket Color-Coded Six-Outlet AC Adapter Model Surge Protectors', 35.208, 0),
(709, 'amazon', 4, 2022, '', 'Binders', 'Recycled Pressboard Report Cover with Reinforced Top Hinge', 18.088, 0),
(710, 'amazon', 4, 2022, '', 'Envelopes', 'Recycled Interoffice Envelopes with String and Button Closure, 10 x 13', 71.97, 0),
(711, 'amazon', 4, 2023, '', 'Labels', 'Avery 499', 14.94, 0),
(712, 'amazon', 4, 2022, '', 'Art', 'American Pencil', 6.99, 0),
(713, 'amazon', 4, 2022, '', 'Supplies', 'Acme Design Line 8" Stainless Steel Bent Scissors w/Champagne Handles, 3-1/8" Cut', 6.84, 0),
(714, 'amazon', 4, 2023, '', 'Art', 'Newell 326', 7.04, 0),
(715, 'amazon', 4, 2020, '', 'Chairs', 'Global Stack Chair with Arms, Black', 149.9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nb_sale_recommend`
--

CREATE TABLE `nb_sale_recommend` (
  `id` int(11) NOT NULL,
  `seller` varchar(20) NOT NULL,
  `product` varchar(200) NOT NULL,
  `pcount` int(11) NOT NULL,
  `available` varchar(0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_sale_recommend`
--

INSERT INTO `nb_sale_recommend` (`id`, `seller`, `product`, `pcount`, `available`) VALUES
(1, 'amazon', 'Hoover Shoulder Vac Commercial Portable Vacuum', 20, ''),
(2, 'amazon', 'Harbour Creations 67200 Series Stacking Chairs', 8, ''),
(3, 'amazon', 'Belkin 6 Outlet Metallic Surge Strip', 8, ''),
(4, 'amazon', 'Avery Non-Stick Binders', 4, ''),
(5, 'amazon', 'Safco Contoured Stacking Chairs', 8, ''),
(6, 'amazon', 'Hon GuestStacker Chair', 6, ''),
(7, 'amazon', 'Global Stack Chair with Arms, Black', 7, ''),
(8, 'amazon', 'Staples', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `nb_search`
--

CREATE TABLE `nb_search` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `scount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_search`
--

INSERT INTO `nb_search` (`id`, `uname`, `keyword`, `scount`) VALUES
(1, 'dinesh', 'paste', 1),
(2, 'dinesh', 'avaya', 1),
(3, 'dinesh', 'wheel', 1),
(4, 'dinesh', '', 3),
(5, 'dinesh', 'chair', 2),
(6, 'dinesh', 'bevis', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nb_seller`
--

CREATE TABLE `nb_seller` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_seller`
--

INSERT INTO `nb_seller` (`id`, `name`, `address`, `city`, `mobile`, `email`, `uname`, `pass`, `create_date`, `status`) VALUES
(1, 'Big Sale', '52, Kodambakkam', 'Chennai', 8957595584, 'bigsale@gmail.com', 'bigsale', '123456', '06-02-2024', 1),
(2, 'Amazon', '45,D Nagar', 'Chennai', 9857854568, 'bgeduscanner@gmail.com', 'amazon', '123456', '05-03-2024', 1);

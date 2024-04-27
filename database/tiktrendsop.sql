-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 02, 2024 lúc 10:15 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tiktrendsop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `return_address` tinyint(1) DEFAULT 0,
  `delivery_address` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `id_user`, `name`, `address`, `phone`, `is_default`, `return_address`, `delivery_address`, `created_at`, `updated_at`) VALUES
(1, 11, 'Long', 'Quận 2, Hồ Chí Minh', '0123456789', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(2, 9, 'Thiện', 'Quận 1, Hồ Chí Minh', '02938475618', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(3, 5, 'Như', 'Quận 1, Hồ Chí Minh', '028384958', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(4, 4, 'Hằng', 'Quận 10, Hồ Chí Minh', '0495827461', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(5, 6, 'Huỳnh', 'Quận 10, Hồ Chí Minh', '0495867102', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(6, 11, 'Hùng', 'Quận 6, Hồ Chí Minh', '0294857274', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(7, 4, 'Lộc', 'Quận Tân Phú, Hồ Chí Minh', '0987867564', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(8, 5, 'Thảo', 'Quận Bình Thạnh, Hồ Chí Minh', '0574637859', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(9, 8, 'Linh', 'Quận Thủ Đức, Hồ Chí Minh', '0584938576', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(10, 1, 'Phúc', 'Quận 9, Hồ Chí Minh', '0985738412', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(11, 11, 'Tú', 'Quận 3', '0999888777', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(12, 9, 'Vượng', 'Quận 2', '0777888999', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(13, 8, 'Trinh', 'Quận 4', '08765465738', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(14, 11, 'Văn', 'Quận 6, Hồ Chí Minh', '0958672345', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(15, 5, 'Toàn', 'Quận 7, Hồ Chí Minh', '0675838475', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(16, 2, 'Ta Là Quan Lão Gia', 'Quận 8, Hồ Chí Minh', '0685847361', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(17, 11, 'Bad Man', 'Quận 10, Hồ Chí Minh', '01646576829', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(18, 2, 'Sad Man', 'Quận 5, Hồ Chí Minh', '01646576829', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(19, 1, 'Long', 'Quận 11, Hồ Chí Minh', '0987656756', 0, 0, 0, '2024-02-23 01:10:00', NULL),
(20, 4, 'Lân', 'Quận 12, Hồ Chí Minh', '0989897675', 0, 0, 0, '2024-02-23 01:10:00', '2024-03-20 19:00:51'),
(21, 7, 'Phúc Nuyễn Hoàng', 'Bắc Kạn,Bạch Thông,Cao Sơn, 12312', '+84777575100', 1, NULL, NULL, '2024-03-20 19:00:51', '2024-03-20 19:00:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_store` int(10) UNSIGNED NOT NULL,
  `id_categories_blog` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `image_arr` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `count_views` bigint(20) DEFAULT 0,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `id_store`, `id_categories_blog`, `title`, `content`, `status`, `image_arr`, `created_at`, `updated_at`, `deleted_at`, `count_views`, `description`) VALUES
(1, 1, 10, 'Chọn áo croptop như thế nào cho phù hợp', '<h1>Để chọn &aacute;o croptop ph&ugrave; hợp, bạn c&oacute; thể xem x&eacute;t c&aacute;c yếu tố sau đ&acirc;y:</h1>\r\n\r\n<p><strong>Ph&ugrave; hợp với d&aacute;ng v&oacute;c:</strong> Đầu ti&ecirc;n, h&atilde;y xem x&eacute;t h&igrave;nh d&aacute;ng cơ thể của bạn. &Aacute;o croptop c&oacute; thể ph&ugrave; hợp với nhiều h&igrave;nh d&aacute;ng cơ thể kh&aacute;c nhau, nhưng bạn n&ecirc;n chọn một kiểu m&agrave; bạn cảm thấy tự tin v&agrave; thoải m&aacute;i khi mặc.<br />\r\n<br />\r\n<strong>Chiều d&agrave;i:</strong> Độ d&agrave;i của &aacute;o croptop c&oacute; thể kh&aacute;c nhau từ kiểu ngắn gọn đến d&agrave;i hơn. Nếu bạn thoải m&aacute;i với một phong c&aacute;ch gợi cảm, bạn c&oacute; thể chọn &aacute;o croptop ngắn. Tuy nhi&ecirc;n, nếu bạn muốn một phong c&aacute;ch năng động v&agrave; thoải m&aacute;i hơn, bạn c&oacute; thể chọn một chiếc &aacute;o croptop d&agrave;i hơn, gi&uacute;p phần bụng kh&ocirc;ng qu&aacute; trần lộ.<br />\r\n<br />\r\n<strong>Kiểu d&aacute;ng:</strong> C&oacute; nhiều loại kiểu d&aacute;ng &aacute;o croptop, từ c&aacute;c kiểu cổ tr&ograve;n đến cổ V, từ kiểu &aacute;o thụng đến &aacute;o c&aacute;nh ti&ecirc;n, v&agrave; nhiều kiểu d&aacute;ng kh&aacute;c nhau. H&atilde;y chọn kiểu d&aacute;ng phản &aacute;nh phong c&aacute;ch v&agrave; c&aacute; nh&acirc;n của bạn.<br />\r\n<br />\r\n<strong>Phối hợp trang phục:</strong> Xem x&eacute;t c&aacute;ch bạn sẽ kết hợp &aacute;o croptop với quần, ch&acirc;n v&aacute;y hoặc quần &aacute;o dưới kh&aacute;c. &Aacute;o croptop thường kết hợp tốt với quần jeans, quần short, ch&acirc;n v&aacute;y b&uacute;t ch&igrave;, hoặc ch&acirc;n v&aacute;y maxi.<br />\r\n<br />\r\n<strong>Chất liệu v&agrave; m&agrave;u sắc:</strong> Chọn chất liệu v&agrave; m&agrave;u sắc ph&ugrave; hợp với m&ugrave;a, sở th&iacute;ch c&aacute; nh&acirc;n v&agrave; sự kiện bạn muốn tham gia. Chất liệu như cotton, lụa nhẹ, hoặc ren thường l&agrave; lựa chọn phổ biến. Đối với m&agrave;u sắc, bạn c&oacute; thể chọn giữa c&aacute;c t&ocirc;ng m&agrave;u tươi s&aacute;ng hoặc m&agrave;u sắc trầm.<br />\r\n<br />\r\n<strong>Thoải m&aacute;i:</strong> Quan trọng nhất, h&atilde;y chắc chắn rằng bạn cảm thấy thoải m&aacute;i v&agrave; tự tin khi mặc &aacute;o croptop. Điều n&agrave;y l&agrave; ch&igrave;a kh&oacute;a quan trọng nhất để thể hiện phong c&aacute;ch của bạn một c&aacute;ch tự tin v&agrave; tự nhi&ecirc;n nhất.</p>', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', '2024-04-01 02:03:47', NULL, 0, 'cách chọn Chọn áo croptop như thế nào cho phù hợp'),
(2, 1, 9, 'Chọn quần jeans như thế nào cho phù hợp', '<h1>Để chọn quần jeans phù hợp, dưới đây là một số yếu tố bạn có thể xem xét:</h1>\n                <strong>Kiểu dáng và cắt may:</strong> Có nhiều kiểu dáng quần jeans khác nhau như quần skinny, quần cạp cao, quần\n                bootcut, quần\n                boyfriend, và quần mom jeans. Chọn kiểu dáng phù hợp với hình dáng cơ thể của bạn và phong cách cá nhân.\n                <br>\n                <br>\n                <strong>Kích cỡ:</strong> Đảm bảo bạn chọn kích cỡ phù hợp với cơ thể của mình. Quần jeans quá chật có thể gây cảm\n                giác không thoải\n                mái và hạn chế sự linh hoạt, trong khi quần quá rộng sẽ không giữ dáng và không thể tạo nên vẻ ngoài gọn gàng.\n                <br>\n                <br>\n            \n                <strong>Chất liệu:</strong> Chất liệu denim là lựa chọn phổ biến cho quần jeans, nhưng có các loại denim khác nhau\n                về độ dày, độ co\n                giãn và cảm giác mềm mại. Chọn chất liệu mà bạn cảm thấy thoải mái và phù hợp với môi trường bạn sẽ mặc quần jeans.\n                <br>\n                <br>\n            \n                <strong>Màu sắc:</strong> Quần jeans có thể có nhiều màu sắc khác nhau từ màu xanh đậm, xanh nhạt đến màu đen, màu\n                xám và các màu\n                khác. Chọn màu sắc phù hợp với sở thích cá nhân và có thể dễ dàng phối hợp với các trang phục khác.\n                <br>\n                <br>\n            \n                <strong>Phong cách:</strong> Xem xét phong cách bạn muốn thể hiện khi mặc quần jeans. Đối với một phong cách casual,\n                bạn có thể chọn\n                quần jeans với các chi tiết đơn giản và không quá phức tạp. Đối với một phong cách năng động và cá tính, bạn có thể\n                chọn các kiểu jeans có các chi tiết như rách, xước, hoặc wash out.\n                <br>\n                <br>\n            \n                <strong>Sự thoải mái:</strong> Quan trọng nhất, hãy chắc chắn rằng quần jeans mà bạn chọn mang lại sự thoải mái khi\n                vận động và không\n                gây cảm giác khó chịu trong suốt thời gian dài sử dụng.', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, 'Chọn quần jeans như thế nào cho phù hợp'),
(3, 3, 4, 'Chọn áo sơ mi như thế nào cho phù hợp', '<h1> Để chọn áo sơ mi phù hợp, dưới đây là một số yếu tố bạn có thể xem xét:</h1>\n                <strong>Kích cỡ và dáng áo:</strong> Đảm bảo chọn kích cỡ và dáng áo phù hợp với hình dáng cơ thể của bạn. Áo sơ mi\n                nên vừa vặn nhưng\n                không quá chật hoặc quá rộng. Dáng áo cũng nên phản ánh phong cách cá nhân của bạn, có thể là slim fit, regular fit,\n                hoặc relaxed fit.\n                <br>\n                <br>\n            \n                <strong>Chất liệu:</strong> Chất liệu của áo sơ mi cũng rất quan trọng. Các lựa chọn phổ biến bao gồm cotton, linen,\n                và các loại vải\n                tổng hợp. Chọn chất liệu phù hợp với mùa và môi trường mà bạn sẽ mặc áo.\n                <br>\n                <br>\n            \n                <strong>Màu sắc và hoa văn:</strong> Chọn màu sắc và hoa văn phù hợp với sở thích cá nhân và dịp sự kiện. Màu sắc\n                truyền thống như\n                trắng, xanh dương, và hồng nhạt thường dễ dàng kết hợp với nhiều loại trang phục khác.\n                <br>\n                <br>\n            \n                <strong>Phong cách:</strong> Xác định phong cách mà bạn muốn thể hiện qua áo sơ mi. Áo sơ mi có thể phù hợp với\n                nhiều phong cách khác\n                nhau từ casual đến formal. Hãy chọn một áo sơ mi phản ánh phong cách của bạn và phù hợp với dịp sự kiện.\n                <br>\n                <br>\n            \n                <strong>Chi tiết thiết kế:</strong> Chi tiết thiết kế như cổ áo, cổ tay, và nút cài cũng đóng vai trò quan trọng\n                trong việc chọn áo\n                sơ mi. Hãy chắc chắn rằng các chi tiết này phù hợp với phong cách và mục đích sử dụng của bạn.\n                <br>\n                <br>\n            \n                <strong>Sự thoải mái:</strong> Cuối cùng, hãy chọn áo sơ mi mà bạn cảm thấy thoải mái khi mặc. Sự thoải mái là yếu\n                tố quan trọng giúp\n                bạn tự tin và thoải mái trong suốt thời gian mặc áo.', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, 'Chọn quần jeans như thế nào cho phù hợp'),
(4, 1, 5, 'Chọn son như thế nào cho phù hợp với màu da', ' <h1>Khi chọn son phù hợp với màu da của bạn, có một số nguyên tắc bạn nên xem xét:</h1>\n\n                <strong>Màu sắc da:</strong> Màu da của mỗi người có thể khác nhau, từ da trắng, da ngăm đến da nâu và màu da trung\n                tính. Màu da của\n                bạn sẽ quyết định xem loại son nào sẽ phù hợp nhất với bạn.\n            <br>\n            <br>\n                <strong>Tông màu da:</strong> Xác định tông màu da của bạn là ấm hay lạnh. Người có tông màu da ấm thường hợp với\n                các gam màu ấm như\n                cam, đỏ nâu, và hồng có tông vàng. Trong khi đó, người có tông màu da lạnh thường phù hợp với các gam màu lạnh như\n                hồng phớt, đỏ ruby, và các gam màu nude có tông hồng hoặc xanh.\n                <br>\n                <br>\n            \n                <strong>Mục đích sử dụng:</strong> Xác định dịp mà bạn sử dụng son để chọn màu sắc phù hợp. Son màu nude thường phù\n                hợp cho mọi dịp,\n                trong khi son màu đậm hoặc sắc nét thường thích hợp cho các buổi tiệc tùng hoặc dịp đặc biệt.\n                <br>\n                <br>\n            \n                <strong>Phong cách cá nhân:</strong> Nếu bạn có phong cách cá nhân riêng, hãy chọn màu son phản ánh phong cách và cá\n                tính của bạn. Có\n                thể bạn thích những gam màu nổi bật và sắc nét, hoặc bạn thích những gam màu nhẹ nhàng và tự nhiên hơn.\n                <br>\n                <br>\n            \n                <strong>Thử nghiệm màu sắc:</strong> Trước khi mua son, thử nghiệm màu sắc trên da của bạn để xem chúng hiển thị như\n                thế nào trên môi\n                và làm thế nào chúng phản ánh với màu da của bạn.\n                <br>\n                <br>\n            \n                <strong>Sự thoải mái:</strong> Cuối cùng, hãy chọn loại son mà bạn cảm thấy thoải mái khi sử dụng. Son không chỉ là\n                một sản phẩm\n                trang điểm, mà còn là một phần của cảm giác tự tin và thoải mái của bạn.', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, ''),
(5, 1, 9, 'Chọn phấn mà hồng như thế nào cho phù hợp với màu da', ' <h1>Khi chọn phấn má hồng phù hợp với màu da của bạn, có một số nguyên tắc và gợi ý dưới đây:</h1>\n                <strong>Tông màu da:</strong> Xác định tông màu da của bạn là ấm hay lạnh. Điều này sẽ giúp bạn chọn được màu hồng\n                phấn má phù hợp\n                nhất với da của mình.\n                <br>\n                <br>\n                <strong>Da ấm (warm undertones):</strong> Nếu bạn có tông màu da ấm, các gam hồng nâu, cam, đào sẽ rất phù hợp. Hồng\n                cam và hồng đào\n                thường là lựa chọn tốt cho da ấm.\n                <br>\n                <br>\n            \n                <strong>Da lạnh (cool undertones):</strong> Nếu bạn có tông màu da lạnh, hồng baby, hồng phớt và hồng dâu sẽ là\n                những lựa chọn tốt.\n                Những gam màu hồng nhẹ nhàng và có chút xanh lá cây thường phù hợp với da lạnh.\n                <br>\n                <br>\n            \n                <strong>Da trung tính (neutral undertones):</strong> Nếu da của bạn có tông màu trung tính, bạn có thể dễ dàng hòa\n                trộn giữa các gam\n                màu hồng và cam. Hồng hạt dẻ và hồng phớt là hai lựa chọn phổ biến cho da trung tính.\n                <br>\n                <br>\n            \n                <strong>Màu sắc tự nhiên:</strong> Chọn phấn má hồng có màu sắc tự nhiên và gần giống màu của làn da tự nhiên của\n                bạn. Điều này giúp\n                tạo nên vẻ ngoài tự nhiên và không quá cầu kỳ.\n                <br>\n                <br>\n            \n                <strong>Kiểu dạng sản phẩm:</strong> Ngoài màu sắc, bạn cũng cần xem xét kiểu dạng sản phẩm. Phấn má hồng có thể là\n                dạng bột, dạng\n                kem, hoặc dạng gel. Chọn sản phẩm phù hợp với loại da của bạn và phong cách trang điểm của bạn.\n                <br>\n                <br>\n            \n                <strong>Thử nghiệm trước khi mua:</strong> Trước khi mua, hãy thử nghiệm màu sắc trên da của bạn để đảm bảo rằng nó\n                phản ánh đúng màu\n                da và phong cách trang điểm của bạn.\n                <br>\n                <br>\n            \n                <i>*Lưu ý*: Hãy nhớ rằng mục đích của phấn má hồng không chỉ là tạo màu sắc cho má, mà còn là tạo điểm nhấn tự nhiên\n                    và sức sống\n                    cho\n                    khuôn mặt của bạn.</i>', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, ''),
(6, 3, 9, 'Chọn sơn móng tay như thế nào cho phù hợp với màu da tay', '<h1>Khi chọn sơn móng tay phù hợp với màu da tay của bạn, có một số yếu tố cần xem xét:</h1>\n\n                <strong>Tông da:</strong> Xác định tông da của bạn có phải là ấm, lạnh hay trung tính. Điều này sẽ giúp bạn chọn\n                được màu sơn móng\n                tay phù hợp nhất.\n                <br>\n                <br>\n            \n                <strong>Da ấm (warm undertones):</strong> Nếu bạn có tông da ấm, những gam màu nâu, cam, vàng hoặc đỏ nâu sẽ rất phù\n                hợp. Các màu như\n                camel, terracotta, và các gam nâu ấm sẽ là lựa chọn tốt.\n                <br>\n                <br>\n            \n                <strong>Da lạnh (cool undertones):</strong> Nếu bạn có tông da lạnh, những gam màu hồng, tím, xanh dương, hoặc xám\n                sẽ phù hợp. Các\n                màu như baby pink, lavender, và các gam xanh dương nhạt sẽ là sự lựa chọn thích hợp.\n                <br>\n                <br>\n            \n                <strong>Da trung tính (neutral undertones):</strong> Nếu da của bạn có tông màu trung tính, bạn có thể lựa chọn giữa\n                các gam màu ấm\n                và lạnh. Các màu như nude, hồng nhạt, hoặc sáng sẽ phù hợp với tất cả các loại da.\n                <br>\n                <br>\n            \n                <strong>Màu sắc phù hợp:</strong> Chọn màu sơn móng tay phù hợp với sở thích cá nhân và tình trạng tâm trạng của\n                bạn. Màu sáng như\n                pastel hoặc nude thường là sự lựa chọn an toàn và dễ phối hợp. Tuy nhiên, đôi khi một chút màu sắc sẽ làm tôn lên cá\n                tính của bạn.\n                <br>\n                <br>\n            \n                <strong>Dịp sử dụng:</strong> Xem xét dịp bạn sử dụng sơn móng tay. Các màu sáng như nude hoặc pastel thích hợp cho\n                các buổi gặp gỡ\n                chính thống, trong khi các màu sắc táo bạo như đỏ hoặc đen thích hợp cho các dịp đặc biệt hoặc tiệc tùng.\n                <br>\n                <br>\n            \n                <strong>Thử nghiệm trước khi mua:</strong> Trước khi mua, hãy thử nghiệm màu sơn trên một phần nhỏ của móng tay hoặc\n                trên da của bạn\n                để xem màu sắc thực sự phản ánh như thế nào trên da của bạn.\n                <br>\n                <br>\n            \n                <i>*Lưu ý*: Nhớ rằng, điều quan trọng nhất khi chọn sơn móng tay là sự tự tin và thoải mái với màu sắc bạn chọn.</i>', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, ''),
(7, 3, 8, 'Chọn Laptop phù hợp với ngành đang học', '<h1>Khi chọn laptop phù hợp với ngành đang học, bạn cần xem xét các yếu tố sau:</h1>\n\n                <strong>Yêu cầu của ngành học:</strong> Đầu tiên, nắm rõ yêu cầu cụ thể của ngành học bạn đang theo học. Một số\n                ngành yêu cầu sử dụng\n                các phần mềm đặc biệt, yêu cầu cấu hình cao, trong khi một số ngành khác chỉ cần các chức năng cơ bản của máy tính.\n                <br>\n                <br>\n                <strong>Hiệu suất và cấu hình:</strong> Dựa trên yêu cầu của ngành học và các phần mềm bạn sẽ sử dụng, chọn một\n                laptop với cấu hình\n                phù hợp. Đối với các ngành như Thiết kế đồ họa, Kỹ thuật, hay Lập trình, bạn cần một máy tính có CPU mạnh mẽ, RAM đủ\n                lớn và dung lượng ổ cứng đủ lớn để xử lý các tác vụ nặng.\n                <br>\n                <br>\n            \n                <strong> Trọng lượng và di động:</strong> Nếu bạn thường xuyên di chuyển hoặc cần mang theo laptop, hãy chọn một\n                laptop nhẹ và di\n                động. Cân nhắc kích thước màn hình và trọng lượng để đảm bảo sự thuận tiện khi mang theo.\n                <br>\n                <br>\n            \n                <strong>Thời lượng pin:</strong> Thời lượng pin quan trọng đối với việc di chuyển và làm việc từ xa. Chọn một laptop\n                có thời lượng\n                pin đủ lâu để bạn có thể làm việc mà không cần sạc pin liên tục.\n                <br>\n                <br>\n            \n                <strong>Độ bền và chất lượng:</strong> Đảm bảo chọn một thương hiệu laptop có độ bền tốt và được đánh giá cao về\n                chất lượng. Điều này\n                giúp bạn tránh được các sự cố kỹ thuật và tiết kiệm thời gian và chi phí sửa chữa.\n                <br>\n                <br>\n            \n                <strong>Giá cả:</strong> Xác định ngân sách của bạn và chọn một laptop phù hợp. Hãy tìm kiếm các dòng sản phẩm có\n                giá cả hợp lý nhưng\n                vẫn đáp ứng được nhu cầu của bạn.\n                <br>\n                <br>\n            \n                <strong>Tính linh hoạt:</strong> Chọn một laptop có các cổng kết nối đa dạng và hỗ trợ các công nghệ mới nhất để bạn\n                có thể kết nối\n                với các thiết bị khác và sử dụng các phần mềm mới nhất.\n            \n                <i>*Lưu ý*: Cuối cùng, trước khi mua, hãy tham khảo ý kiến của giáo viên hoặc các chuyên gia trong ngành về các yêu\n                    cầu cụ thể\n                    và mẫu laptop nên chọn. </i>', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, ''),
(8, 3, 7, 'Chọn PC phù hợp với công việc', '<h1>Khi chọn một PC phù hợp với công việc, có một số yếu tố quan trọng mà bạn nên xem xét:</h1>\n\n                <strong>Yêu cầu công việc:</strong> Đầu tiên, xác định rõ những yêu cầu cụ thể của công việc bạn đang làm hoặc sẽ\n                làm. Nếu bạn làm\n                việc với các ứng dụng đồ họa nặng, chơi game, hoặc cần xử lý dữ liệu lớn, bạn sẽ cần một PC có cấu hình cao hơn.\n                <br>\n                <br>\n            \n                <strong>Cấu hình phần cứng:</strong> Chọn một PC với cấu hình phần cứng phù hợp với công việc của bạn. Điều này bao\n                gồm CPU, RAM,\n                dung lượng ổ cứng, và card đồ họa. Đối với các công việc đòi hỏi hiệu suất cao, bạn cần chọn một PC có CPU mạnh mẽ,\n                RAM đủ lớn và card đồ họa tốt.\n                <br>\n                <br>\n            \n                <strong>Hệ điều hành:</strong> Chọn hệ điều hành phù hợp với nhu cầu của bạn. Windows là hệ điều hành phổ biến nhất\n                và phù hợp với\n                hầu hết các nhu cầu công việc. Tuy nhiên, nếu bạn làm việc trong lĩnh vực như thiết kế đồ họa, bạn cũng có thể cần\n                xem xét các hệ điều hành khác như MacOS hoặc Linux.\n                <br>\n                <br>\n            \n                <strong>Màn hình:</strong> Chọn một PC với màn hình chất lượng và kích thước phù hợp với nhu cầu công việc của bạn.\n                Màn hình lớn hơn\n                có thể giúp bạn làm việc hiệu quả hơn với các ứng dụng đa nhiệm hoặc xem nội dung đồ họa.\n                <br>\n                <br>\n            \n                <strong>Dung lượng lưu trữ:</strong> Xác định dung lượng lưu trữ cần thiết cho công việc của bạn. Nếu bạn làm việc\n                với các tập tin\n                lớn hoặc cần lưu trữ dữ liệu nhiều, bạn sẽ cần một PC có dung lượng ổ cứng lớn.\n                <br>\n                <br>\n            \n                <strong>Tính di động:</strong> Nếu bạn cần di chuyển hoặc làm việc từ xa thường xuyên, bạn có thể muốn xem xét các\n                PC di động như\n                laptop hoặc máy tính bảng để thuận tiện cho việc di chuyển.\n                <br>\n                <br>\n            \n                <strong>Ngân sách:</strong> Cuối cùng, xác định ngân sách của bạn và chọn một PC có giá cả phù hợp với khả năng chi\n                trả của bạn,\n                nhưng vẫn đảm bảo đáp ứng được nhu cầu công việc.\n                <br>\n                <br>\n                <i>*Lưu ý*: Trước khi quyết định mua, hãy nghiên cứu và thảo luận với các chuyên gia hoặc người có kinh nghiệm trong\n                    lĩnh vực\n                    công việc của bạn để đảm bảo bạn chọn được PC phù hợp nhất.</i>', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, ''),
(9, 3, 9, 'Chọn keo tản nhiệt phù hợp với CPU', '<h1>Khi chọn keo tản nhiệt cho CPU của bạn, có một số yếu tố mà bạn nên xem xét:</h1>\n\n                <strong>Loại CPU:</strong> Một số loại CPU có yêu cầu cụ thể về keo tản nhiệt. Ví dụ, các CPU Intel và AMD có thể\n                yêu cầu các loại\n                keo tản nhiệt khác nhau.\n            \n                <strong>Cấu trúc và kích thước của case:</strong> Kích thước của keo tản nhiệt cần phải phù hợp với cấu trúc và kích\n                thước của case\n                máy tính của bạn. Đảm bảo rằng keo tản nhiệt bạn chọn có thể lắp đặt vào case một cách thoải mái và không gây cản\n                trở cho các linh kiện khác.\n            \n                <strong>Hiệu suất tản nhiệt:</strong> Đánh giá hiệu suất tản nhiệt của keo dựa trên nhu cầu của CPU của bạn. Nếu bạn\n                sử dụng CPU với\n                yêu cầu cao, như làm việc đồ họa hoặc chơi game, bạn cần một keo có khả năng tản nhiệt tốt và hiệu quả.\n            \n                <strong>Tiếng ồn:</strong> Một yếu tố quan trọng khác là mức độ tiếng ồn của keo tản nhiệt. Một số keo có thể phát\n                ra tiếng ồn đáng\n                kể khi hoạt động, điều này có thể làm giảm trải nghiệm làm việc hoặc giải trí của bạn. Hãy chọn một keo tản nhiệt có\n                cấu trúc và thiết kế để giảm tiếng ồn.\n            \n                <strong>Ngân sách:</strong> Cuối cùng, xem xét ngân sách của bạn. Keo tản nhiệt có thể có mức giá khác nhau tùy\n                thuộc vào thương\n                hiệu, hiệu suất, và tính năng bổ sung như đèn LED.\n            \n                <strong>Đánh giá và đánh giá từ người dùng:</strong> Trước khi mua, nên đọc các đánh giá và đánh giá từ người dùng\n                khác để hiểu rõ\n                hơn về hiệu suất, độ tin cậy và tính năng của keo tản nhiệt.\n            \n                <strong>Thương hiệu và chất lượng:</strong> Chọn các thương hiệu nổi tiếng và được tin cậy trong lĩnh vực keo tản\n                nhiệt. Các thương\n                hiệu như Noctua, Cooler Master, Corsair, và Arctic đều là những lựa chọn phổ biến với nhiều mô hình và tính năng\n                khác nhau.\n            \n                <i>*Lưu ý*: Nhớ kiểm tra sự tương thích của keo tản nhiệt với CPU của bạn trước khi mua để đảm bảo rằng nó sẽ hoạt\n                    động hiệu quả\n                    và không gây hỏng hóc cho hệ thống của bạn.</i>', 1, '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `id_parent`) VALUES
(1, 'Thời trang', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(2, 'Quần', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(3, 'Áo', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(4, 'Điện tử', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(5, 'Máy tính', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(6, 'Laptop', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(7, 'Làm đẹp', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(8, 'Son', NULL, 1, '2024-02-23 01:10:00', NULL, NULL),
(9, 'Phấn má hồng', NULL, 1, '2024-02-23 01:10:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories_blog`
--

CREATE TABLE `categories_blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_store` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories_blog`
--

INSERT INTO `categories_blog` (`id`, `id_store`, `name`, `description`, `status`, `created_at`, `updated_at`, `parent_id`, `deleted_at`, `slug`) VALUES
(1, 3, 'Áo croptop', 'Cách chọn áo croptop phù hợp', 1, '2024-02-23 01:10:00', NULL, 1, NULL, 'ao-croptop'),
(2, 1, 'Quần jeans', 'Cách chọn quần jeans phù hợp', 1, '2024-02-23 01:10:00', NULL, 1, NULL, 'quan-jeans'),
(3, 2, 'Áo sơ mi', 'Cách chọn áo sơ mi phù hợp', 0, '2024-02-23 01:10:00', NULL, 1, NULL, 'ao-so-mi'),
(4, 2, 'Son', 'Cách chọn son phù hợp', 1, '2024-02-23 01:10:00', NULL, 1, NULL, 'son'),
(5, 3, 'Phấn má hồng', 'Cách chọn phấn má hồng phù hợp', 1, '2024-02-23 01:10:00', NULL, 1, NULL, 'phan-ma-hong'),
(6, 3, 'Sơn móng tay', 'Cách chọn sơn móng tay phù hợp', 0, '2024-02-23 01:10:00', NULL, 1, NULL, 'son-mong-tay'),
(7, 1, 'Laptop', 'Cách chọn Laptop', 1, '2024-02-23 01:10:00', NULL, 1, NULL, 'laptop'),
(8, 1, 'Chọn PC', 'Cách chọn PC', 1, '2024-02-23 01:10:00', NULL, 1, NULL, 'chon-pc'),
(9, 1, 'Keo tản nhiệt', 'Cách chọn keo tản nhiệt', 1, '2024-02-23 01:10:00', NULL, 1, NULL, 'keo-tan-nhiet'),
(10, 1, 'Phúc Nuyễn Hoàng', '12', 1, '2024-03-23 01:56:12', '2024-03-23 01:56:12', NULL, NULL, 'phuc-nuyen-hoang'),
(11, 1, 'Phúc Nuyễn Hoàng', NULL, 1, '2024-03-23 01:56:19', '2024-03-23 01:56:19', 10, NULL, 'phuc-nuyen-hoang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_store` int(10) UNSIGNED NOT NULL,
  `id_room` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `id_product`, `id_user`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 7, 'ẤD', 1, '2024-03-31 03:43:49', '2024-03-31 03:43:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `consignees`
--

CREATE TABLE `consignees` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `discount_value` double(8,2) NOT NULL,
  `is_percent` tinyint(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `appplicable_products` text NOT NULL,
  `appplicable_categories` text NOT NULL,
  `min_order_value` double(8,2) NOT NULL,
  `maximum_distance` double(8,2) NOT NULL,
  `user_rank` tinyint(4) NOT NULL,
  `other_conditions` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_stores` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_store` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `is_follow` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `follows`
--

INSERT INTO `follows` (`id`, `id_store`, `id_user`, `is_follow`, `created_at`, `updated_at`) VALUES
(1, 3, 6, 1, '2024-02-23 01:10:00', NULL),
(2, 1, 6, 1, '2024-02-23 01:10:00', NULL),
(3, 1, 2, 1, '2024-02-23 01:10:00', NULL),
(4, 3, 8, 1, '2024-02-23 01:10:00', NULL),
(5, 3, 6, 1, '2024-02-23 01:10:00', NULL),
(6, 1, 6, 1, '2024-02-23 01:10:00', NULL),
(7, 1, 1, 1, '2024-02-23 01:10:00', NULL),
(8, 1, 3, 1, '2024-02-23 01:10:00', NULL),
(9, 1, 7, 1, '2024-02-23 01:10:00', NULL),
(10, 3, 2, 1, '2024-02-23 01:10:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `is_like` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `id_product`, `id_user`, `is_like`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, '2024-02-23 01:10:00', NULL),
(2, 13, 7, 1, '2024-02-23 01:10:00', NULL),
(3, 12, 6, 1, '2024-02-23 01:10:00', NULL),
(4, 14, 4, 1, '2024-02-23 01:10:00', NULL),
(5, 14, 9, 1, '2024-02-23 01:10:00', NULL),
(6, 11, 2, 1, '2024-02-23 01:10:00', NULL),
(7, 15, 2, 1, '2024-02-23 01:10:00', NULL),
(8, 17, 2, 1, '2024-02-23 01:10:00', NULL),
(9, 20, 2, 1, '2024-02-23 01:10:00', NULL),
(10, 3, 8, 1, '2024-02-23 01:10:00', NULL),
(11, 5, 7, 1, '2024-02-23 01:10:00', NULL),
(12, 19, 2, 1, '2024-02-23 01:10:00', NULL),
(13, 9, 4, 1, '2024-02-23 01:10:00', NULL),
(14, 10, 6, 1, '2024-02-23 01:10:00', NULL),
(15, 4, 3, 1, '2024-02-23 01:10:00', NULL),
(16, 4, 1, 1, '2024-02-23 01:10:00', NULL),
(17, 8, 5, 1, '2024-02-23 01:10:00', NULL),
(18, 20, 11, 1, '2024-02-23 01:10:00', NULL),
(19, 13, 4, 1, '2024-02-23 01:10:00', NULL),
(20, 11, 7, 1, '2024-02-23 01:10:00', NULL),
(21, 9, 1, 1, '2024-02-23 01:10:00', NULL),
(22, 19, 2, 1, '2024-02-23 01:10:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_02_03_042726_users', 1),
(4, '2024_02_03_042812_stores', 1),
(5, '2024_02_03_042903_categories_blog', 1),
(6, '2024_02_03_044114_blogs', 1),
(7, '2024_02_03_044154_rooms', 1),
(8, '2024_02_03_044215_chats', 1),
(9, '2024_02_03_044237_consignees', 1),
(10, '2024_02_03_044327_pays', 1),
(11, '2024_02_03_044353_follows', 1),
(12, '2024_02_03_044428_orders', 1),
(13, '2024_02_03_044454_categories', 1),
(14, '2024_02_03_044528_products', 1),
(15, '2024_02_03_044554_comments', 1),
(16, '2024_02_03_044615_likes', 1),
(17, '2024_02_03_044636_product_variations', 1),
(18, '2024_02_03_044701_order_details', 1),
(19, '2024_02_03_044729_notifications', 1),
(20, '2024_02_03_044749_discounts', 1),
(21, '2024_02_23_085223_add_colmun_stores', 1),
(22, '2024_02_25_092119_add_collumn_2_sotre', 1),
(23, '2024_02_28_103520_create_column_address', 1),
(24, '2024_03_02_080725_add_colmun_category_blog', 1),
(25, '2024_03_07_095959_add_slug_category_blog', 1),
(26, '2024_03_13_141927_add-col-blog', 1),
(27, '2024_03_15_163038_add-column-store', 1),
(28, '2024_03_20_021805_add-column-payment', 1),
(29, '2024_03_20_022504_add-column-notifications', 1),
(30, '2024_03_23_090930_add-col-category-product', 2),
(31, '2024_03_23_101850_add-coll-product', 3),
(32, '2024_03_27_073254_add_custom_product', 4),
(33, '2024_03_29_080651_add_col_products', 5),
(34, '2024_04_01_085409_add-col-blog-description', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `rank_user` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pay` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_store` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product_variation` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pays`
--

CREATE TABLE `pays` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pays`
--

INSERT INTO `pays` (`id`, `id_user`, `name`, `number`, `created_at`, `updated_at`, `bank`) VALUES
(1, 4, 'Lê Thành Đạt', '3948571029', '2024-02-23 01:10:00', NULL, 'Vietcombank'),
(2, 11, 'Nguyễn Phương Hùng', '9284745682', '2024-02-23 01:10:00', NULL, 'Agricbank'),
(3, 7, 'Đinh Thị Ngọc Linh', '9485672784892', '2024-02-23 01:10:00', NULL, 'Namabank'),
(4, 3, 'Nguyễn Đỗ Quốc Trung', '4576312341234', '2024-02-23 01:10:00', NULL, 'Vietinbank'),
(5, 9, 'Lê Thị Ngọc Hà', '3567451234123', '2024-02-23 01:10:00', NULL, 'Vietinbank'),
(6, 5, 'Thiên Kim Đại Tiểu Thư', '345634512341237', '2024-02-23 01:10:00', NULL, 'Vietinbank'),
(7, 1, 'Phan Đinh Tuyền', '2345476851234', '2024-02-23 01:10:00', NULL, 'Vietinbank'),
(8, 6, 'Võ Hoàng Trung', '12344576813', '2024-02-23 01:10:00', NULL, 'Vietinbank'),
(9, 6, 'Nguyễn Hoàng Hà', '546781234523', '2024-02-23 01:10:00', NULL, 'Vietinbank'),
(10, 1, 'Lê Thị Toàn', '4568741324123', '2024-02-23 01:10:00', NULL, 'Vietinbank');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_store` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` date NOT NULL,
  `update_date` date DEFAULT NULL,
  `banner` text NOT NULL,
  `view_count` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_arr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image_arr`)),
  `quantity` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_store`, `id_category`, `name`, `description`, `status`, `create_date`, `update_date`, `banner`, `view_count`, `created_at`, `updated_at`, `deleted_at`, `image_arr`, `quantity`, `price`) VALUES
(1, 3, 9, 'Áo sơ mi', '<h1>Giới thiệu Áo Sơ Mi Classic đa màu sắc</h1>\n\n                <h2>Chào mừng bạn đến với dòng sản phẩm Áo Sơ Mi Classic của chúng tôi - một sự kết hợp hoàn hảo giữa phong cách\n                    thanh\n                    lịch và sự thoải mái. Với một loạt các màu sắc đa dạng, sản phẩm này sẽ chắc chắn là sự lựa chọn hoàn hảo cho\n                    bất kỳ\n                    dịp nào.</h2>\n\n                <h3>Đặc điểm nổi bật:</h3>\n                <strong>Thiết kế Đa Dạng:</strong> Áo Sơ Mi Classic của chúng tôi được thiết kế với sự chú ý đặc biệt vào chi tiết\n                và chất liệu. Sản\n                phẩm có sẵn trong ba màu sắc phổ biến: Trắng, Xanh Navy, và Đen - cung cấp cho bạn nhiều sự lựa chọn để phù hợp với\n                phong cách của riêng bạn.\n                <br>\n                <br>\n                <strong>Chất Liệu Chất Lượng Cao:</strong> Chúng tôi sử dụng các loại vải cao cấp như cotton và linen để tạo ra các\n                chiếc áo sơ mi\n                mềm mại, thoáng khí và dễ chịu. Bạn sẽ cảm nhận được sự thoải mái ngay từ lần đầu tiên mặc.\n                <br>\n                <br>\n\n                <strong>Phong Cách Truyền Thống:</strong> Với kiểu dáng cổ điển và đường may tỉ mỉ, áo sơ mi của chúng tôi phản ánh\n                sự lịch lãm và\n                thanh lịch. Dù bạn đang đi làm, dự sự kiện hoặc đi chơi cùng bạn bè, sản phẩm này sẽ làm tôn lên vẻ đẹp của bạn.\n                <br>\n                <br>\n\n                <strong>Dễ Kết Hợp:</strong> Áo Sơ Mi Classic của chúng tôi dễ dàng kết hợp với nhiều loại quần áo khác nhau. Kết\n                hợp với quần âu,\n                quần jeans hoặc chinos - bạn sẽ luôn trông lịch lãm và phong độ.\n                <br>\n                <br>\n\n                <strong>Kích Thước Phù Hợp:</strong> Sản phẩm có sẵn trong nhiều kích thước khác nhau, từ XS đến XXL, giúp bạn có\n                thể tìm được chiếc\n                áo phù hợp với hình dáng cơ thể của mình.\n                <br>\n                <br>\n\n                <i>Hãy trải nghiệm sự thoải mái và phong cách cùng Áo Sơ Mi Classic của chúng tôi. Đừng bỏ lỡ cơ hội sở hữu sản phẩm\n                    chất lượng này để thêm vào tủ đồ của bạn!</i>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 243801, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(2, 2, 2, 'Quần jeans', '<h1>Quần Jeans Màu Xanh</h1>\n                <h2>Bạn đang tìm kiếm một chiếc quần jeans vừa vặn và phong cách? Quần jeans màu xanh của chúng tôi là sự lựa chọn\n                    hoàn\n                    hảo cho bạn.</h2>\n\n                <h3>Đặc Điểm Sản Phẩm:</h3>\n                <strong> Màu Sắc:</strong> Xanh\n                <br>\n                <strong>Size:</strong> S, M, L\n                <br>\n                <strong>Chất Liệu:</strong> Vải jeans cao cấp, thoáng mát và thoải mái.\n                <br>\n                <strong>Kiểu Dáng:</strong> Slim fit, vừa vặn và thoải mái.\n                <br>\n                Thông Tin Kích Cỡ:<br>\n                <strong>Size S:</strong> 28-30 inch (Vòng eo)<br>\n                <strong>Size M:</strong> 31-33 inch (Vòng eo)<br>\n                <strong>Size L:</strong> 34-36 inch (Vòng eo)<br>\n                <strong>Ưu Điểm:</strong><br>\n                Thiết kế đơn giản nhưng không kém phần thời trang.<br>\n                Đường may chắc chắn, bền bỉ.<br>\n                Dễ dàng kết hợp với nhiều loại áo phông, áo sơ mi.<br>\n                <strong>Giá:</strong> Đặt hàng ngay<br>\n                <i>Sở hữu ngay chiếc quần jeans màu xanh này để tạo ra những trải nghiệm thời trang thú vị và đầy phong cách!</i>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 139547, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(3, 2, 6, 'Áo thun con mèo', ' <h1>Áo Thun Con Mèo - Phong Cách Đáng Yêu và Thời Trang</h1>\n                <h4>Bạn đang tìm kiếm một chiếc áo thun đáng yêu và phong cách? Áo thun con mèo của chúng tôi sẽ là sự lựa chọn hoàn\n                    hảo\n                    cho bạn! Với thiết kế độc đáo, chất liệu thoáng mát và sự thoải mái, chiếc áo thun này sẽ làm bạn nổi bật trong\n                    mọi\n                    dịp.</h4>\n\n                <h3>Đặc Điểm Nổi Bật:</h3>\n                <strong>Thiết Kế Con Mèo Dễ Thương:</strong> Với hình ảnh con mèo tinh nghịch được in trên ngực áo, chiếc áo thun\n                mang lại vẻ đáng\n                yêu và cá tính riêng biệt cho phong cách của bạn.\n                <br>\n                <strong>Chất Liệu Chất Lượng:</strong> Áo được làm từ chất liệu cotton cao cấp, đảm bảo cảm giác thoải mái và mềm\n                mại cho da.\n                <br>\n                <strong>Size Đa Dạng:</strong> Áo thun con mèo của chúng tôi có sẵn trong 3 size: S, M, L, giúp bạn dễ dàng lựa chọn\n                kích cỡ phù hợp\n                với hình dáng cơ thể của mình.\n                <br>\n                <strong>Màu Sắc Phong Phú:</strong> Chọn từ ba màu sắc đa dạng: trắng tinh khôi, đen bí ẩn và hồng ngọt ngào, bạn có\n                thể dễ dàng phối\n                hợp với nhiều trang phục khác nhau.\n                <br>\n                <strong>Phù Hợp Cho Mọi Dịp:</strong> Đi làm, dạo phố cùng bạn bè, hoặc thậm chí là khi nghỉ ngơi tại nhà, chiếc áo\n                thun con mèo sẽ\n                làm cho phong cách của bạn trở nên nổi bật và cá tính.\n                <br>\n                <h3 style=\"color: red;\">Hãy Mua Ngay!</h3>\n                <i>Đừng bỏ lỡ cơ hội sở hữu chiếc áo thun con mèo phong cách này. Hãy tạo nên phong cách riêng của bạn với chiếc áo\n                    thun độc đáo này. Đặt hàng ngay hôm nay và thêm nó vào bộ sưu tập thời trang của bạn!</i>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 19319, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(4, 3, 9, 'Áo croptop đáng yêu', ' <h3>Áo Croptop Đáng Yêu - Phong Cách Mới Mẻ và Tươi Trẻ</h3>\n                <p>Bạn muốn thêm sự tươi trẻ và phong cách mới mẻ vào tủ đồ của mình? Hãy đón nhận chiếc áo croptop đáng yêu của\n                    chúng tôi! Với thiết kế năng động và màu sắc tươi sáng, chiếc áo croptop này sẽ làm nổi bật phong cách của\n                    bạn trong mọi dịp.</p>\n                <h4>Đặc Điểm Nổi Bật:</h4>\n                <ol>\n                    <li>\n                        <p><strong>Thiết Kế Croptop Độc Đáo:</strong> Với kiểu dáng croptop ngắn cùng với các chi tiết đáng yêu,\n                            chiếc áo này sẽ giúp bạn tự tin và nổi bật ở mọi nơi.</p>\n                    </li>\n                    <li>\n                        <p><strong>Chất Liệu Chất Lượng:</strong> Áo được làm từ chất liệu cotton cao cấp, giúp thoáng mát và\n                            thoải mái cho cơ thể.</p>\n                    </li>\n                    <li>\n                        <p><strong>Size Đa Dạng:</strong> Áo croptop của chúng tôi có sẵn trong 3 size: S, M, L, phù hợp với mọi\n                            hình dáng cơ thể.</p>\n                    </li>\n                    <li>\n                        <p><strong>Màu Sắc Phong Phú:</strong> Chọn từ ba màu sắc tươi sáng: hồng ngọt ngào, xanh aqua sôi động\n                            và đen bí ẩn, để tạo điểm nhấn cho phong cách của bạn.</p>\n                    </li>\n                    <li>\n                        <p><strong>Dễ Phối Hợp:</strong> Áo croptop dễ dàng phối hợp với nhiều loại quần áo khác nhau, từ quần\n                            jeans đến chân váy hoặc quần short.</p>\n                    </li>\n                    <li>\n                        <p><strong>Phù Hợp Cho Mọi Dịp:</strong> Từ dạo phố cùng bạn bè đến dự tiệc cuối tuần hay thậm chí là\n                            một buổi hẹn hò, áo croptop sẽ là lựa chọn hoàn hảo cho bạn.</p>\n                    </li>\n                </ol>\n                <h4>Hãy Mua Ngay!</h4>\n                <p>Đừng bỏ lỡ cơ hội sở hữu chiếc áo croptop đáng yêu này. Hãy thêm sự mới mẻ và tươi trẻ vào tủ đồ của bạn với\n                    chiếc áo croptop thời trang này. Đặt hàng ngay hôm nay và tạo nên phong cách riêng của bạn!</p>\n                <hr>\n                <p>Bạn có thể điều chỉnh và thêm bớt các điểm mạnh và đặc điểm sản phẩm tùy thuộc vào nhu cầu và phong cách của\n                    sản phẩm của bạn.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 535511, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(5, 1, 7, 'Quần thể thao', '<h3>Quần Thể Thao - Sự Kết Hợp Hoàn Hảo Giữa Phong Cách và Sự Thoải Mái</h3>\n                <p>Bạn đang tìm kiếm một chiếc quần thể thao vừa thời trang vừa thoải mái cho các hoạt động thể chất hàng ngày?\n                    Quần thể thao của chúng tôi sẽ là sự lựa chọn hoàn hảo cho bạn! Với thiết kế đơn giản nhưng vẫn đầy phong\n                    cách, và chất liệu thoáng mát, chiếc quần này sẽ làm bạn cảm thấy tự tin và thoải mái trong mọi tình huống.\n                </p>\n                <h4>Đặc Điểm Nổi Bật:</h4>\n                <ol>\n                    <li>\n                        <p><strong>Thiết Kế Thể Thao Tiện Dụng:</strong> Với kiểu dáng thoải mái và linh hoạt, chiếc quần này là\n                            sự kết hợp hoàn hảo giữa phong cách thể thao và sự thoải mái hàng ngày.</p>\n                    </li>\n                    <li>\n                        <p><strong>Chất Liệu Chất Lượng:</strong> Quần được làm từ vải cotton cao cấp, thoáng mát và mềm mại,\n                            giúp bạn cảm thấy thoải mái suốt cả ngày dài.</p>\n                    </li>\n                    <li>\n                        <p><strong>Size Đa Dạng:</strong> Quần thể thao của chúng tôi có sẵn trong 3 size: S, M, L, phù hợp với\n                            mọi hình dáng cơ thể.</p>\n                    </li>\n                    <li>\n                        <p><strong>Màu Sắc Phong Phú:</strong> Chọn từ ba màu sắc đa dạng: hồng nữ tính, xanh aqua tươi sáng và\n                            đen bí ẩn, bạn có thể dễ dàng phối hợp với các trang phục thể thao hoặc hàng ngày khác nhau.</p>\n                    </li>\n                    <li>\n                        <p><strong>Đa Dạng Các Hoạt Động:</strong> Phù hợp cho mọi hoạt động, từ yoga và gym đến jogging và thậm\n                            chí là dạo chơi cùng bạn bè.</p>\n                    </li>\n                </ol>\n                <h4>Hãy Mua Ngay!</h4>\n                <p>Đừng chần chừ! Hãy thêm chiếc quần thể thao đa năng này vào tủ đồ của bạn ngay hôm nay. Đặt hàng ngay bây giờ\n                    để trải nghiệm sự thoải mái và phong cách mà sản phẩm mang lại!</p>\n                <hr>\n                <p>Bạn có thể tùy chỉnh và bổ sung thêm các điểm mạnh và đặc điểm của sản phẩm tùy thuộc vào nhu cầu và phong\n                    cách của sản phẩm của bạn.</p>', 0, '2024-02-23', NULL, 'uploads/products/NwZ61711955663.jpeg', 333219, '2024-02-23 01:10:00', '2024-04-01 00:14:23', NULL, NULL, NULL, NULL),
(6, 1, 7, 'Asus gaming tuf f15 fx506lh', ' <h3>ASUS Gaming TUF F15 FX506LH: Sức Mạnh và Độ Bền Cho Trải Nghiệm Gaming Hấp Dẫn</h3>\n                <h4>Thiết Kế Mạnh Mẽ và Cứng Cỏi:</h4>\n                <p>ASUS Gaming TUF F15 FX506LH là một trong những dòng laptop gaming hàng đầu của ASUS, nổi bật với thiết kế\n                    mạnh mẽ và cứng cỏi, đem lại trải nghiệm gaming tuyệt vời và độ bền bỉ vượt trội.</p>\n                <h4>Hiệu Năng Vượt Trội:</h4>\n                <p>Được trang bị bộ vi xử lý Intel Core thế hệ mới nhất cùng với card đồ họa NVIDIA GeForce GTX, ASUS Gaming TUF\n                    F15 FX506LH mang đến hiệu năng vượt trội, đảm bảo bạn có thể chơi mọi tựa game yêu thích mà không gặp trở\n                    ngại.</p>\n                <h4>Màn Hình Chất Lượng:</h4>\n                <p>Màn hình Full HD với tốc độ làm mới cao giúp tái hiện hình ảnh sắc nét, sống động, đồng thời giảm thiểu hiện\n                    tượng nhòe và giật lag, mang đến trải nghiệm hình ảnh mượt mà và chân thực nhất.</p>\n                <h4>Thiết Kế Ergonomic:</h4>\n                <p>Với bàn phím chiếu sáng RGB và thiết kế ergonomic, ASUS Gaming TUF F15 FX506LH không chỉ giúp người dùng dễ\n                    dàng thực hiện các thao tác gaming mà còn đảm bảo cảm giác thoải mái và không mỏi tay trong thời gian dài sử\n                    dụng.</p>\n                <h4>Khả Năng Tản Nhiệt Hiệu Quả:</h4>\n                <p>Hệ thống tản nhiệt kép của ASUS với các quạt nhiệt động và các ống dẫn nhiệt đồng bộ được tối ưu hóa, giúp\n                    duy trì nhiệt độ ổn định và hiệu quả, giảm nguy cơ quá nhiệt và tăng hiệu suất cho laptop.</p>\n                <h4>Các Tính Năng Tiện Ích:</h4>\n                <p>ASUS Gaming TUF F15 FX506LH còn được trang bị nhiều tính năng tiện ích như cổng kết nối đa dạng, hệ thống âm\n                    thanh chất lượng cao, và công nghệ truyền dẫn dữ liệu nhanh chóng.</p>\n                <h4>Kết Luận:</h4>\n                <p>Tổng quan, ASUS Gaming TUF F15 FX506LH là sự lựa chọn lý tưởng cho những game thủ đam mê game và cần một\n                    chiếc laptop mạnh mẽ, bền bỉ và đáng tin cậy.</p>\n                <hr>\n                <p>Thông tin trên giúp bạn hiểu rõ hơn về laptop ASUS Gaming TUF F15 FX506LH và những tính năng nổi bật của nó\n                    trong trải nghiệm gaming và công việc hàng ngày.</p>', 0, '2024-02-23', NULL, 'uploads/products/UMOd1711956010.jpeg', 175254, '2024-02-23 01:10:00', '2024-04-01 00:20:10', NULL, NULL, NULL, NULL),
(7, 1, 4, 'Dell vostro 14 3000', '<p>Dell Vostro 14 3000 là một trong những dòng laptop doanh nhân phổ thông của Dell, được thiết kế để đáp ứng\n                nhu cầu công việc hàng ngày của người dùng văn phòng và doanh nghiệp nhỏ. Dưới đây là một số điểm nổi bật và\n                thông tin chính về Dell Vostro 14 3000:</p>\n            <h3>1. Thiết Kế Mỏng Nhẹ và Tinh Tế:</h3>\n            <p>Dell Vostro 14 3000 có thiết kế mỏng nhẹ và tinh tế, với trọng lượng nhẹ giúp bạn dễ dàng mang theo bên mình\n                khi di chuyển.</p>\n            <h3>2. Hiệu Năng Đáng Tin Cậy:</h3>\n            <p>Với bộ vi xử lý Intel Core thế hệ mới nhất và tùy chọn card đồ họa tích hợp, Dell Vostro 14 3000 cung cấp\n                hiệu suất đáng tin cậy cho các tác vụ văn phòng cơ bản và đa nhiệm hợp lý.</p>\n            <h3>3. Màn Hình Chất Lượng:</h3>\n            <p>Màn hình của Dell Vostro 14 3000 có kích thước 14 inch, độ phân giải cao, mang lại hình ảnh sắc nét và màu\n                sắc sống động trong quá trình làm việc và giải trí.</p>\n            <h3>4. Bảo Mật và An Toàn:</h3>\n            <p>Dell Vostro 14 3000 đi kèm với các tính năng bảo mật như cảm biến vân tay và TPM (Trusted Platform Module),\n                giúp bảo vệ dữ liệu quan trọng của bạn khỏi các mối đe dọa trực tuyến.</p>\n            <h3>5. Tính Linh Hoạt và Kết Nối:</h3>\n            <p>Laptop này được trang bị đầy đủ các cổng kết nối như USB, HDMI và khe cắm thẻ nhớ, giúp bạn dễ dàng kết nối\n                với các thiết bị ngoại vi và máy chiếu.</p>\n            <h3>6. Hiệu Quả Pin:</h3>\n            <p>Pin của Dell Vostro 14 3000 cho phép sử dụng lâu dài trong một lần sạc, giúp bạn tăng cường năng suất mà\n                không cần lo lắng về việc sạc pin thường xuyên.</p>\n            <p>Dell Vostro 14 3000 là một lựa chọn phù hợp cho những người dùng doanh nhân và văn phòng, cung cấp hiệu suất\n                ổn định, tính linh hoạt và sự đáng tin cậy trong một thiết kế mỏng nhẹ và tiện lợi.</p>', 0, '2024-02-23', NULL, 'uploads/products/wGr31711956118.jpeg', 464325, '2024-02-23 01:10:00', '2024-04-01 00:21:58', NULL, NULL, NULL, NULL),
(8, 1, 7, 'Laptop HP VICTUS 15-fa1155TX 952R1PA', '<h3>Laptop HP VICTUS 15-fa1155TX 952R1PA: Sức Mạnh và Độ Bền Cho Trải Nghiệm Gaming Chuyên Nghiệp</h3>\n                <h4>Hiệu Suất Mạnh Mẽ:</h4>\n                <p>Laptop HP VICTUS 15-fa1155TX 952R1PA là một lựa chọn lý tưởng cho những game thủ đam mê trò chơi nặng.\n                    Được trang bị bộ vi xử lý Intel Core i7 thế hệ mới nhất và card đồ họa NVIDIA GeForce RTX, máy đảm bảo\n                    mang lại hiệu suất vượt trội trong mọi trò chơi.</p>\n                <h4>Màn Hình Chất Lượng:</h4>\n                <p>Màn hình Full HD 15.6 inch của HP VICTUS 15-fa1155TX 952R1PA tái tạo màu sắc sắc nét và chân thực, giúp\n                    bạn tận hưởng trải nghiệm gaming đỉnh cao và xem phim sống động.</p>\n                <h4>Thiết Kế Cứng Cỏi:</h4>\n                <p>Với thiết kế cứng cỏi và chắc chắn, HP VICTUS 15-fa1155TX 952R1PA không chỉ giúp bảo vệ các linh kiện bên\n                    trong mà còn tạo nên sự sang trọng và chuyên nghiệp.</p>\n                <h4>Bàn Phím Gaming:</h4>\n                <p>Bàn phím của máy được thiết kế dành riêng cho game thủ, với các phím bấm chắc chắn và đèn nền RGB điều\n                    chỉnh được, giúp bạn dễ dàng thực hiện các thao tác trong trò chơi.</p>\n                <h4>Khả Năng Tản Nhiệt Hiệu Quả:</h4>\n                <p>Hệ thống tản nhiệt hiệu quả của HP VICTUS 15-fa1155TX 952R1PA giúp duy trì nhiệt độ ổn định trong suốt\n                    quá trình sử dụng, đảm bảo hiệu suất cao và trải nghiệm chơi game mượt mà.</p>\n                <h4>Kết Nối Đa Dạng:</h4>\n                <p>Laptop này đi kèm với nhiều cổng kết nối như USB, HDMI và khe cắm thẻ nhớ, giúp bạn dễ dàng kết nối với\n                    các thiết bị ngoại vi và màn hình phụ.</p>\n                <h4>Kết Luận:</h4>\n                <p>Tổng quan, Laptop HP VICTUS 15-fa1155TX 952R1PA là sự kết hợp hoàn hảo giữa sức mạnh, độ bền và hiệu\n                    suất, là lựa chọn không thể bỏ qua cho những game thủ chuyên nghiệp và người dùng cần một chiếc laptop\n                    mạnh mẽ và đa dụng.</p>', 1, '2024-02-23', NULL, 'uploads/products/wLbq1711956169.jpeg', 403781, '2024-02-23 01:10:00', '2024-04-01 00:22:49', NULL, NULL, NULL, NULL),
(9, 1, 9, 'PC Intel i3-12100F/ VGA GTX 1650', '<h3>PC Intel i3-12100F / VGA GTX 1650: Sức Mạnh và Hiệu Năng Cho Trải Nghiệm Gaming và Công Việc</h3>\n                <h4>Hiệu Suất Ưu Việt:</h4>\n                <p>PC Intel i3-12100F với card đồ họa GTX 1650 là một giải pháp hiệu quả cho những người dùng muốn trải nghiệm\n                    gaming cũng như làm việc văn phòng một cách mượt mà và hiệu quả.</p>\n                <h4>Bộ Vi Xử Lý Mạnh Mẽ:</h4>\n                <p>Với bộ vi xử lý Intel i3-12100F, máy tính này cung cấp hiệu suất ổn định và đáng tin cậy trong việc xử lý các\n                    tác vụ hàng ngày, từ lướt web cho đến xem video và làm việc với các ứng dụng văn phòng.</p>\n                <h4>Card Đồ Họa GTX 1650:</h4>\n                <p>Card đồ họa GTX 1650 được biết đến với hiệu suất đồ họa tốt và khả năng xử lý game ở mức độ trung bình đến\n                    cao. Với card đồ họa này, bạn có thể trải nghiệm các tựa game phổ biến và một số ứng dụng đồ họa cơ bản một\n                    cách mượt mà.</p>\n                <h4>Bộ Nhớ RAM:</h4>\n                <p>PC này thường được trang bị một lượng RAM phù hợp, đủ để xử lý nhiều tác vụ một cách mượt mà và hiệu quả.\n                    Việc nâng cấp RAM có thể được thực hiện để tăng hiệu suất cho máy tính.</p>\n                <h4>Bộ Vỏ Máy Tiện Lợi:</h4>\n                <p>Với thiết kế bộ vỏ máy tiện lợi và dễ dàng lắp ráp, bạn có thể dễ dàng thay đổi và nâng cấp linh kiện bên\n                    trong máy tính một cách linh hoạt và thuận tiện.</p>\n                <h4>Kết Luận:</h4>\n                <p>PC Intel i3-12100F / VGA GTX 1650 là một lựa chọn lý tưởng cho những người dùng cần một máy tính với hiệu\n                    suất đủ mạnh mẽ để xử lý các tác vụ hàng ngày và trải nghiệm gaming ở mức độ trung bình đến cao một cách\n                    mượt mà và ổn định.</p>\n                <hr>\n                <p>Thông tin trên giúp bạn hiểu rõ hơn về PC Intel i3-12100F và card đồ họa GTX 1650, cũng như sức mạnh và tính\n                    linh hoạt của nó trong các tác vụ hàng ngày và trải nghiệm gaming.</p>', 1, '2024-02-23', NULL, 'uploads/products/NEyO1711956364.jpeg', 794641, '2024-02-23 01:10:00', '2024-04-01 00:26:04', NULL, NULL, NULL, NULL),
(10, 3, 1, 'PC AMD R5-5600X/ VGA RX 6600', '   <h3>PC AMD R5-5600X / VGA RX 6600: Sức Mạnh và Hiệu Năng Cho Trải Nghiệm Gaming Cao Cấp</h3>\n                <h4>Hiệu Suất Đỉnh Cao:</h4>\n                <p>PC AMD R5-5600X với card đồ họa RX 6600 là sự kết hợp hoàn hảo giữa bộ vi xử lý mạnh mẽ và card đồ họa hiện\n                    đại, đem lại trải nghiệm gaming mượt mà và đỉnh cao.</p>\n                <h4>Bộ Vi Xử Lý AMD R5-5600X:</h4>\n                <p>Với bộ vi xử lý AMD Ryzen 5 5600X, máy tính này cung cấp hiệu suất đa nhiệm mạnh mẽ và xử lý đa luồng, đảm\n                    bảo bạn có thể thực hiện nhiều tác vụ đồng thời một cách mượt mà và hiệu quả.</p>\n                <h4>Card Đồ Họa RX 6600:</h4>\n                <p>Card đồ họa RX 6600 của AMD là một lựa chọn tuyệt vời cho trải nghiệm gaming cao cấp. Với hiệu suất đồ họa\n                    mạnh mẽ, bạn có thể thưởng thức các tựa game mới nhất ở độ phân giải cao và tốc độ khung hình mượt mà.</p>\n                <h4>Bộ Nhớ RAM và Lưu Trữ:</h4>\n                <p>PC này thường được trang bị một lượng RAM DDR4 cao cấp và ổ cứng SSD nhanh chóng, giúp bạn tải nhanh các ứng\n                    dụng và trải nghiệm thời gian phản ứng nhanh chóng.</p>\n                <h4>Thiết Kế Mạnh Mẽ:</h4>\n                <p>Với thiết kế bộ vỏ máy chắc chắn và hiện đại, PC AMD R5-5600X / VGA RX 6600 không chỉ mang lại sự sang trọng\n                    mà còn đảm bảo hệ thống linh hoạt và dễ dàng nâng cấp trong tương lai.</p>\n                <h4>Tản Nhiệt Hiệu Quả:</h4>\n                <p>Hệ thống tản nhiệt được cải thiện giúp duy trì nhiệt độ ổn định cho cả CPU và GPU, giảm thiểu nguy cơ quá\n                    nhiệt và đảm bảo hiệu suất máy tính được duy trì ổn định trong mọi tình huống.</p>\n                <h4>Kết Luận:</h4>\n                <p>PC AMD R5-5600X / VGA RX 6600 là sự lựa chọn tuyệt vời cho những game thủ đòi hỏi hiệu suất cao và trải\n                    nghiệm gaming đỉnh cao. Với sức mạnh và tính linh hoạt, máy tính này là một đối tác đáng tin cậy cho mọi nhu\n                    cầu gaming và đa phương tiện.</p>\n                <hr>\n                <p>Thông tin trên giúp bạn hiểu rõ hơn về PC AMD R5-5600X và card đồ họa RX 6600, cũng như sức mạnh và tính linh\n                    hoạt của nó trong các trò chơi và công việc đa nhiệm.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 648040, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(11, 2, 4, 'PC Intel i5-12400F/ VGA RX 6600', '<h3>PC Intel i5-12400F / VGA RX 6600: Sức Mạnh và Hiệu Năng Cho Trải Nghiệm Gaming và Công Việc</h3>\n                <h4>Hiệu Suất Mạnh Mẽ:</h4>\n                <p>PC Intel i5-12400F với card đồ họa RX 6600 là một giải pháp đáng tin cậy cho trải nghiệm gaming và công việc\n                    đa nhiệm hàng ngày.</p>\n                <h4>Bộ Vi Xử Lý Intel i5-12400F:</h4>\n                <p>Với bộ vi xử lý Intel Core i5 thế hệ mới nhất, máy tính này cung cấp hiệu suất ổn định và đáng tin cậy trong\n                    xử lý các tác vụ văn phòng, đồ họa và gaming.</p>\n                <h4>Card Đồ Họa RX 6600:</h4>\n                <p>Card đồ họa RX 6600 của AMD là một lựa chọn tuyệt vời cho trải nghiệm gaming cao cấp. Với hiệu suất đồ họa\n                    mạnh mẽ, bạn có thể thưởng thức các tựa game mới nhất ở độ phân giải cao và tốc độ khung hình mượt mà.</p>\n                <h4>Bộ Nhớ RAM và Lưu Trữ:</h4>\n                <p>PC này thường được trang bị một lượng RAM DDR4 cao cấp và ổ cứng SSD nhanh chóng, giúp bạn tải nhanh các ứng\n                    dụng và trải nghiệm thời gian phản ứng nhanh chóng.</p>\n                <h4>Thiết Kế Linh Hoạt:</h4>\n                <p>Với thiết kế bộ vỏ máy tiện lợi và dễ dàng nâng cấp, bạn có thể tùy chỉnh và cải thiện hệ thống theo nhu cầu\n                    và sở thích của mình.</p>\n                <h4>Tản Nhiệt Hiệu Quả:</h4>\n                <p>Hệ thống tản nhiệt được cải thiện giúp duy trì nhiệt độ ổn định cho cả CPU và GPU, giảm thiểu nguy cơ quá\n                    nhiệt và đảm bảo hiệu suất máy tính được duy trì ổn định trong mọi tình huống.</p>\n                <h4>Kết Luận:</h4>\n                <p>PC Intel i5-12400F / VGA RX 6600 là một sự lựa chọn lý tưởng cho những người dùng đòi hỏi hiệu suất cao trong\n                    gaming và công việc. Với sức mạnh và tính linh hoạt, máy tính này là một đối tác đáng tin cậy cho mọi nhu\n                    cầu của bạn.</p>\n                <hr>\n                <p>Thông tin trên giúp bạn hiểu rõ hơn về PC Intel i5-12400F và card đồ họa RX 6600, cũng như sức mạnh và tính\n                    linh hoạt của nó trong các trò chơi và công việc đa nhiệm.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 175248, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(12, 2, 6, 'Son 3CE', '  <p>3CE là một thương hiệu mỹ phẩm Hàn Quốc nổi tiếng, chuyên sản xuất các sản phẩm trang điểm chất lượng cao,\n                trong đó có son môi. Dưới đây là một số điểm nổi bật và thông tin về son 3CE:</p>\n            <h3>1. Chất Lượng và Đa Dạng Màu Sắc:</h3>\n            <ul>\n                <li>\n                    <p>Son 3CE nổi tiếng với chất lượng màu sắc đậm đặc và lên màu chuẩn xác, đem lại hiệu ứng lì hoặc lấp\n                        lánh tùy thuộc vào loại son bạn chọn.</p>\n                </li>\n                <li>\n                    <p>Thương hiệu này cung cấp một loạt các gam màu phong phú, từ những màu nude tinh tế, nhẹ nhàng cho đến\n                        những màu sắc táo bạo, cá tính.</p>\n                </li>\n            </ul>\n            <h3>2. Cảm Giác Mềm Mịn:</h3>\n            <ul>\n                <li>\n                    <p>Son 3CE thường có thành phần dưỡng ẩm cao, giúp giữ cho đôi môi luôn mềm mịn và không bị khô ráp sau\n                        khi sử dụng.</p>\n                </li>\n                <li>\n                    <p>Texture của son thường rất mịn màng và dễ dàng lướt trên môi mà không gây cảm giác nặng nề.</p>\n                </li>\n            </ul>\n            <h3>3. Thiết Kế Bắt Mắt:</h3>\n            <ul>\n                <li>\n                    <p>Son 3CE thường được thiết kế với bao bì độc đáo, hiện đại và sang trọng, thu hút sự chú ý của người\n                        tiêu dùng.</p>\n                </li>\n                <li>\n                    <p>Bên cạnh đó, thiết kế dạng hũ hoặc thanh son cũng rất tiện lợi và dễ dàng mang theo bên mình.</p>\n                </li>\n            </ul>\n            <h3>4. Độ Bền Màu:</h3>\n            <ul>\n                <li>\n                    <p>Son 3CE thường có độ bám màu tốt, giữ màu trên môi trong thời gian dài mà không cần phải tốn công sửa\n                        tốn bất kỳ.</p>\n                </li>\n                <li>\n                    <p>Nhiều phiên bản của son 3CE cũng có khả năng bền màu sau khi ăn uống hoặc tiếp xúc với nước.</p>\n                </li>\n            </ul>\n            <h3>5. Đa Dạng Dòng Sản Phẩm:</h3>\n            <ul>\n                <li>3CE cung cấp nhiều dòng sản phẩm son khác nhau như Velvet Lip Tint, Matte Lip Color, Velvet Lip Stick,\n                    và dòng Lip Lacquer, mỗi dòng đều có những ưu điểm và đặc tính riêng biệt.</li>\n            </ul>\n            <p>Son 3CE thường là sự lựa chọn yêu thích của nhiều người yêu thẩm mỹ, đặc biệt là những ai yêu thích phong\n                cách trang điểm Hàn Quốc hiện đại và cá tính. Sự đa dạng về màu sắc, chất lượng và thiết kế đẹp mắt là những\n                điểm mạnh giúp son 3CE luôn nằm trong tâm trí của người tiêu dùng.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 954956, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(13, 3, 4, 'Son Dior Addict Lip Tattoo 541 Natural Sienna', ' <p>Son Dior Addict Lip Tattoo 541 Natural Sienna là một sản phẩm trang điểm môi đẳng cấp từ thương hiệu Dior,\n                một trong những nhãn hiệu mỹ phẩm cao cấp và uy tín hàng đầu trên thị trường. Dưới đây là một số điểm nổi\n                bật và thông tin về sản phẩm này:</p>\n            <h3>1. Chất Lượng và Độ Bền:</h3>\n            <ul>\n                <li>Son Dior Addict Lip Tattoo 541 Natural Sienna nổi bật với chất lượng cao cấp và độ bền màu lâu trôi.\n                    Công thức của son được thiết kế để giữ màu lên môi suốt nhiều giờ liền mà không bị phai màu.</li>\n            </ul>\n            <h3>2. Cảm Giác Nhẹ Nhàng:</h3>\n            <ul>\n                <li>Son có texture mỏng nhẹ và mịn màng, tạo cảm giác thoải mái khi đánh lên môi mà không gây cảm giác khó\n                    chịu hoặc nặng môi.</li>\n            </ul>\n            <h3>3. Màu Sắc Tự Nhiên:</h3>\n            <ul>\n                <li>Màu sắc Natural Sienna là một sắc màu tự nhiên, dễ dàng kết hợp với nhiều phong cách trang điểm khác\n                    nhau. Sắc màu này mang lại vẻ đẹp tinh tế và gợi cảm cho đôi môi.</li>\n            </ul>\n            <h3>4. Thiết Kế Sang Trọng:</h3>\n            <ul>\n                <li>Son Dior Addict Lip Tattoo được thiết kế với hộp đựng bằng thủy tinh cao cấp và nắp son có logo Dior\n                    sang trọng, tạo nên sự lịch lãm và quý phái khi sử dụng.</li>\n            </ul>\n            <h3>5. Dưỡng Môi:</h3>\n            <ul>\n                <li>Ngoài việc tạo màu cho môi, son Dior Addict Lip Tattoo còn chứa các thành phần dưỡng ẩm, giúp môi luôn\n                    mềm mại và mịn màng.</li>\n            </ul>\n            <h3>6. Đa Dạng Ưu Đãi:</h3>\n            <ul>\n                <li>Sản phẩm thường được phân phối cùng với các chương trình ưu đãi, bộ sưu tập màu sắc đa dạng, giúp người\n                    dùng dễ dàng lựa chọn theo sở thích cá nhân.</li>\n            </ul>\n            <p>Son Dior Addict Lip Tattoo 541 Natural Sienna là một lựa chọn hoàn hảo cho những ai yêu thích son môi chất\n                lượng cao và mong muốn một đôi môi tự nhiên và quyến rũ. Sản phẩm này không chỉ làm hài lòng bởi chất lượng\n                mà còn bởi sự sang trọng và tiện ích mà nó mang lại.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 849052, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(14, 2, 7, 'Son Gucci The Painted Veil Rouge Mat Lipstick 201', ' <h3>Son Gucci The Painted Veil Rouge Mat Lipstick 201: Sự Kết Hợp Hoàn Hảo Giữa Thời Trang và Mỹ Phẩm</h3>\n                <h4>1. Chất Lượng và Đẳng Cấp:</h4>\n                <ul>\n                    <li>Son Gucci The Painted Veil Rouge Mat Lipstick 201 là biểu tượng của sự sang trọng và đẳng cấp của thương\n                        hiệu Gucci. Với chất lượng vượt trội, son mang lại sự tự tin và phong cách cho người sử dụng.</li>\n                </ul>\n                <h4>2. Màu Sắc Tinh Tế:</h4>\n                <ul>\n                    <li>Màu sắc của son Rouge Mat Lipstick 201 được thiết kế tỉ mỉ, tinh tế và lôi cuốn. Tông màu The Painted\n                        Veil là sự kết hợp hoàn hảo giữa sắc hồng nude và chút ánh cam, tạo nên vẻ đẹp ấn tượng và sang trọng.\n                    </li>\n                </ul>\n                <h4>3. Độ Bền Màu:</h4>\n                <ul>\n                    <li>Son Gucci The Painted Veil Rouge Mat Lipstick 201 có khả năng bám màu tốt và duy trì độ lên màu trong\n                        thời gian dài, giúp bạn tự tin với đôi môi tươi tắn suốt cả ngày.</li>\n                </ul>\n                <h4>4. Texture Mượt Mà:</h4>\n                <ul>\n                    <li>Với texture mềm mại và mịn màng, son dễ dàng lướt trên môi mà không gây khô hoặc bết dính, mang lại cảm\n                        giác thoải mái và tự nhiên cho làn môi.</li>\n                </ul>\n                <h4>5. Thiết Kế Sang Trọng:</h4>\n                <ul>\n                    <li>Son được đựng trong hộp đựng màu vàng đặc trưng của Gucci, kèm theo logo Gucci ở phần nắp, tạo nên sự\n                        lịch lãm và quý phái khi sử dụng.</li>\n                </ul>\n                <h4>6. Dưỡng Ẩm Cho Môi:</h4>\n                <ul>\n                    <li>Ngoài việc tạo màu, son còn chứa các thành phần dưỡng ẩm, giúp môi luôn mềm mại và căng tràn sức sống.\n                    </li>\n                </ul>\n                <h4>7. Lựa Chọn Hoàn Hảo:</h4>\n                <ul>\n                    <li>Son Gucci The Painted Veil Rouge Mat Lipstick 201 là lựa chọn hoàn hảo cho những ai yêu thích sự sang\n                        trọng và chất lượng cao cấp, đồng thời mong muốn sở hữu đôi môi quyến rũ và cuốn hút.</li>\n                </ul>\n                <hr>\n                <p>Son Gucci The Painted Veil Rouge Mat Lipstick 201 không chỉ là một sản phẩm trang điểm môi mà còn là biểu\n                    tượng của phong cách và cái đẹp đẳng cấp. Sự kết hợp hoàn hảo giữa chất lượng, màu sắc và thiết kế đã làm\n                    nên sức hút và danh tiếng của dòng son Gucci này.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 424717, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(15, 2, 5, 'Phấn Má Hồng 3CE Màu Pure Cake - Hồng Đào Cực Baby', '<h3>Phấn Má Hồng 3CE Màu Pure Cake - Hồng Đào Cực Baby: Sắc Hồng Tươi Sáng Cho Làn Da Tươi Tắn</h3>\n                <h4>1. Màu Sắc Tươi Sáng:</h4>\n                <ul>\n                    <li>Phấn má hồng 3CE màu Pure Cake - Hồng Đào mang đến sắc hồng tươi sáng, nhẹ nhàng và cực kỳ tự nhiên. Màu\n                        sắc này phản ánh ánh sáng tốt, tạo nên hiệu ứng tươi mới và tươi tắn cho làn da.</li>\n                </ul>\n                <h4>2. Texture Mịn Màng:</h4>\n                <ul>\n                    <li>Với texture mịn màng và dễ tán, phấn má hồng 3CE tạo nên lớp màu mềm mịn trên da mà không gây bết dính\n                        hay vón cục. Điều này giúp việc tán phấn trở nên dễ dàng và tự nhiên.</li>\n                </ul>\n                <h4>3. Hiệu Ứng Tự Nhiên:</h4>\n                <ul>\n                    <li>Phấn má hồng Pure Cake của 3CE không chỉ tạo nên màu sắc tự nhiên mà còn giúp tạo điểm nhấn cho khuôn\n                        mặt, tạo cảm giác sức khỏe và tươi mới mà không quá nổi bật.</li>\n                </ul>\n                <h4>4. Độ Bền Màu:</h4>\n                <ul>\n                    <li>Sản phẩm có độ bám màu tốt, giữ màu trên da suốt thời gian dài mà không cần phải tán lại. Điều này giúp\n                        bạn giữ được vẻ tươi tắn suốt cả ngày dài.</li>\n                </ul>\n                <h4>5. Thiết Kế Gọn Nhẹ:</h4>\n                <ul>\n                    <li>Với thiết kế gọn nhẹ và tiện lợi, phấn má hồng 3CE dễ dàng mang theo bên mình và sử dụng bất cứ lúc nào,\n                        bất kỳ nơi đâu.</li>\n                </ul>\n                <h4>6. Thích Hợp Với Mọi Tông Da:</h4>\n                <ul>\n                    <li>Màu hồng đào của sản phẩm phù hợp với nhiều tông da khác nhau, từ da sáng cho đến da ngăm, tạo nên sự\n                        phù hợp và đa dạng trong việc trang điểm.</li>\n                </ul>\n                <h4>7. Thương Hiệu Uy Tín:</h4>\n                <ul>\n                    <li>3CE là một thương hiệu mỹ phẩm nổi tiếng đến từ Hàn Quốc, được biết đến với chất lượng sản phẩm cao cấp\n                        và thiết kế hiện đại.</li>\n                </ul>\n                <p>Phấn Má Hồng 3CE Màu Pure Cake - Hồng Đào Cực Baby không chỉ là một sản phẩm trang điểm mà còn là một vật\n                    dụng làm đẹp không thể thiếu trong bộ sưu tập của bất kỳ ai yêu thích sự tươi mới và tự nhiên cho làn da. Sự\n                    kết hợp hoàn hảo giữa màu sắc, texture và độ bền màu đã tạo nên sức hút đặc biệt của sản phẩm này trong cộng\n                    đồng làm đẹp.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 147177, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(16, 1, 6, 'Phấn Má Hồng Dior Rouge Blush 219 Rose Montaigne', ' <h3>Phấn Má Hồng Dior Rouge Blush 219 Rose Montaigne: Sắc Hồng Tinh Tế Cho Làn Da Lên Màu Tự Nhiên</h3>\n                <p>Phấn Má Hồng Dior Rouge Blush 219 Rose Montaigne là một sản phẩm trang điểm mang đậm dấu ấn của thương hiệu\n                    Dior, mang đến sự tươi tắn và sắc hồng tinh tế cho làn da. Được thiết kế với sự tinh tế và chất lượng cao\n                    cấp, sản phẩm này là lựa chọn lý tưởng cho những ai yêu thích sự tự tin và quyến rũ.</p>\n                <h4>Sắc Hồng Tinh Tế:</h4>\n                <p>Phấn má hồng Dior Rouge Blush 219 Rose Montaigne mang đến một tông màu hồng tinh tế, vừa đủ sáng để tạo điểm\n                    nhấn cho khuôn mặt mà không gây quá chói chang. Màu sắc này phản ánh ánh sáng một cách tự nhiên, tạo nên vẻ\n                    đẹp mềm mại và rạng rỡ cho làn da.</p>\n                <h4>Texture Mịn Màng:</h4>\n                <p>Với texture mịn màng và dễ tán, phấn má hồng Dior Rouge Blush tạo nên lớp màu mềm mại trên da mà không gây\n                    bết dính hay vón cục. Điều này giúp việc tán phấn trở nên dễ dàng và tự nhiên, tạo nên hiệu ứng mềm mại và\n                    tự nhiên cho khuôn mặt.</p>\n                <h4>Độ Bền Màu:</h4>\n                <p>Sản phẩm có độ bám màu tốt, giữ màu trên da suốt thời gian dài mà không cần phải tán lại. Điều này giúp bạn\n                    giữ được vẻ tươi tắn và rạng rỡ suốt cả ngày dài, từ buổi sáng cho đến cuối ngày.</p>\n                <h4>Thiết Kế Sang Trọng:</h4>\n                <p>Với thiết kế sang trọng và đẳng cấp, phấn má hồng Dior Rouge Blush không chỉ là sản phẩm trang điểm mà còn là\n                    một vật dụng làm đẹp lưu niệm. Hộp đựng màu đen cổ điển kết hợp với logo Dior ấn tượng tạo nên sự đẳng cấp\n                    và quý phái.</p>\n                <h4>Thích Hợp Với Mọi Tông Da:</h4>\n                <p>Màu hồng tinh tế của sản phẩm phù hợp với nhiều tông da khác nhau, từ da sáng cho đến da ngăm, tạo nên sự phù\n                    hợp và đa dạng trong việc trang điểm.</p>\n                <p>Phấn Má Hồng Dior Rouge Blush 219 Rose Montaigne không chỉ là một sản phẩm trang điểm mà còn là biểu tượng\n                    của sự đẳng cấp và phong cách. Sự kết hợp hoàn hảo giữa màu sắc, texture và độ bền màu đã tạo nên sức hút và\n                    danh tiếng của dòng sản phẩm này trong cộng đồng làm đẹp.</p>', 1, '2024-02-23', NULL, 'uploads/products/5sZa1711956425.jpeg', 178989, '2024-02-23 01:10:00', '2024-04-01 00:27:05', NULL, NULL, NULL, NULL),
(17, 2, 8, 'Phấn Má Hồng Dior Rouge Blush 028 Actrice', '<h3>Phấn Má Hồng Dior Rouge Blush 028 Actrice: Sắc Hồng Nữ Tính Cho Làn Da Sống Động</h3>\n                <p>Phấn Má Hồng Dior Rouge Blush 028 Actrice là một sản phẩm trang điểm vô cùng tinh tế từ thương hiệu mỹ phẩm\n                    danh tiếng Dior. Với sắc hồng nữ tính, sản phẩm này không chỉ làm cho làn da trở nên sáng sủa mà còn giúp\n                    tôn lên vẻ đẹp tự nhiên và quyến rũ.</p>\n                <h4>Sắc Hồng Nữ Tính:</h4>\n                <p>Phấn má hồng Dior Rouge Blush 028 Actrice mang đến một tông màu hồng nữ tính, dịu dàng và rất phù hợp cho\n                    những cô nàng mong muốn có được vẻ đẹp nhẹ nhàng nhưng vẫn đầy sức sống.</p>\n                <h4>Texture Mềm Mại:</h4>\n                <p>Với texture mềm mại và dễ tán, phấn má hồng Dior Rouge Blush tạo nên lớp màu mịn màng trên da mà không gây\n                    khô ráp hay nặng nề. Điều này giúp việc trang điểm trở nên dễ dàng hơn và cho kết quả tự nhiên.</p>\n                <h4>Độ Bền Màu:</h4>\n                <p>Sản phẩm có độ bám màu tốt, giữ màu trên da suốt thời gian dài mà không cần phải tán lại. Điều này giúp bạn\n                    giữ được vẻ tươi tắn và rạng rỡ suốt cả ngày, từ buổi sáng cho đến cuối ngày làm việc.</p>\n                <h4>Thiết Kế Sang Trọng:</h4>\n                <p>Với thiết kế sang trọng và đẳng cấp, phấn má hồng Dior Rouge Blush 028 Actrice không chỉ là sản phẩm trang\n                    điểm mà còn là một phần của phong cách sống độc đáo của bạn. Thiết kế đơn giản nhưng tinh tế của hộp phấn\n                    cùng với logo Dior nổi bật tạo nên sự thanh lịch và quý phái.</p>\n                <h4>Thích Hợp Với Mọi Tông Da:</h4>\n                <p>Màu hồng dịu dàng của sản phẩm phù hợp với nhiều tông da khác nhau, từ da sáng cho đến da ngăm, tạo nên sự\n                    phù hợp và đa dạng trong việc trang điểm.</p>\n                <p>Phấn Má Hồng Dior Rouge Blush 028 Actrice là một sản phẩm không thể thiếu trong bộ sưu tập trang điểm của bất\n                    kỳ ai yêu thích sự nữ tính và tinh tế. Sự kết hợp hoàn hảo giữa màu sắc, texture và độ bền màu đã tạo nên\n                    sức hút và danh tiếng của dòng sản phẩm này trong cộng đồng làm đẹp.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 17533, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(18, 1, 2, 'Quần thun đá banh', '<h3>Quần Thun Đá Banh: Sự Lựa Chọn Hoàn Hảo Cho Các Hoạt Động Thể Thao</h3>\n                <p>Quần thun đá banh là một sản phẩm quan trọng không thể thiếu đối với những người yêu thích hoạt động thể\n                    thao đá banh. Với thiết kế chuyên biệt và chất liệu cao cấp, quần thun đá banh không chỉ mang lại sự\n                    thoải mái và linh hoạt trong mỗi động tác mà còn đảm bảo sự bảo vệ cho cơ thể của người mặc.</p>\n                <h4>1. Chất Liệu Chất Lượng:</h4>\n                <p>Quần thun đá banh thường được làm từ các loại vải co giãn, như polyester hoặc spandex, giúp tạo sự thoải\n                    mái và linh hoạt trong khi vận động. Chất liệu này cũng giúp thoát mồ hôi hiệu quả, giữ cho cơ thể luôn\n                    khô ráo và thoải mái trong suốt quá trình hoạt động.</p>\n                <h4>2. Thiết Kế Đặc Biệt:</h4>\n                <p>Thiết kế của quần thun đá banh thường đi kèm với độ co giãn tốt và đường may chắc chắn, tạo nên sự thoải\n                    mái và linh hoạt cho người mặc trong mọi tình huống. Các phần đường chỉ may được tối ưu hóa để giảm\n                    thiểu cảm giác không thoải mái hoặc gò bó.</p>\n                <h4>3. Bảo Vệ và An Toàn:</h4>\n                <p>Quần thun đá banh thường được thiết kế để cung cấp sự hỗ trợ cho các cơ bắp chủ chốt như đùi và háng,\n                    giúp giảm thiểu nguy cơ chấn thương trong quá trình tham gia các hoạt động thể thao.</p>\n                <h4>4. Đa Dạng Mẫu Mã:</h4>\n                <p>Với sự phát triển của ngành công nghiệp thể thao, người dùng có thể dễ dàng tìm thấy quần thun đá banh\n                    với nhiều mẫu mã và kiểu dáng đa dạng, từ những mẫu đơn giản với màu sắc cơ bản đến những mẫu thời trang\n                    với họa tiết và logo của các thương hiệu nổi tiếng.</p>\n                <h4>5. Linh Hoạt Trong Sử Dụng:</h4>\n                <p>Quần thun đá banh không chỉ dành cho các buổi tập luyện và thi đấu mà còn phù hợp cho mọi hoạt động thể\n                    thao khác như chạy bộ, tập gym, yoga, và các hoạt động ngoài trời khác.</p>\n                <p>Với những ưu điểm vượt trội về chất liệu, thiết kế và tính linh hoạt, quần thun đá banh là sự lựa chọn\n                    hàng đầu cho những người yêu thích hoạt động thể thao và muốn đảm bảo sự thoải mái và an toàn cho cơ thể\n                    trong mọi tình huống.</p>', 1, '2024-02-23', NULL, 'uploads/products/qrX11711956288.jpeg', 948871, '2024-02-23 01:10:00', '2024-04-01 00:24:48', NULL, NULL, NULL, NULL),
(19, 2, 5, 'Quần âu dự tiệc', '<h3>Quần Âu Dự Tiệc: Phong Cách Lịch Lãm và Sang Trọng</h3>\n                <p>Quần âu dự tiệc là một phần không thể thiếu trong tủ đồ của mọi quý ông khi họ cần diện trang phục lịch lãm\n                    và sang trọng cho các dịp đặc biệt như dự tiệc, tiệc cưới, hoặc sự kiện quan trọng. Với thiết kế đẳng cấp và\n                    chất liệu cao cấp, quần âu dự tiệc không chỉ là biểu tượng của phong cách mà còn là sự tự tin và đẳng cấp\n                    của người mặc.</p>\n                <h4>1. Chất Liệu Chất Lượng:</h4>\n                <p>Quần âu dự tiệc thường được làm từ các loại vải cao cấp như len, kate, hoặc lụa, tạo nên sự mềm mại và thoải\n                    mái cho người mặc. Chất liệu này cũng giữ cho quần luôn giữ được form dáng và không nhăn nhúm sau mỗi lần\n                    mặc.</p>\n                <h4>2. Thiết Kế Lịch Lãm:</h4>\n                <p>Thiết kế của quần âu dự tiệc thường mang đậm phong cách lịch lãm và tinh tế, với các đường may chắc chắn và\n                    cẩn thận. Đặc biệt, quần âu thường có cắt cúp tinh tế, giúp tôn lên vẻ đẳng cấp và phong cách cho người mặc.\n                </p>\n                <h4>3. Phong Cách Đa Dạng:</h4>\n                <p>Quần âu dự tiệc đa dạng về kiểu dáng và màu sắc, từ quần âu cổ điển đến quần âu cách điệu hiện đại. Người mặc\n                    có thể chọn lựa giữa các màu sắc truyền thống như đen, xám, và navy, hoặc thử nghiệm với những gam màu sáng\n                    hơn như trắng, kem, hoặc pastel.</p>\n                <h4>4. Linh Hoạt Trong Sử Dụng:</h4>\n                <p>Mặc dù được thiết kế cho các dịp dự tiệc và sự kiện đặc biệt, nhưng quần âu cũng có thể phối hợp linh hoạt\n                    với nhiều loại áo sơ mi, áo vest, hoặc áo thun để tạo nên phong cách ấn tượng trong các buổi gặp gỡ, công\n                    việc, hoặc du lịch.</p>\n                <h4>5. Biểu Tượng Của Phong Cách Đàn Ông:</h4>\n                <p>Quần âu dự tiệc không chỉ là biểu tượng của sự lịch lãm và sang trọng mà còn là một phần không thể thiếu của\n                    phong cách đàn ông hiện đại. Sự tự tin và phong cách của người mặc sẽ được nâng cao đáng kể khi diện một\n                    chiếc quần âu dự tiệc đẳng cấp.</p>\n                <p>Với những đặc điểm vượt trội về chất liệu, thiết kế và phong cách, quần âu dự tiệc là sự lựa chọn hoàn hảo\n                    cho mọi quý ông muốn tỏa sáng và ghi điểm trong mọi dịp tiệc tùng và sự kiện đặc biệt.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 220232, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(20, 2, 2, 'Áo khoác uniqlo', '<h3>Áo Khoác Uniqlo: Sự Kết Hợp Hoàn Hảo Giữa Phong Cách và Tiện Ích</h3>\n                <p>Áo khoác Uniqlo là biểu tượng của sự đơn giản, tiện dụng và phong cách hiện đại. Với chất liệu chất lượng,\n                    thiết kế tinh tế và đa dạng về kiểu dáng, áo khoác Uniqlo không chỉ là một lựa chọn thời trang mà còn là một\n                    phần không thể thiếu trong tủ đồ của mọi người.</p>\n                <h4>1. Chất Liệu Chất Lượng:</h4>\n                <p>Áo khoác Uniqlo được làm từ các loại vải cao cấp như nylon, polyester, hoặc vải dù, tạo nên sự thoải mái và\n                    bền bỉ trong mọi điều kiện thời tiết. Chất liệu này giúp giữ ấm vào mùa đông và thoát mồ hôi vào mùa hè,\n                    mang lại cảm giác thoải mái suốt cả ngày.</p>\n                <h4>2. Thiết Kế Đa Dạng:</h4>\n                <p>Uniqlo cung cấp một loạt các kiểu dáng áo khoác phong phú từ áo khoác gió, áo khoác dù, áo khoác len cho đến\n                    áo khoác da và áo khoác nỉ. Đồng thời, các màu sắc và họa tiết cũng được đa dạng, từ màu trơn tối giản đến\n                    những họa tiết sáng tạo và trẻ trung.</p>\n                <h4>3. Tiện Ích và Phong Cách:</h4>\n                <p>Áo khoác Uniqlo không chỉ mang đến sự ấm áp và bảo vệ trong mọi hoàn cảnh mà còn là biểu tượng của phong cách\n                    cá nhân. Với thiết kế đơn giản nhưng tinh tế, áo khoác Uniqlo dễ dàng kết hợp với nhiều trang phục khác\n                    nhau, từ trang phục công sở đến trang phục thể thao và dạo phố.</p>\n                <h4>4. Độ Bền Vững:</h4>\n                <p>Sản phẩm của Uniqlo nổi tiếng với độ bền cao và khả năng chống rách tuyệt vời. Điều này đảm bảo rằng áo khoác\n                    Uniqlo sẽ là một người bạn đồng hành đáng tin cậy trong nhiều mùa và nhiều năm sử dụng.</p>\n                <h4>5. Giá Cả Hợp Lý:</h4>\n                <p>Mặc dù được biết đến với chất lượng cao, áo khoác Uniqlo vẫn mang lại giá cả hợp lý và phù hợp với nhiều đối\n                    tượng khách hàng. Điều này giúp Uniqlo trở thành một trong những thương hiệu thời trang phổ biến và được ưa\n                    chuộng trên toàn thế giới.</p>\n                <p>Với sự kết hợp hoàn hảo giữa phong cách và tiện ích, áo khoác Uniqlo không chỉ là một sản phẩm thời trang mà\n                    còn là một biểu tượng của phong cách và sự thoải mái trong cuộc sống hàng ngày.</p>', 1, '2024-02-23', NULL, '/storage/images/banner/cc.png', 860910, '2024-02-23 01:10:00', NULL, NULL, NULL, NULL, NULL),
(60, 1, 3, 'áo caki', 'ádasd', 1, '2024-03-30', NULL, 'uploads/products/1MRe1711955579.jpeg', 0, '2024-03-30 01:20:17', '2024-04-01 00:12:59', NULL, '[\"uploads\\/products\\/6zM21711873078.jpg\",\"uploads\\/products\\/iMKr1711873310.jpg\",\"uploads\\/products\\/JBpz1711873367.jpg\",\"uploads\\/products\\/fv5b1711873377.jpg\",\"uploads\\/products\\/Bz6m1711873388.jpg\",\"uploads\\/products\\/UWF21711873464.jpg\"]', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` bigint(11) NOT NULL,
  `sale_price` bigint(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`variations`)),
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variations`
--

INSERT INTO `product_variations` (`id`, `id_product`, `quantity`, `price`, `sale_price`, `status`, `image`, `created_at`, `updated_at`, `variations`, `name`) VALUES
(126, 60, 1, 100000, 900, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"\\u0110\\u1ecf\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"S\"}]', 'Đỏ-S'),
(127, 60, 2, 20000, 0, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"\\u0110\\u1ecf\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"M\"}]', 'Đỏ-M'),
(128, 60, 3, 30000, 900, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"\\u0110\\u1ecf\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"L\"}]', 'Đỏ-L'),
(129, 60, 4, 40000, 0, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"Xanh\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"S\"}]', 'Xanh-S'),
(130, 60, 5, 50000, 0, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"Xanh\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"M\"}]', 'Xanh-M'),
(131, 60, 6, 6000, 0, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"Xanh\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"L\"}]', 'Xanh-L'),
(132, 60, 7, 7000, 0, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"V\\u00e0ng\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"S\"}]', 'Vàng-S'),
(133, 60, 8, 8000, 0, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"V\\u00e0ng\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"M\"}]', 'Vàng-M'),
(134, 60, 9, 9000, 0, 1, NULL, '2024-04-02 01:08:39', '2024-04-02 01:08:39', '[{\"title\":\"M\\u00e0u\",\"value\":\"V\\u00e0ng\"},{\"title\":\"K\\u00edch th\\u01b0\\u1edbc\",\"value\":\"L\"}]', 'Vàng-L');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_store` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `follows` int(11) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `image_arr` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `coin` bigint(20) DEFAULT 0,
  `thumb_url` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `stores`
--

INSERT INTO `stores` (`id`, `id_user`, `name`, `address`, `status`, `follows`, `description`, `image_arr`, `created_at`, `updated_at`, `phone`, `slug`, `coin`, `thumb_url`, `email`) VALUES
(1, 7, 'M.shop', ',123123', 1, 0, '-bán quần áo\n-bán sản phẩm điện tử\n-bán hàng tự do', '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', '2024-04-01 02:20:24', '0123456789', 'laptop-pc', 0, 'uploads/1711956869.webp', NULL),
(2, 5, 'Mỹ phẩm cho bạn', 'Quận 4, Hồ Chí Minh', 1, 0, 'Shop bán mỹ phẩm', '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, '0123456789', 'laptop-pc1', 0, 'uploads/1711956869.webp', NULL),
(3, 4, 'Laptop & PC cho bạn', 'Quận 7, Hồ Chí Minh', 1, 0, 'Shop bán Laptop & PC', '\"images\": [\n                    \"image1.jpg\",\n                    \"image2.jpg\",\n                    \"image3.jpg\"\n                ]', '2024-02-23 01:10:00', NULL, '0123456789', 'laptop-pc2', 0, 'uploads/1711956869.webp', NULL),
(4, 1, 'Phúc Nuyễn Hoàng', 'Bắc Giang,Lạng Giang,Dương Đức,1232123123', 1, 0, '12345678', NULL, '2024-03-20 18:55:28', '2024-03-20 18:55:47', '0777575100', 'phuc-nuyen-hoang', 0, 'uploads/1711956869.webp', 'nguyenhoangphuc201122@gmail.com'),
(5, 7, 'M.shop', NULL, 1, 0, NULL, NULL, '2024-04-01 01:02:17', '2024-04-01 01:02:17', '0888788100', 'mshop', 0, 'uploads/1711956869.webp', 'nguyenhoangphuc201122@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `very_email` tinyint(4) NOT NULL DEFAULT 0,
  `rank` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `phone`, `password`, `very_email`, `rank`, `status`, `role`, `image`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '0937555353', '$2y$12$cXg/arcZrK/aFZksE7LjH.SwUCRGcndw8AybYQL6mjuER6U9cztGe', 0, 0, 1, 0, NULL, '2024-02-23 01:10:00', NULL),
(2, 'tranvan', 'Trần Văn', 'tranvan@gmail.com', '0123456789', '$2y$12$w7Z.OUw.I6oNiycVJPqYXuzEVPbA0I73fs/aTL2sa8auJQ4n1opEa', 0, 1, 1, 1, NULL, '2024-02-23 01:10:00', NULL),
(3, 'nguyenvan', 'Nguyễn Văn', 'nguyenvan@gmail.com', '0369852147', '$2y$12$JNJKQ/oQjVAcFldDNUgluezbluSqCj8ZkBQcZwD3fbZSicEkVcYFG', 0, 2, 1, 2, NULL, '2024-02-23 01:10:00', NULL),
(4, 'lethi', 'Lê Thị Vân Anh', 'lethi@gmail.com', '0235694158', '$2y$12$eTRlSCWYTqNQZ0wraCHWNeUyEZyiRMh0rOVO7SrWUXM0oq2fxbE8i', 0, 2, 1, 2, NULL, '2024-02-23 01:10:00', NULL),
(5, 'nguyenkim', 'Nguyễn Kim Ánh', 'nguyenkim@gmail.com', '0124536987', '$2y$12$SSRcd0UjSghNjabKZ5kwaO8qikbOk/JzuikWz4cyv5ThkTyGM5tLK', 0, 0, 0, 1, NULL, '2024-02-23 01:10:00', NULL),
(6, 'hoanphi', 'Hoàng Phi Hồng', 'honagphi@gmail.com', '0125478963', '$2y$12$ESbCpg9481YdOzO0oE5bSev3g/UzQcskGZRE518dy/Ia.0ZOA4JJy', 0, 3, 1, 1, NULL, '2024-02-23 01:10:00', NULL),
(7, 'nguyenngoc', 'Nguyễn Ngọc Linh', 'admin01@gmail.com', '0214563257', '$2y$12$ROINkHrAvvIg5YdL4qp4o.PJKoRivZFdRR.uWnyg.n28hQbaUARLy', 0, 3, 1, 1, NULL, '2024-02-23 01:10:00', NULL),
(8, 'dinhkim', 'Đinh Kim Tiểu Thư', 'dinhkin@gmail.com', '01452367895', '$2y$12$GqC57XdJGd46UWid3ll3BuEefP5hGZBXi6X8rA2VmQR5Mkj7ioGeO', 0, 2, 1, 1, NULL, '2024-02-23 01:10:00', NULL),
(9, 'vodinh', 'Võ Đỉnh Lâm', 'vodinh@gmail.com', '0245637896', '$2y$12$SR32AoxWTnSDKvvY1o/DFOlmHP.aaQLU8MUerxKvBGX5JUK5gsYJm', 0, 3, 1, 1, NULL, '2024-02-23 01:10:00', NULL),
(10, 'kimthi', 'Kim Thị Quế Như', 'kimthi@gmail.com', '0124536597', '$2y$12$GPRZ7RQa1XIAwyjWGrsxruGNGYXUqNXD0LUbr6TnVdRoxDVSscrEa', 0, 1, 1, 1, NULL, '2024-02-23 01:10:00', NULL),
(11, 'nguyenkim', 'Nguyễn Kim Tuyến', 'nguyenkim@gmail.com', '0123453456', '$2y$12$Keo/bqoOO33YB9wyNYD24.dTvkmYlcwIY1PYpmWf4EW0cOgjYKyRq', 0, 2, 1, 1, NULL, '2024-02-23 01:10:00', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_store_foreign` (`id_store`),
  ADD KEY `blogs_id_categories_blog_foreign` (`id_categories_blog`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id_parent_foreign` (`id_parent`);

--
-- Chỉ mục cho bảng `categories_blog`
--
ALTER TABLE `categories_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_blog_id_store_foreign` (`id_store`),
  ADD KEY `categories_blog_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_id_user_foreign` (`id_user`),
  ADD KEY `chats_id_store_foreign` (`id_store`),
  ADD KEY `chats_id_room_foreign` (`id_room`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_id_product_foreign` (`id_product`),
  ADD KEY `comments_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `consignees`
--
ALTER TABLE `consignees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consignees_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follows_id_store_foreign` (`id_store`),
  ADD KEY `follows_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_id_product_foreign` (`id_product`),
  ADD KEY `likes_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_pay_foreign` (`id_pay`),
  ADD KEY `orders_id_user_foreign` (`id_user`),
  ADD KEY `orders_id_store_foreign` (`id_store`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_id_product_variation_foreign` (`id_product_variation`),
  ADD KEY `order_details_id_order_foreign` (`id_order`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pays_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_store_foreign` (`id_store`),
  ADD KEY `products_id_category_foreign` (`id_category`);

--
-- Chỉ mục cho bảng `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_id_user_foreign` (`id_user`),
  ADD KEY `rooms_id_store_foreign` (`id_store`);

--
-- Chỉ mục cho bảng `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `categories_blog`
--
ALTER TABLE `categories_blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `consignees`
--
ALTER TABLE `consignees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_id_categories_blog_foreign` FOREIGN KEY (`id_categories_blog`) REFERENCES `categories_blog` (`id`),
  ADD CONSTRAINT `blogs_id_store_foreign` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`);

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_id_parent_foreign` FOREIGN KEY (`id_parent`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories_blog`
--
ALTER TABLE `categories_blog`
  ADD CONSTRAINT `categories_blog_id_store_foreign` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `categories_blog_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories_blog` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_id_room_foreign` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `chats_id_store_foreign` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `chats_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `consignees`
--
ALTER TABLE `consignees`
  ADD CONSTRAINT `consignees_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_id_store_foreign` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `follows_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `likes_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_pay_foreign` FOREIGN KEY (`id_pay`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `orders_id_store_foreign` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `orders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_id_product_variation_foreign` FOREIGN KEY (`id_product_variation`) REFERENCES `product_variations` (`id`);

--
-- Các ràng buộc cho bảng `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_id_store_foreign` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`);

--
-- Các ràng buộc cho bảng `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_id_store_foreign` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `rooms_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

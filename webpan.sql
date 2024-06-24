CREATE DATABASE IF NOT EXISTS web_panvn;
USE web_panvn;
DROP DATABASE IF EXISTS web_panvn;
CREATE TABLE Gallery (
    galleryID INT AUTO_INCREMENT PRIMARY KEY,
    imageURL1 VARCHAR(255),
    imageURL2 VARCHAR(255),
    imageURL3 VARCHAR(255),
    imageURL4 VARCHAR(255)
);

CREATE TABLE Brand (
    brandID INT AUTO_INCREMENT PRIMARY KEY,
    brandName VARCHAR(255)
);

CREATE TABLE ProductDetail (
    productDetailID INT AUTO_INCREMENT PRIMARY KEY,
    processor VARCHAR(255),
    ram VARCHAR(255),
    storage VARCHAR(255),
    graphicsCard VARCHAR(255),
    operatingSystem VARCHAR(255),
    description VARCHAR(255),
    discount INT
);

CREATE TABLE Product (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    price DOUBLE,
    description VARCHAR(4000),
    brandID INT,
    color  VARCHAR(30),
    productDetailID INT,
    FOREIGN KEY (brandID) REFERENCES Brand(brandID),
    FOREIGN KEY (productDetailID) REFERENCES ProductDetail(productDetailID)
);

CREATE TABLE User (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    address VARCHAR(255),
    created_at DATE,
    updated_at DATE
);


CREATE TABLE Account (
    accountID INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(255) UNIQUE,
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    role INT,
    userID INT,
    FOREIGN KEY (userID) REFERENCES User(userID)
);


CREATE TABLE `Order` (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    orderDate DATE,
    address VARCHAR(255),
    note VARCHAR(255),
    status INT,
    totalPrice DOUBLE,
    userID INT,
    FOREIGN KEY (userID) REFERENCES User(userID)
);


CREATE TABLE OrderDetails (
    orderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT,
    totalPrice DOUBLE,
    note VARCHAR(255),
    orderID INT,
    productID INT,
    FOREIGN KEY (orderID) REFERENCES `Order`(orderID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);


CREATE TABLE Cart (
    cartID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT,
    FOREIGN KEY (userID) REFERENCES User(userID)
);


CREATE TABLE Item (
    cartItemID INT AUTO_INCREMENT PRIMARY KEY,
    cartID INT,
    productID INT,
    quantity INT,
    FOREIGN KEY (cartID) REFERENCES Cart(cartID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);


CREATE TABLE Payment (
    paymentID INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    method VARCHAR(255),
    orderID INT,
    FOREIGN KEY (orderID) REFERENCES `Order`(orderID)
);


CREATE TABLE Product_Gallery (
    productID INT,
    galleryID INT,
    FOREIGN KEY (productID) REFERENCES Product(productID),
    FOREIGN KEY (galleryID) REFERENCES Gallery(galleryID),
    PRIMARY KEY (productID, galleryID)
);

INSERT INTO Brand (brandName) VALUES
('Laptop Apple'),
('Laptop Asus'),
('Laptop Dell'),
('Laptop HP'),
('Laptop Lenovo'),
('Laptop Acer'),
('Laptop Microsoft'),
('Laptop MSI'),
('Laptop Samsung'),
('Laptop Razer');

INSERT INTO ProductDetail (processor, ram, storage, graphicsCard, operatingSystem, description, discount) VALUES
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10),
('Intel Core i5', '8GB', '256GB SSD', 'Intel Iris Plus Graphics', 'Windows 10', 'Budget-friendly laptop', 5),
('Intel Core i7', '16GB', '512GB SSD', 'NVIDIA GTX 1650', 'Windows 10', 'High-performance laptop', 10);

INSERT INTO Product (title, price, description, brandID, color, productDetailID) VALUES
('Macbook Air M2', 1200.00, 'Macbook Air M2 được trang bị con chip silicon thế hệ tiếp theo của Apple với sự nâng cấp vượt bậc ở mọi mặt. Nó cung cấp hiệu năng mạnh và tốc độ xử lí nhanh hơn thế hệ trước 18%. Do đó, bạn có thể thoải mái thực hiện mọi tác vụ từ cơ bản đến nâng cao vô cùng mượt mà. Thậm chí, bạn có thể dựng và chỉnh sửa video 4K / 8K trên Macbook một cách trơn tru mà không gặp bất kỳ vấn đề nào.', 1, 'Màu đen', 1),
('Macbook Air M2', 1350.00, 'Macbook Air M2 được trang bị con chip silicon thế hệ tiếp theo của Apple với sự nâng cấp vượt bậc ở mọi mặt. Nó cung cấp hiệu năng mạnh và tốc độ xử lí nhanh hơn thế hệ trước 18%. Do đó, bạn có thể thoải mái thực hiện mọi tác vụ từ cơ bản đến nâng cao vô cùng mượt mà. Thậm chí, bạn có thể dựng và chỉnh sửa video 4K / 8K trên Macbook một cách trơn tru mà không gặp bất kỳ vấn đề nào.', 1, 'Màu đen', 2),
('iMac 24 2021 M1', 2680.00, 'iMac là thiết bị màn hình máy tính nhưng lại được tích hợp với hệ thống CPU. Với thiết kế tinh tế, sang trọng nhưng lại hoạt động vô cùng mạnh mẽ, iMac sẽ mang đến cảm hứng làm việc cho người dùng đang cần một góc máy gọn gàng nhờ vào tính năng tiết kiệm được tối đa khoảng trống.', 1, 'Màu hồng', 3),
('iMac 24 2021 M1', 2680.00, 'iMac là thiết bị màn hình máy tính nhưng lại được tích hợp với hệ thống CPU. Với thiết kế tinh tế, sang trọng nhưng lại hoạt động vô cùng mạnh mẽ, iMac sẽ mang đến cảm hứng làm việc cho người dùng đang cần một góc máy gọn gàng nhờ vào tính năng tiết kiệm được tối đa khoảng trống.', 1, 'Màu xanh lục', 4),
('iMac 24 2021 M1', 2680.00, 'iMac là thiết bị màn hình máy tính nhưng lại được tích hợp với hệ thống CPU. Với thiết kế tinh tế, sang trọng nhưng lại hoạt động vô cùng mạnh mẽ, iMac sẽ mang đến cảm hứng làm việc cho người dùng đang cần một góc máy gọn gàng nhờ vào tính năng tiết kiệm được tối đa khoảng trống.', 1, 'Màu xanh lam', 5),
('Laptop ASUS Vivobook 16', 908.00, 'Là một trong những dòng laptop mỏng nhẹ có hiệu năng cao, thiết kế đẹp mắt, laptop ASUS Vivobook 16 M1605YA MB303W từ khi ra mắt đã là một trong những mẫu laptop mà dân văn phòng không thể bỏ qua. Sở hữu cấu hình mạnh mẽ với thiết kế văn phòng, ASUS Vivobook 16 M1605YA MB303W không chỉ có thể đáp ứng các tác vụ cơ bản mà còn cả nhu cầu thiết kế đồ họa lẫn lập trình.', 2, 'Màu bạch kim', 6),
('Laptop ASUS Zenbook 14 OLED', 1450.00, 'ASUS Zenbook 14 OLED UX3402VA KM068W mang đến một siêu phẩm laptop học tập làm việc. Sở hữu sức mạnh từ con chip Intel Gen13 mới nhất để xử lý mọi công việc từ đơn giản đến phức tạp. Màn hình cảm ứng OLED hứa hẹn sẽ đem lại những trải nghiệm hấp dẫn cho bạn. ', 2, 'Màu đen', 7),
('Laptop ASUS ProArt Studiobook Pro 16', 3500.00, 'Laptop ASUS ProArt Studiobook Pro 16 được khoác lên mình một lớp áo màu đen bằng nhôm cao cấp. Thể hiện được cá tính riêng và sự sang trọng một cách tinh tế ở bất kỳ đâu. Bàn phím với bố cục được sắp xếp một cách thoải mái cho những lần thao tác. Laptop ASUS còn được trang bị thêm nút vặn ASUS Dial để dễ dàng điều khiển trực quan và dễ sử dụng được tích hợp riêng cho những nhà thiết kế tối ưu hiệu suất sáng tạo của mình. ', 2, 'Màu đen', 8),
('Laptop Asus Zenbook Pro 14 ', 3330.00, 'Asus Zenbook Pro 14 Duo OLED UX8402VU P1028W được xem là một trong những chiếc laptop đồ họa tuyệt vời. Thiết kế mới lạ với 2 màn hình để trình chiếu, cấu hình vượt trội cùng nhiều tính năng hấp dẫn hứa hẹn mang đến trải nghiệm tốt nhất cho người dùng. Nằm trong phân khúc laptop mỏng nhẹ cao cấp, ASUS Zenbook Pro 14 Dou OLED mang đến một diện mạo vô cùng đẹp mắt.', 2, 'Màu đen', 9),
('Laptop Asus Vivobook 15', 1700.00, 'Asus Vivobook 15X OLED A1505VA L1114W mang lại trải nghiệm hình ảnh tốt hơn với trang bị màn hình OLED. Thiết kế mỏng nhẹ cùng cấu hình mạnh mẽ cho phép người dùng nâng cao hiệu suất khi làm việc. Laptop Asus Vivobook 15X OLED sở hữu một màu đen sang trọng với thiết kế vuông vắn đầy tinh tế. Bản lề được thiết kế tự tạo một góc nghiêng vừa phải khi mở nắp máy tính lên.', 2, 'Màu đen', 10),
('Laptop Dell Vostro 3510 7T2YC2', 1740.00, 'Laptop Dell Vostro 3510 7T2YC2 là sản phẩm tiếp theo có mặt trên thị trường thuộc thế hệ Dell Vostro. Vẫn sở hữu những điểm mạnh vốn có trên những chiếc laptop Dell trước đây là thiết kế, hiệu năng và đặc biệt đó là giá tiền phải chăng. Vậy Dell Vostro 3510 V3510 có những điểm gì mà bạn cần biết? Hãy cùng GEARVN khám phá nào.', 3, 'Màu đen', 11),
('Laptop Dell Vostro 3520 5M2TT2', 1700.00, 'Laptop Dell Vostro 3520 5M2TT2 là dòng laptop sinh viên sở hữu thiết kế mỏng nhẹ với nhiều tính năng nổi bật giúp bạn nâng cao thành tích học tập, tăng thêm trải nghiệm với các tựa game mình yêu thích. Đặc biệt, với trọng lượng chưa đến 2kg bạn hoàn toàn có thể cất gọn trong balo mang đi đến bất kỳ đâu.', 3, 'Màu đen', 12),
('Laptop Dell Vostro 3430 71011900', 1790.00, 'Laptop Dell Vostro 3430 71011900 mang đến hiệu suất làm việc cao, xử lý mọi tác vụ nhanh chóng trong thiết kế gọn nhẹ đầy thanh lịch. Đây là một trong những sản phẩm laptop văn phòng phổ thông thu hút được nhiều sự quan tâm của khách hàng nhất tại GEARVN. Nếu bạn đang tìm kiếm một sản phẩm laptop học tập - làm việc mỗi ngày thì đây chính xác là lựa chọn dành cho bạn.', 3, 'Màu đen', 13),
('Laptop Dell Vostro 13 5320 V3I7005W', 2540.00, 'Dell Vostro 13 5320 V3I7005W Gray mang đến hiệu suất làm việc cao, xử lý mọi tác vụ nhanh chóng trong thiết kế gọn nhẹ đầy thanh lịch. Đây là một trong những sản phẩm laptop văn phòng phổ thông thu hút được nhiều sự quan tâm của khách hàng nhất tại GEARVN. Nếu bạn đang tìm kiếm một sản phẩm laptop học tập - làm việc mỗi ngày thì đây chính xác là lựa chọn dành cho bạn.', 3, 'Màu xám', 14),
('Laptop Dell XPS 13 Plus 9320 5CG56', 5799.00, 'Dell XPS 13 Plus 9320 5CG56 thuộc phân khúc laptop cao cấp đến từ thương hiệu Dell. Kiểu dáng hiện đại, cấu hình mạnh mẽ, kích thước mỏng nhẹ đáp ứng mọi nhu cầu công việc hằng ngày. Sở hữu màn hình Oled cực chuẩn nâng tầm trải nghiệm đồ họa trên Dell XPS. Dell XPS 13 có lớp vỏ máy tính được làm bằng kim loại cao cấp. Không chỉ đảm bảo được sự cứng cáp của máy mà còn gia tăng tính thẩm mỹ về ngoại hình. ', 3, 'Màu bạch kim', 15),
('Laptop HP Pavilion 15 eg3091TU 8C5L2PA', 2200.00, 'Laptop HP Pavilion 15 eg3091TU 8C5L2PA là sự kết hợp hoàn hảo giữa hiệu năng và thiết kế. Đây là dòng laptop cho sinh viên và nhân viên văn phòng phổ thông được đánh giá cao về độ bền và khả năng giải quyết công việc hằng ngày. Trang bị chip CPU Intel đời 13 công nghệ mới nhất cùng 16GB RAM và SSD lên đến 512 GB trên laptop giúp bạn có thể xử lý tốt mọi công việc văn phòng, bảng biểu, ứng dụng quản lý, phần mềm bán hàng mượt mà, ổn định.', 4, 'Màu sắc', 16),
('Laptop HP Pavilion 15 eg3112TU 8U6L9PA', 2200.00, 'Laptop HP Pavilion 15 eg3112TU 8U6L9PA là một chiếc laptop mỏng nhẹ, phổ thông mang vẻ đẹp hút mắt và tạo ấn tượng đối với khách hàng như học sinh - sinh viên, nhân viên văn phòng. Từng chi tiết thiết kế trên HP Pavilion 15 eg3112TU 8U6L9PA được trau chuốt và sắp đặt kĩ càng nhằm bộc lộ hết vẻ đẹp hiện đại và thời thượng của chiếc máy. Khoác lên vỏ lớp màu Natural Silver sang trọng cùng viền màn hình được thiết kế siêu mỏng, càng thể hiện được nét đẹp thanh thoát và trang nhã của sản phẩm.', 4, 'Màu sắc', 17),
('Laptop HP Pavilion 15 eg3093TU 8C5L4PA', 1900.00, 'Laptop HP Pavilion 15 eg3112TU 8C5L4PA là một chiếc laptop mỏng nhẹ, phổ thông mang vẻ đẹp hút mắt và tạo ấn tượng đối với khách hàng như học sinh - sinh viên, nhân viên văn phòng. Từng chi tiết thiết kế trên HP Pavilion 15 eg3112TU 8U6L9PA được trau chuốt và sắp đặt kĩ càng nhằm bộc lộ hết vẻ đẹp hiện đại và thời thượng của chiếc máy. Khoác lên vỏ lớp màu Natural Silver sang trọng cùng viền màn hình được thiết kế siêu mỏng, càng thể hiện được nét đẹp thanh thoát và trang nhã của sản phẩm.', 4, 'Màu sắc', 18),
('Laptop HP Pavilion 15 eg3111TU 8U6L8PA', 1920.00, 'Laptop HP Pavilion 15 eg3112TU 8U6L8PA là một chiếc laptop mỏng nhẹ, phổ thông mang vẻ đẹp hút mắt và tạo ấn tượng đối với khách hàng như học sinh - sinh viên, nhân viên văn phòng. Từng chi tiết thiết kế trên HP Pavilion 15 eg3112TU 8U6L9PA được trau chuốt và sắp đặt kĩ càng nhằm bộc lộ hết vẻ đẹp hiện đại và thời thượng của chiếc máy. Khoác lên vỏ lớp màu Natural Silver sang trọng cùng viền màn hình được thiết kế siêu mỏng, càng thể hiện được nét đẹp thanh thoát và trang nhã của sản phẩm.3', 4, 'Màu sắc', 19),
('Laptop HP Pavilion 15 EG0506TX 46M05PA', 19590000.00, 'Laptop HP Pavilion 15 EG0506TX 46M05PA có kích thước màn hình 15.6 inch, độ dày chỉ 17.9 mm và cân nặng 1.75 kg. Với kích thước mỏng nhẹ này bạn hoàn toàn có thể cầm máy bằng 1 tay dễ dàng, phù hợp với những ai thường xuyên thay đổi vị trí làm việc. Máy được thiết kế với phong cách tối giản màu Natural silver (Bạc), với logo HP sáng bóng đính giữa trung tâm mặt A (mặt trên) tạo điểm nhấn ấn tượng cho HP Pavilion 15 EG0506TX 46M05PA.', 4, 'Màu xám trắng', 20),

('Macbook Air M2', 1200.00, 'Macbook Air M2 được trang bị con chip silicon thế hệ tiếp theo của Apple với sự nâng cấp vượt bậc ở mọi mặt. Nó cung cấp hiệu năng mạnh và tốc độ xử lí nhanh hơn thế hệ trước 18%. Do đó, bạn có thể thoải mái thực hiện mọi tác vụ từ cơ bản đến nâng cao vô cùng mượt mà. Thậm chí, bạn có thể dựng và chỉnh sửa video 4K / 8K trên Macbook một cách trơn tru mà không gặp bất kỳ vấn đề nào.', 1, 'Màu đen', 21),
('Macbook Air M2', 1350.00, 'Macbook Air M2 được trang bị con chip silicon thế hệ tiếp theo của Apple với sự nâng cấp vượt bậc ở mọi mặt. Nó cung cấp hiệu năng mạnh và tốc độ xử lí nhanh hơn thế hệ trước 18%. Do đó, bạn có thể thoải mái thực hiện mọi tác vụ từ cơ bản đến nâng cao vô cùng mượt mà. Thậm chí, bạn có thể dựng và chỉnh sửa video 4K / 8K trên Macbook một cách trơn tru mà không gặp bất kỳ vấn đề nào.', 1, 'Màu đen', 22),
('iMac 24 2021 M1', 2680.00, 'iMac là thiết bị màn hình máy tính nhưng lại được tích hợp với hệ thống CPU. Với thiết kế tinh tế, sang trọng nhưng lại hoạt động vô cùng mạnh mẽ, iMac sẽ mang đến cảm hứng làm việc cho người dùng đang cần một góc máy gọn gàng nhờ vào tính năng tiết kiệm được tối đa khoảng trống.', 1, 'Màu hồng', 23),
('iMac 24 2021 M1', 2680.00, 'iMac là thiết bị màn hình máy tính nhưng lại được tích hợp với hệ thống CPU. Với thiết kế tinh tế, sang trọng nhưng lại hoạt động vô cùng mạnh mẽ, iMac sẽ mang đến cảm hứng làm việc cho người dùng đang cần một góc máy gọn gàng nhờ vào tính năng tiết kiệm được tối đa khoảng trống.', 1, 'Màu xanh lục', 24),
('iMac 24 2021 M1', 2680.00, 'iMac là thiết bị màn hình máy tính nhưng lại được tích hợp với hệ thống CPU. Với thiết kế tinh tế, sang trọng nhưng lại hoạt động vô cùng mạnh mẽ, iMac sẽ mang đến cảm hứng làm việc cho người dùng đang cần một góc máy gọn gàng nhờ vào tính năng tiết kiệm được tối đa khoảng trống.', 1, 'Màu xanh lam', 25),
('Laptop ASUS Vivobook 16', 908.00, 'Là một trong những dòng laptop mỏng nhẹ có hiệu năng cao, thiết kế đẹp mắt, laptop ASUS Vivobook 16 M1605YA MB303W từ khi ra mắt đã là một trong những mẫu laptop mà dân văn phòng không thể bỏ qua. Sở hữu cấu hình mạnh mẽ với thiết kế văn phòng, ASUS Vivobook 16 M1605YA MB303W không chỉ có thể đáp ứng các tác vụ cơ bản mà còn cả nhu cầu thiết kế đồ họa lẫn lập trình.', 2, 'Màu bạch kim', 26),
('Laptop ASUS Zenbook 14 OLED', 1450.00, 'ASUS Zenbook 14 OLED UX3402VA KM068W mang đến một siêu phẩm laptop học tập làm việc. Sở hữu sức mạnh từ con chip Intel Gen13 mới nhất để xử lý mọi công việc từ đơn giản đến phức tạp. Màn hình cảm ứng OLED hứa hẹn sẽ đem lại những trải nghiệm hấp dẫn cho bạn. ', 2, 'Màu đen', 27),
('Laptop ASUS ProArt Studiobook Pro 16', 3500.00, 'Laptop ASUS ProArt Studiobook Pro 16 được khoác lên mình một lớp áo màu đen bằng nhôm cao cấp. Thể hiện được cá tính riêng và sự sang trọng một cách tinh tế ở bất kỳ đâu. Bàn phím với bố cục được sắp xếp một cách thoải mái cho những lần thao tác. Laptop ASUS còn được trang bị thêm nút vặn ASUS Dial để dễ dàng điều khiển trực quan và dễ sử dụng được tích hợp riêng cho những nhà thiết kế tối ưu hiệu suất sáng tạo của mình. ', 2, 'Màu đen', 28),
('Laptop Asus Zenbook Pro 14 ', 3330.00, 'Asus Zenbook Pro 14 Duo OLED UX8402VU P1028W được xem là một trong những chiếc laptop đồ họa tuyệt vời. Thiết kế mới lạ với 2 màn hình để trình chiếu, cấu hình vượt trội cùng nhiều tính năng hấp dẫn hứa hẹn mang đến trải nghiệm tốt nhất cho người dùng. Nằm trong phân khúc laptop mỏng nhẹ cao cấp, ASUS Zenbook Pro 14 Dou OLED mang đến một diện mạo vô cùng đẹp mắt.', 2, 'Màu đen', 29),
('Laptop Asus Vivobook 15', 1700.00, 'Asus Vivobook 15X OLED A1505VA L1114W mang lại trải nghiệm hình ảnh tốt hơn với trang bị màn hình OLED. Thiết kế mỏng nhẹ cùng cấu hình mạnh mẽ cho phép người dùng nâng cao hiệu suất khi làm việc. Laptop Asus Vivobook 15X OLED sở hữu một màu đen sang trọng với thiết kế vuông vắn đầy tinh tế. Bản lề được thiết kế tự tạo một góc nghiêng vừa phải khi mở nắp máy tính lên.', 2, 'Màu đen', 30),
('Laptop Dell Vostro 3510 7T2YC2', 1740.00, 'Laptop Dell Vostro 3510 7T2YC2 là sản phẩm tiếp theo có mặt trên thị trường thuộc thế hệ Dell Vostro. Vẫn sở hữu những điểm mạnh vốn có trên những chiếc laptop Dell trước đây là thiết kế, hiệu năng và đặc biệt đó là giá tiền phải chăng. Vậy Dell Vostro 3510 V3510 có những điểm gì mà bạn cần biết? Hãy cùng GEARVN khám phá nào.', 3, 'Màu đen', 31),
('Laptop Dell Vostro 3520 5M2TT2', 1700.00, 'Laptop Dell Vostro 3520 5M2TT2 là dòng laptop sinh viên sở hữu thiết kế mỏng nhẹ với nhiều tính năng nổi bật giúp bạn nâng cao thành tích học tập, tăng thêm trải nghiệm với các tựa game mình yêu thích. Đặc biệt, với trọng lượng chưa đến 2kg bạn hoàn toàn có thể cất gọn trong balo mang đi đến bất kỳ đâu.', 3, 'Màu đen', 32),
('Laptop Dell Vostro 3430 71011900', 1790.00, 'Laptop Dell Vostro 3430 71011900 mang đến hiệu suất làm việc cao, xử lý mọi tác vụ nhanh chóng trong thiết kế gọn nhẹ đầy thanh lịch. Đây là một trong những sản phẩm laptop văn phòng phổ thông thu hút được nhiều sự quan tâm của khách hàng nhất tại GEARVN. Nếu bạn đang tìm kiếm một sản phẩm laptop học tập - làm việc mỗi ngày thì đây chính xác là lựa chọn dành cho bạn.', 3, 'Màu đen', 33),
('Laptop Dell Vostro 13 5320 V3I7005W', 2540.00, 'Dell Vostro 13 5320 V3I7005W Gray mang đến hiệu suất làm việc cao, xử lý mọi tác vụ nhanh chóng trong thiết kế gọn nhẹ đầy thanh lịch. Đây là một trong những sản phẩm laptop văn phòng phổ thông thu hút được nhiều sự quan tâm của khách hàng nhất tại GEARVN. Nếu bạn đang tìm kiếm một sản phẩm laptop học tập - làm việc mỗi ngày thì đây chính xác là lựa chọn dành cho bạn.', 3, 'Màu xám', 34),
('Laptop Dell XPS 13 Plus 9320 5CG56', 5799.00, 'Dell XPS 13 Plus 9320 5CG56 thuộc phân khúc laptop cao cấp đến từ thương hiệu Dell. Kiểu dáng hiện đại, cấu hình mạnh mẽ, kích thước mỏng nhẹ đáp ứng mọi nhu cầu công việc hằng ngày. Sở hữu màn hình Oled cực chuẩn nâng tầm trải nghiệm đồ họa trên Dell XPS. Dell XPS 13 có lớp vỏ máy tính được làm bằng kim loại cao cấp. Không chỉ đảm bảo được sự cứng cáp của máy mà còn gia tăng tính thẩm mỹ về ngoại hình. ', 3, 'Màu bạch kim', 35),
('Laptop HP Pavilion 15 eg3091TU 8C5L2PA', 2200.00, 'Laptop HP Pavilion 15 eg3091TU 8C5L2PA là sự kết hợp hoàn hảo giữa hiệu năng và thiết kế. Đây là dòng laptop cho sinh viên và nhân viên văn phòng phổ thông được đánh giá cao về độ bền và khả năng giải quyết công việc hằng ngày. Trang bị chip CPU Intel đời 13 công nghệ mới nhất cùng 16GB RAM và SSD lên đến 512 GB trên laptop giúp bạn có thể xử lý tốt mọi công việc văn phòng, bảng biểu, ứng dụng quản lý, phần mềm bán hàng mượt mà, ổn định.', 4, 'Màu sắc', 36),
('Laptop HP Pavilion 15 eg3112TU 8U6L9PA', 2200.00, 'Laptop HP Pavilion 15 eg3112TU 8U6L9PA là một chiếc laptop mỏng nhẹ, phổ thông mang vẻ đẹp hút mắt và tạo ấn tượng đối với khách hàng như học sinh - sinh viên, nhân viên văn phòng. Từng chi tiết thiết kế trên HP Pavilion 15 eg3112TU 8U6L9PA được trau chuốt và sắp đặt kĩ càng nhằm bộc lộ hết vẻ đẹp hiện đại và thời thượng của chiếc máy. Khoác lên vỏ lớp màu Natural Silver sang trọng cùng viền màn hình được thiết kế siêu mỏng, càng thể hiện được nét đẹp thanh thoát và trang nhã của sản phẩm.', 4, 'Màu sắc', 37),
('Laptop HP Pavilion 15 eg3093TU 8C5L4PA', 1900.00, 'Laptop HP Pavilion 15 eg3112TU 8C5L4PA là một chiếc laptop mỏng nhẹ, phổ thông mang vẻ đẹp hút mắt và tạo ấn tượng đối với khách hàng như học sinh - sinh viên, nhân viên văn phòng. Từng chi tiết thiết kế trên HP Pavilion 15 eg3112TU 8U6L9PA được trau chuốt và sắp đặt kĩ càng nhằm bộc lộ hết vẻ đẹp hiện đại và thời thượng của chiếc máy. Khoác lên vỏ lớp màu Natural Silver sang trọng cùng viền màn hình được thiết kế siêu mỏng, càng thể hiện được nét đẹp thanh thoát và trang nhã của sản phẩm.', 4, 'Màu sắc', 38),
('Laptop HP Pavilion 15 eg3111TU 8U6L8PA', 1920.00, 'Laptop HP Pavilion 15 eg3112TU 8U6L8PA là một chiếc laptop mỏng nhẹ, phổ thông mang vẻ đẹp hút mắt và tạo ấn tượng đối với khách hàng như học sinh - sinh viên, nhân viên văn phòng. Từng chi tiết thiết kế trên HP Pavilion 15 eg3112TU 8U6L9PA được trau chuốt và sắp đặt kĩ càng nhằm bộc lộ hết vẻ đẹp hiện đại và thời thượng của chiếc máy. Khoác lên vỏ lớp màu Natural Silver sang trọng cùng viền màn hình được thiết kế siêu mỏng, càng thể hiện được nét đẹp thanh thoát và trang nhã của sản phẩm.3', 4, 'Màu sắc', 39),
('Laptop HP Pavilion 15 EG0506TX 46M05PA', 19590000.00, 'Laptop HP Pavilion 15 EG0506TX 46M05PA có kích thước màn hình 15.6 inch, độ dày chỉ 17.9 mm và cân nặng 1.75 kg. Với kích thước mỏng nhẹ này bạn hoàn toàn có thể cầm máy bằng 1 tay dễ dàng, phù hợp với những ai thường xuyên thay đổi vị trí làm việc. Máy được thiết kế với phong cách tối giản màu Natural silver (Bạc), với logo HP sáng bóng đính giữa trung tâm mặt A (mặt trên) tạo điểm nhấn ấn tượng cho HP Pavilion 15 EG0506TX 46M05PA.', 4, 'Màu xám trắng', 40);

INSERT INTO User (fullName, email, phone, address, created_at, updated_at) VALUES
('Nguyễn Văn A', 'nva@gmail.com', '0123456789', '123 Đường 1, Quận 1', CURDATE(), CURDATE()),
('Trần Văn B', 'tvb@gmail.com', '0123456790', '456 Đường 2, Quận 2', CURDATE(), CURDATE()),
('Lê Văn C', 'lvc@gmail.com', '0123456701', '789 Đường 3, Quận 3', CURDATE(), CURDATE()),
('Phạm Văn D', 'pvd@gmail.com', '0123456710', '321 Đường 4, Quận 4', CURDATE(), CURDATE()),
('Võ Văn E', 'vve@gmail.com', '0123456721', '654 Đường 5, Quận 5', CURDATE(), CURDATE()),
('Bùi Văn F', 'bvf@gmail.com', '0123456732', '987 Đường 6, Quận 6', CURDATE(), CURDATE()),
('Huỳnh Văn G', 'hvg@gmail.com', '0123456743', '147 Đường 7, Quận 7', CURDATE(), CURDATE()),
('Ngô Văn H', 'nvh@gmail.com', '0123456754', '258 Đường 8, Quận 8', CURDATE(), CURDATE()),
('Dương Văn I', 'dvi@gmail.com', '0123456765', '369 Đường 9, Quận 9', CURDATE(), CURDATE()),
('Lý Văn J', 'lvj@gmail.com', '0123456776', '159 Đường 10, Quận 10', CURDATE(), CURDATE());

-- INSERT INTO Account (userName, email, password, role, userID) VALUES
-- ('user1', 'user1@gmail.com', 'password1', 1, 1),
-- ('user2', 'user2@gmail.com', 'password2', 1, 2),
-- ('user3', 'user3@gmail.com', 'password3', 1, 3);

INSERT INTO `Order` (orderDate, address, note, status, totalPrice, userID) VALUES
('2023-01-05', 'Ha Noi, Vietnam', 'Please deliver before noon', 1, 2000.00, 1),
('2023-01-06', 'Ho Chi Minh, Vietnam', 'Call on arrival', 2, 1500.00, 2);

INSERT INTO OrderDetails (quantity, totalPrice, note, orderID, productID) VALUES
(1, 1300.00, 'No special requirements', 1, 1),
(2, 1400.00, 'Include gift wrapping', 2, 2);

INSERT INTO Cart (userID) VALUES
(1),
(2);

INSERT INTO Item(cartID, productID, quantity) VALUES
(1, 1, 1),
(1, 2, 2), 
(1, 3, 3),
(2, 2, 2);

INSERT INTO Payment (date, method, orderID) VALUES
('2023-01-07', 'Credit Card', 1),
('2023-01-08', 'PayPal', 2);


INSERT INTO Gallery (imageURL1, imageURL2, imageURL3, imageURL4) VALUES
('image/Apple/laptop11.jpg', 'image/Apple/laptop12.jpg', 'image/Apple/laptop13.jpg', 'image/Apple/laptop14.jpg'),
('image/Apple/laptop21.jpg', 'image/Apple/laptop22.jpg', 'image/Apple/laptop23.jpg', 'image/Apple/laptop24.jpg'),
('image/Apple/laptop31.jpg', 'image/Apple/laptop32.jpg', 'image/Apple/laptop33.jpg', 'image/Apple/laptop34.jpg'),
('image/Apple/laptop41.jpg', 'image/Apple/laptop42.jpg', 'image/Apple/laptop43.jpg', 'image/Apple/laptop44.jpg'),
('image/Apple/laptop51.jpg', 'image/Apple/laptop52.jpg', 'image/Apple/laptop53.jpg', 'image/Apple/laptop54.jpg'),
('image/Asus/laptop11.jpg', 'image/Asus/laptop12.jpg', 'image/Asus/laptop13.jpg', 'image/Asus/laptop14.jpg'),
('image/Asus/laptop21.jpg', 'image/Asus/laptop22.jpg', 'image/Asus/laptop23.jpg', 'image/Asus/laptop24.jpg'),
('image/Asus/laptop31.jpg', 'image/Asus/laptop32.jpg', 'image/Asus/laptop33.jpg', 'image/Asus/laptop34.jpg'),
('image/Asus/laptop41.jpg', 'image/Asus/laptop42.jpg', 'image/Asus/laptop43.jpg', 'image/Asus/laptop44.jpg'),
('image/Asus/laptop51.jpg', 'image/Asus/laptop52.jpg', 'image/Asus/laptop53.jpg', 'image/Asus/laptop54.jpg'),
('image/Dell/laptop11.jpg', 'image/Dell/laptop12.jpg', 'image/Dell/laptop13.jpg', 'image/Dell/laptop14.jpg'),
('image/Dell/laptop21.jpg', 'image/Dell/laptop22.jpg', 'image/Dell/laptop23.jpg', 'image/Dell/laptop24.jpg'),
('image/Dell/laptop31.jpg', 'image/Dell/laptop32.jpg', 'image/Dell/laptop33.jpg', 'image/Dell/laptop34.jpg'),
('image/Dell/laptop41.jpg', 'image/Dell/laptop42.jpg', 'image/Dell/laptop43.jpg', 'image/Dell/laptop44.jpg'),
('image/Dell/laptop51.jpg', 'image/Dell/laptop52.jpg', 'image/Dell/laptop53.jpg', 'image/Dell/laptop54.jpg'),
('image/HP/laptop11.jpg', 'image/HP/laptop12.jpg', 'image/HP/laptop13.jpg', 'image/HP/laptop14.jpg'),
('image/HP/laptop21.jpg', 'image/HP/laptop22.jpg', 'image/HP/laptop23.jpg', 'image/HP/laptop24.jpg'),
('image/HP/laptop31.jpg', 'image/HP/laptop32.jpg', 'image/HP/laptop33.jpg', 'image/HP/laptop34.jpg'),
('image/HP/laptop41.jpg', 'image/HP/laptop42.jpg', 'image/HP/laptop43.jpg', 'image/HP/laptop44.jpg'),
('image/HP/laptop51.jpg', 'image/HP/laptop52.jpg', 'image/HP/laptop53.jpg', 'image/HP/laptop54.jpg'),

('image/Apple/laptop11.jpg', 'image/Apple/laptop12.jpg', 'image/Apple/laptop13.jpg', 'image/Apple/laptop14.jpg'),
('image/Apple/laptop21.jpg', 'image/Apple/laptop22.jpg', 'image/Apple/laptop23.jpg', 'image/Apple/laptop24.jpg'),
('image/Apple/laptop31.jpg', 'image/Apple/laptop32.jpg', 'image/Apple/laptop33.jpg', 'image/Apple/laptop34.jpg'),
('image/Apple/laptop41.jpg', 'image/Apple/laptop42.jpg', 'image/Apple/laptop43.jpg', 'image/Apple/laptop44.jpg'),
('image/Apple/laptop51.jpg', 'image/Apple/laptop52.jpg', 'image/Apple/laptop53.jpg', 'image/Apple/laptop54.jpg'),
('image/Asus/laptop11.jpg', 'image/Asus/laptop12.jpg', 'image/Asus/laptop13.jpg', 'image/Asus/laptop14.jpg'),
('image/Asus/laptop21.jpg', 'image/Asus/laptop22.jpg', 'image/Asus/laptop23.jpg', 'image/Asus/laptop24.jpg'),
('image/Asus/laptop31.jpg', 'image/Asus/laptop32.jpg', 'image/Asus/laptop33.jpg', 'image/Asus/laptop34.jpg'),
('image/Asus/laptop41.jpg', 'image/Asus/laptop42.jpg', 'image/Asus/laptop43.jpg', 'image/Asus/laptop44.jpg'),
('image/Asus/laptop51.jpg', 'image/Asus/laptop52.jpg', 'image/Asus/laptop53.jpg', 'image/Asus/laptop54.jpg'),
('image/Dell/laptop11.jpg', 'image/Dell/laptop12.jpg', 'image/Dell/laptop13.jpg', 'image/Dell/laptop14.jpg'),
('image/Dell/laptop21.jpg', 'image/Dell/laptop22.jpg', 'image/Dell/laptop23.jpg', 'image/Dell/laptop24.jpg'),
('image/Dell/laptop31.jpg', 'image/Dell/laptop32.jpg', 'image/Dell/laptop33.jpg', 'image/Dell/laptop34.jpg'),
('image/Dell/laptop41.jpg', 'image/Dell/laptop42.jpg', 'image/Dell/laptop43.jpg', 'image/Dell/laptop44.jpg'),
('image/Dell/laptop51.jpg', 'image/Dell/laptop52.jpg', 'image/Dell/laptop53.jpg', 'image/Dell/laptop54.jpg'),
('image/HP/laptop11.jpg', 'image/HP/laptop12.jpg', 'image/HP/laptop13.jpg', 'image/HP/laptop14.jpg'),
('image/HP/laptop21.jpg', 'image/HP/laptop22.jpg', 'image/HP/laptop23.jpg', 'image/HP/laptop24.jpg'),
('image/HP/laptop31.jpg', 'image/HP/laptop32.jpg', 'image/HP/laptop33.jpg', 'image/HP/laptop34.jpg'),
('image/HP/laptop41.jpg', 'image/HP/laptop42.jpg', 'image/HP/laptop43.jpg', 'image/HP/laptop44.jpg'),
('image/HP/laptop51.jpg', 'image/HP/laptop52.jpg', 'image/HP/laptop53.jpg', 'image/HP/laptop54.jpg');
INSERT INTO Product_Gallery (productID, galleryID) VALUES
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
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40);

select *from Gallery;
select *from ProductDetail;
select *from Product;
SELECT fullName, email, phone, address, created_at
FROM User;
SELECT cartItemID, productID, quantity FROM Item WHERE cartID = 1;
select *from Item;



DROP TABLE IF EXISTS Product_Gallery;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS CartItems;
DROP TABLE IF EXISTS Cart;
DROP TABLE IF EXISTS OrderDetails;
DROP TABLE IF EXISTS `Order`;
DROP TABLE IF EXISTS Account;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS ProductDetail;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Brand;
DROP TABLE IF EXISTS Gallery;
DROP DATABASE IF EXISTS web_panvn;




DELIMITER // thử nghiệm
CREATE TRIGGER check_before_insert
BEFORE INSERT ON Item
FOR EACH ROW
BEGIN
    DECLARE existing_quantity INT;
    SET existing_quantity = (SELECT quantity FROM Item WHERE productID = NEW.productID AND cartID = NEW.cartID);
    IF existing_quantity IS NOT NULL THEN
        UPDATE Item SET quantity = existing_quantity + NEW.quantity WHERE productID = NEW.productID AND cartID = NEW.cartID;
    END IF;
END; //
DELIMITER ;

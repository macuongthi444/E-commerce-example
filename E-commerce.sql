
use [10.Assignment]

CREATE TABLE [LienHe](
	
	[HoVaTen] [nvarchar](256) NOT NULL PRIMARY KEY,		
	[SDT] [nvarchar](256) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,	
	[DiaChi] [nvarchar](256) NOT NULL,
	[TieuDe][varchar](150) NOT NULL,
	[NoiDung] [nvarchar](256) NOT NULL,
)
CREATE TABLE [Person](
	[PersonID] [int] NOT NULL PRIMARY KEY,		
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,	
	[LoginID] [nvarchar](256) NOT NULL,
	[Password][varchar](150) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[amount] [float] NULL,
	[isSell][int] NOT NULL,
	[isAdmin] [int] NOT NULL,
	
)
CREATE TABLE [Type](
	[TypeID] [int] NOT NULL PRIMARY KEY,
	[Name][nvarchar](25) NOT NULL,

)
CREATE TABLE [Product](
	[ProductID] [int] NOT NULL PRIMARY KEY,
	[Name][nvarchar](256) NOT NULL,	
	[image][nvarchar](256),
	[ListPrice] [int] NOT NULL,
	[SellStartDate] [date] NOT NULL,
	[description][nvarchar](4000),
	[TypeID] [int] NOT NULL,
	[SellID][int]NOT NULL,
	[quantity] [int] NULL,
	CONSTRAINT [FK_Product_Type] FOREIGN KEY([TypeID]) REFERENCES[Type]([TypeID]),
	CONSTRAINT [FK_Product_Person] FOREIGN KEY([SellID]) REFERENCES[Person]([PersonID]),

)
CREATE TABLE [dbo].[Order](
[OrderID] [int] NOT NULL PRIMARY KEY,
[date] [date] NOT NULL,
[PersonID] [int] NOT NULL,
[totalmoney] [money] NULL,
CONSTRAINT [FK_Order_Person] FOREIGN KEY([PersonID]) REFERENCES[Person]([PersonID]),
)
CREATE TABLE [dbo].[OrderLine](
[OrderID] [int] NOT NULL,
[ProductID] [int] NOT NULL,
[quantity] [float] NOT NULL,
[price] [float] NOT NULL,
CONSTRAINT [FK_OrderLine_Product] FOREIGN KEY([ProductID]) REFERENCES[Product]([ProductID]),
CONSTRAINT [FK_OrderLine_Order] FOREIGN KEY([OrderID]) REFERENCES[Order]([OrderID]),
)


Insert [Person](PersonID,[FirstName],[LastName],[LoginID],[Password],[BirthDate],[amount],[isSell],[isAdmin] )
Values  (1,'Ken','Sánchez','adventure-works\ken0','123','1963-03-02',0,1,0),
        (2,'Terri','Duffy','adventure-works\terri0','123','1965-09-01',0,1,0),
	    (3,'Roberto','Tamburello','adventure-works\roberto0','123','1968-12-13',0,1,0),
		(4,'Rob','Walters','adventure-works\rob0','123','1969-01-23',0,1,0),
		(5,'Gail','Erickson','adventure-works\gail0','123','1946-10-29',0,1,0),
		(6,'Jossef','Goldberg','adventure-works\jossef0','123','1953-04-11',0,1,0),
		(7,'Dylan','Miller','adventure-works\dylan0','123','1981-03-27',0,0,1),
		(8,'Diane','Margheim','adventure-works\diane1','123','1980-07-06',0,0,1),
		(9,'Gigi','Matthew','adventure-works\gigi0','123','1973-02-21',0,0,1),
		(10,'Michael','Raheem','adventure-works\michael6','123','1979-01-01',0,0,1),
		(11,'Van','Hoang','LanhKi','1231','2002-12-16',100000000,1,1)
Insert [Type]([TypeID],[Name] )
values
(1,N'BEGONIA-THU HẢI ĐƯỜNG'),
(2,N'VẠN THỌ HOÀNG GIA' ),
(3,N'VẠN THỌ PHÁP'),
(4,N'TORENIA-TÔ LIÊN'),
(5,N'PHLOX-THANH TRÚC'),
(6,N'Petunia-Dạ yên thảo'),
(7,N'DIANTHUS-CẨM CHƯỚNG'),
(8,N'Helianthus-Hướng dương'),
(9,N'Gerbera-Đồng tiền'),
(10,N'Geranium-Phong lữ')



Insert [Product]([ProductID],[Name],[image],[ListPrice],[SellStartDate],[description],[TypeID],[SellID],[quantity] )
values  (11,N'BEGONIA-THU HẢI ĐƯỜNG-Red White','https://floralseedvn.com/datafiles/galagy/16526846649414_beg101-w.jpg',3,'2002 -06-01',N'Cây phân nhánh tốt, sai hoa. Ra hoa sớm hơn so với những dòng thu hải đường khác nên là sự lựa chọn tối ưu dành cho nhà vườn. Thích hợp trồng chậu đứng, chậu treo và trang trí cảnh quan.

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 20-25 0C
Hạt bọc phấn. 
Phủ hạt: Không
Nảy mầm: 10-14 ngày
Đường kính hoa: 2-3 cm 
Chiều cao cây: 15-25 cm. 
Sang chậu (từ ngày gieo hạt): 40-50  ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-50 ngày',1,11,500),



		(12,N'BEGONIA-THU HẢI ĐƯỜNG-Red','https://floralseedvn.com/datafiles/galagy/thumb_16526846658099_beg102-w.jpg',3,'2002 -06-01',N'Cây phân nhánh tốt, sai hoa. Ra hoa sớm hơn so với những dòng thu hải đường khác nên là sự lựa chọn tối ưu dành cho nhà vườn. Thích hợp trồng chậu đứng, chậu treo và trang trí cảnh quan.

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 20-25 0C
Hạt bọc phấn. 
Phủ hạt: Không
Nảy mầm: 10-14 ngày
Đường kính hoa: 2-3 cm 
Chiều cao cây: 15-25 cm. 
Sang chậu (từ ngày gieo hạt): 40-50  ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-50 ngày',1,11,500),



		(13,N'BEGONIA-THU HẢI ĐƯỜNG-Pink','https://floralseedvn.com/datafiles/galagy/thumb_16526846658042_beg103-w.jpg',3,'2002 -06-01',N'Cây phân nhánh tốt, sai hoa. Ra hoa sớm hơn so với những dòng thu hải đường khác nên là sự lựa chọn tối ưu dành cho nhà vườn. Thích hợp trồng chậu đứng, chậu treo và trang trí cảnh quan.

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 20-25 0C
Hạt bọc phấn. 
Phủ hạt: Không
Nảy mầm: 10-14 ngày
Đường kính hoa: 2-3 cm 
Chiều cao cây: 15-25 cm. 
Sang chậu (từ ngày gieo hạt): 40-50  ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-50 ngày',1,11,500),



		(21,N'Vạn thọ cao Hoàng Gia','https://floralseedvn.com/datafiles/setone/thumb_1653013784_Art-Marigold-Sovereign-Gold-1.jpg',5,'2002-07-01',N'Là giống hoa Vạn thọ cao vượt trội nhất trên thị trường. Cây to, khỏe, đường kính hoa lớn, màu hoa tươi phù hợp trồng vào dịp Tết Âm lịch.

Chiều cao cây:
+ Vụ đông xuân: 70-80 cm
+ Vụ hè thu: 90-100 cm
Thời gian bắt đầu thu hoạch:
+ Vụ đông xuân: 65-75 ngày
+ Vụ hè thu: 75-80 ngày',2,11,500),



		(22,N'Vạn thọ lỡ Hoàng gia','https://floralseedvn.com/datafiles/setone/thumb_1653013885_W.jpg',5,'2002-07-01',N'Cây khỏe, tán cây và đường kính lớn, hoa vun tròn, nở chặt, chiều cao cây trung bình, phú hợp trồng chậu lớn.

Chiều cao cây:
+ Vụ đông xuân: 50-55 cm
+ Vụ hè thu: 60-65 cm
Thời gian bắt đầu thu hoạch:
+ Vụ đông xuân: 58-63 ngày
+ Vụ hè thu: 70-75 ngày',2,11 ,500),



		(23,N'Vạn thọ lùn Hoàng Gia','https://floralseedvn.com/datafiles/setone/thumb_1497853405_hoa-van-tho-01-A.jpg',5,'2002-07-01',N'Là dòng Vạn thọ F1 được hầu hết các nhà vườn biết đến: sớ hoa nhuyễn, đường kính hoa lớn, mặt hoa vung tròn, màu sắc hoa rực rỡ là những đặc điểm nổi bật của dòng sản phẩm này.

Chiều cao cây:
+ Vụ đông xuân: 35-45 cm
+ Vụ hè thu: 55-65 cm
Thời gian bắt đầu thu hoạch:
+ Vụ đông xuân: 58-63 ngày
+ Vụ hè thu: 70-75 ngày
 ',2,11 ,500),



		(31,N'VẠN THỌ PHÁP-Hot Pak','https://floralseedvn.com/datafiles/setone/thumb_1653012896_W.jpg',4,'2002-08-01 ',N'Cây có chiều cao thấp tự nhiên, đây là sản phẩm được lai tạo đặc biệt cho những nơi có nhiệt độ và độ ẩm cao. Điểm đặc biệt của loại hoa này là trồng vào mùa hè nhưng cây vẫn thấp và vẫn tiếp tục ra hoa. 
Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 25-300C
Hạt thô. Trọng lượng 240-325 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 4-5 cm
Chiều cao cây: 15-18 cm
Sang chậu (từ ngày gieo hạt): 15-20 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 20-30 ngày',3,11,500),



		(32,N'VẠN THỌ PHÁP-Bonanza','https://floralseedvn.com/datafiles/setone/thumb_1653012988_W.jpg',4,'2002-08-01 ',N'Là dòng hoa vạn thọ Pháp bông kép lớn nhất so với những 
loại tương tự. Cây cho ra hoa sớm, phù hợp trồng với mọi 
điều kiện thời tiết.
Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 25-300C
Hạt thô. Trọng lượng 300-400 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 5-6 cm
Chiều cao cây: 25-30 cm
Sang chậu (từ ngày gieo hạt): 15-20 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 20-30 ngày',3,11,500),



		(33,N'VẠN THỌ PHÁP-Lima','https://floralseedvn.com/datafiles/setone/thumb_1653013331_W2.jpg',4,'2002-08-01 ',N'Dòng này có đường kính bông lớn, cây thấp, có nhiều nhánh, cây cho nhiều hoa, có nhiều lớp cánh. Cánh hoa có hai màu đỏ và vàng tạo nên sự tương phản rõ rệt, làm cho chậu hoa tăng thêm sự rực rỡ

Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 25-300C
Hạt thô. Trọng lượng 280-320 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Chiều cao cây: 25-30 cm
Sang chậu (từ ngày gieo hạt): 15-20 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 30-35 ngày
Đường kính hoa: 4-5 cm',3,11,500),



		(34,N'VẠN THỌ PHÁP-Alaska','https://floralseedvn.com/datafiles/setone/thumb_1653013390_W.jpg',4,'2002-08-01 ',N'Là dòng hoa chuyên trồng cho trang trí cảnh quan
Thân cây khỏe, tán cây lớn và đẹp. 
Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 25-300C
Hạt thô. Trọng lượng 335-370 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 4-5 cm
Chiều cao cây: 25-30 cm. Tán cây 15-20 cm
Sang chậu (từ ngày gieo hạt): 15-20 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 30-35 ngày',3,11,500),



		(41,N'TORENIA-TÔ LIÊN-Burgundy','https://floralseedvn.com/datafiles/galagy/thumb_15780365481423_tor031-burgundy.jpg',7,'2002-12-01 ',N'Dòng này có màu sắc đa dạng, cây dễ chăm sóc phù hợp với thời tiết nắng nóng, thích hợp cho việc trồng thảm đặc biệt là thảm trộn nhiều màu hoa làm cho không gian rất nổi bật.
Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 25-300C
Hạt bọc. Trọng lượng 1000-1150 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-6 ngày
Đường kính hoa: 2.5-3 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 35-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-50 ngày',4,11,500),



		(42,N'TORENIA-TÔ LIÊN-Deep Blue','https://floralseedvn.com/datafiles/galagy/thumb_15780365495361_tor032-deep-blue-copy.jpg',7,'2002-12-01 ',N'Dòng này có màu sắc đa dạng, cây dễ chăm sóc phù hợp với thời tiết nắng nóng, thích hợp cho việc trồng thảm đặc biệt là thảm trộn nhiều màu hoa làm cho không gian rất nổi bật.
Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 25-300C
Hạt bọc. Trọng lượng 1000-1150 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-6 ngày
Đường kính hoa: 2.5-3 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 35-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-50 ngày',4,11,500),



		(43,N'TORENIA-TÔ LIÊN-Lemon','https://floralseedvn.com/datafiles/galagy/thumb_15780365495650_tor033-lemon-drop-copy.jpg',7,'2002-12-01 ',N'Dòng này có màu sắc đa dạng, cây dễ chăm sóc phù hợp với thời tiết nắng nóng, thích hợp cho việc trồng thảm đặc biệt là thảm trộn nhiều màu hoa làm cho không gian rất nổi bật.
Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 25-300C
Hạt bọc. Trọng lượng 1000-1150 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-6 ngày
Đường kính hoa: 2.5-3 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 35-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-50 ngày',4,11,500),



		(44,N'TORENIA-TÔ LIÊN-Magenta','https://floralseedvn.com/datafiles/galagy/thumb_15780365508206_tor034--2.jpg',7,'2002-12-01 ',N'Dòng này có màu sắc đa dạng, cây dễ chăm sóc phù hợp với thời tiết nắng nóng, thích hợp cho việc trồng thảm đặc biệt là thảm trộn nhiều màu hoa làm cho không gian rất nổi bật.
Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 25-300C
Hạt bọc. Trọng lượng 1000-1150 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-6 ngày
Đường kính hoa: 2.5-3 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 35-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-50 ngày',4,11,500),



		(51,N'PHLOX-THANH TRÚC-White','https://floralseedvn.com/datafiles/galagy/thumb_15782752341414_fphl081-white-copy.jpg',6,'2002-05-01 ',N'Cây thấp tự nhiên, hoa nở sớm và đồng loạt, không cần sử dụng chất điều hòa sinh trưởng.

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt thô. Trọng lượng 700-950 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 1-2 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 40-50 ngày',5,11,500),



		(52,N'PHLOX-THANH TRÚC-Light Blue','https://floralseedvn.com/datafiles/galagy/thumb_15782752346132_fphl082-light-blue-copy.jpg',6,'2002-05-01 ',N'Cây thấp tự nhiên, hoa nở sớm và đồng loạt, không cần sử dụng chất điều hòa sinh trưởng.

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt thô. Trọng lượng 700-950 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 1-2 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 40-50 ngày',5,11,500),



		(53,N'PHLOX-THANH TRÚC-Salmon','https://floralseedvn.com/datafiles/galagy/thumb_15782752355191_fphl083-salmon-1.jpg',6,'2002-05-01 ',N'Cây thấp tự nhiên, hoa nở sớm và đồng loạt, không cần sử dụng chất điều hòa sinh trưởng.

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt thô. Trọng lượng 700-950 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 1-2 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 40-50 ngày',5,11,500),



		(54,N'PHLOX-THANH TRÚC-Purple Violet','https://floralseedvn.com/datafiles/galagy/thumb_15782752361492_fphl084-purple-violet-copy.jpg',6,'2002-05-01 ',N'Cây thấp tự nhiên, hoa nở sớm và đồng loạt, không cần sử dụng chất điều hòa sinh trưởng.

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt thô. Trọng lượng 700-950 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 1-2 cm
Chiều cao cây: 20 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 40-50 ngày',5,11,500),



		(611,N'PETUNIA-DẠ YÊN THẢO ĐƠN-HERA VEINED-Blue','https://floralseedvn.com/datafiles/galagy/thumb_15651457574414_blue.jpg',6,'2002-05-01',N'Điểm nổi bật của dòng hoa này là đường kính hoa lớn, cánh hoa có gân làm phong phú thêm cho bộ sưu tập hoa Dạ yên thảo.

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 1000 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 7-8 cm
Chiều cao cây: 25-38 cm Tán cây: 25-30 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(612,N'PETUNIA-DẠ YÊN THẢO ĐƠN-HERA VEINED-Orchid','https://floralseedvn.com/datafiles/galagy/thumb_15651457586988_orchid-copy.jpg',6,'2002-05-01',N'Điểm nổi bật của dòng hoa này là đường kính hoa lớn, cánh hoa có gân làm phong phú thêm cho bộ sưu tập hoa Dạ yên thảo.

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 1000 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 7-8 cm
Chiều cao cây: 25-38 cm Tán cây: 25-30 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(613,N'PETUNIA-DẠ YÊN THẢO ĐƠN-HERA STAR-Red Star','https://floralseedvn.com/datafiles/galagy/thumb_15652509384553_32324-70065669-trituniaredstar_m.jpg',6,'2002-05-01',N'Là dòng hoa Dạ yên thảo đứng được ưa chuộng trên thị trường do cánh hoa có sọc. Với đặc tính cây khỏe và  hoa nở đồng đều. Dạ yên thảo sọc là chủng loại được hầu hết các nhà vườn lựa chọn.

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 700-1000 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 7-8 cm
Chiều cao cây: 20-25 cm
Sang chậu (từ ngày gieo hạt): 25-30 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',6,11,500),



		(614,N'PETUNIA-DẠ YÊN THẢO ĐƠN-HERA STAR-Rose Star','https://floralseedvn.com/datafiles/galagy/thumb_15652509386605_32326-70065671-trituniarosestar_m.jpg',6,'2002-05-01',N'Là dòng hoa Dạ yên thảo đứng được ưa chuộng trên thị trường do cánh hoa có sọc. Với đặc tính cây khỏe và  hoa nở đồng đều. Dạ yên thảo sọc là chủng loại được hầu hết các nhà vườn lựa chọn.

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 700-1000 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 7-8 cm
Chiều cao cây: 20-25 cm
Sang chậu (từ ngày gieo hạt): 25-30 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',6,11,500),



		(615,N'PETUNIA-DẠ YÊN THẢO ĐƠN-HERA STAR-Blue','https://floralseedvn.com/datafiles/galagy/thumb_15652509426762_35189-70065668-trituniabluestar_s.jpg',6,'2002-05-01',N'Là dòng hoa Dạ yên thảo đứng được ưa chuộng trên thị trường do cánh hoa có sọc. Với đặc tính cây khỏe và  hoa nở đồng đều. Dạ yên thảo sọc là chủng loại được hầu hết các nhà vườn lựa chọn.

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 700-1000 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 7-8 cm
Chiều cao cây: 20-25 cm
Sang chậu (từ ngày gieo hạt): 25-30 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',6,11,500),



		(616,N'PETUNIA-DẠ YÊN THẢO ĐƠN-HERA FROST-Red Frost','https://floralseedvn.com/datafiles/galagy/thumb_15652519317336_085.jpg',6,'2002-05-01',N'Cánh hoa có viền trắng tạo nên sự tương phản đặc biệt điều này làm cho chậu hoa thêm phần lộng lẫy

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 700-1000 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 7-8 cm
Chiều cao cây: 25-38 cm
Sang chậu (từ ngày gieo hạt):35-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(617,N'PETUNIA-DẠ YÊN THẢO ĐƠN-HERA FROST-Blue','https://floralseedvn.com/datafiles/galagy/thumb_15652519339307_pet082.jpg',6,'2002-05-01',N'Cánh hoa có viền trắng tạo nên sự tương phản đặc biệt điều này làm cho chậu hoa thêm phần lộng lẫy

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 700-1000 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 7-8 cm
Chiều cao cây: 25-38 cm
Sang chậu (từ ngày gieo hạt):35-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(618,N'PETUNIA-DẠ YÊN THẢO ĐƠN-CAPELLA- Red','https://floralseedvn.com/datafiles/galagy/thumb_16535284639435_pet301-w.jpg',6,'2002-05-01',N'Hầu hết hoa Dạ yên thảo đều cần dùng chất điều hòa sinh trưởng. Tuy nhiên dòng hoa này có dáng cây thấp, cây phát tán đều nên không cần dùng chất điều hoa sinh trưởng. Dòng này đã được cải thiện và khắc phục những nhược điểm của hoa Dạ yên thảo đứng nên giảm được chi phí sản xuất. Màu Deep Pink giống như màu Rose khi cường độ ánh sáng thấp, khi cường độ ánh sáng cao màu Rose sẽ đậm hơn màu Deep Pink

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-280C
Hạt bọc phấn. Trọng lượng 750-1300 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 8-9 cm
Chiều cao cây: 15-25 cm Tán cây: 20-30 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(619,N'PETUNIA-DẠ YÊN THẢO ĐƠN-CAPELLA-Rose','https://floralseedvn.com/datafiles/galagy/thumb_16535284639930_pet302-w.jpg',6,'2002-05-01',N'Hầu hết hoa Dạ yên thảo đều cần dùng chất điều hòa sinh trưởng. Tuy nhiên dòng hoa này có dáng cây thấp, cây phát tán đều nên không cần dùng chất điều hoa sinh trưởng. Dòng này đã được cải thiện và khắc phục những nhược điểm của hoa Dạ yên thảo đứng nên giảm được chi phí sản xuất. Màu Deep Pink giống như màu Rose khi cường độ ánh sáng thấp, khi cường độ ánh sáng cao màu Rose sẽ đậm hơn màu Deep Pink

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-280C
Hạt bọc phấn. Trọng lượng 750-1300 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 8-9 cm
Chiều cao cây: 15-25 cm Tán cây: 20-30 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(620,N'PETUNIA-DẠ YÊN THẢO ĐƠN-CAPELLA-White','https://floralseedvn.com/datafiles/galagy/thumb_16535284635041_pet303-w.jpg',6,'2002-05-01',N'Hầu hết hoa Dạ yên thảo đều cần dùng chất điều hòa sinh trưởng. Tuy nhiên dòng hoa này có dáng cây thấp, cây phát tán đều nên không cần dùng chất điều hoa sinh trưởng. Dòng này đã được cải thiện và khắc phục những nhược điểm của hoa Dạ yên thảo đứng nên giảm được chi phí sản xuất. Màu Deep Pink giống như màu Rose khi cường độ ánh sáng thấp, khi cường độ ánh sáng cao màu Rose sẽ đậm hơn màu Deep Pink

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-280C
Hạt bọc phấn. Trọng lượng 750-1300 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 8-9 cm
Chiều cao cây: 15-25 cm Tán cây: 20-30 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(621,N'PETUNIA-DẠ YÊN THẢO ĐƠN-CAPELLA-Blue','https://floralseedvn.com/datafiles/galagy/thumb_16535284637618_pet304-w.jpg',6,'2002-05-01',N'Hầu hết hoa Dạ yên thảo đều cần dùng chất điều hòa sinh trưởng. Tuy nhiên dòng hoa này có dáng cây thấp, cây phát tán đều nên không cần dùng chất điều hoa sinh trưởng. Dòng này đã được cải thiện và khắc phục những nhược điểm của hoa Dạ yên thảo đứng nên giảm được chi phí sản xuất. Màu Deep Pink giống như màu Rose khi cường độ ánh sáng thấp, khi cường độ ánh sáng cao màu Rose sẽ đậm hơn màu Deep Pink

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 22-280C
Hạt bọc phấn. Trọng lượng 750-1300 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 8-9 cm
Chiều cao cây: 15-25 cm Tán cây: 20-30 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',6,11,500),



		(622,N'PETUNIA-DẠ YÊN THẢO KÉP-DOUBLE-Double Cascade Valentine','https://floralseedvn.com/datafiles/galagy/thumb_15650800494174_double-cascade-valentine.jpg',6,'2002-05-01',N'Chủng loại cho nhiều màu sắc đa dạng bao gồm cả màu viền và màu đỏ, riêng đối với màu viền lá có hình răng cưa tạo nên sự khác biệt. Cây cho nhiều nhánh, hoa kép, đường kính hoa lớn từ 10-13 cm. Thoạt nhìn trông giống như hoa cẩm chướng (Carnation)

Thích hợp trồng thời tiết mát, nắng nhiều
Nhiệt độ gieo trồng: 22-280C
Hạt bọc phấn. Trọng lượng 950 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 10-13 cm
Chiều cao cây: 25-38 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 40-50 ngày',6,11,500),



		(623,N'PETUNIA-DẠ YÊN THẢO KÉP-CAPELLA-Purple','https://floralseedvn.com/datafiles/galagy/thumb_15650800503290_fpet002-purple-a.jpg',6,'2002-05-01',N'Chủng loại cho nhiều màu sắc đa dạng bao gồm cả màu viền và màu đỏ, riêng đối với màu viền lá có hình răng cưa tạo nên sự khác biệt. Cây cho nhiều nhánh, hoa kép, đường kính hoa lớn từ 10-13 cm. Thoạt nhìn trông giống như hoa cẩm chướng (Carnation)

Thích hợp trồng thời tiết mát, nắng nhiều
Nhiệt độ gieo trồng: 22-280C
Hạt bọc phấn. Trọng lượng 950 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 10-13 cm
Chiều cao cây: 25-38 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 40-50 ngày',6,11,500),



		(624,N'PETUNIA-DẠ YÊN THẢO KÉP-CAPELLA-Rose','https://floralseedvn.com/datafiles/galagy/thumb_15650800502006_fpet004-rose-a.jpg',6,'2002-05-01',N'Chủng loại cho nhiều màu sắc đa dạng bao gồm cả màu viền và màu đỏ, riêng đối với màu viền lá có hình răng cưa tạo nên sự khác biệt. Cây cho nhiều nhánh, hoa kép, đường kính hoa lớn từ 10-13 cm. Thoạt nhìn trông giống như hoa cẩm chướng (Carnation)

Thích hợp trồng thời tiết mát, nắng nhiều
Nhiệt độ gieo trồng: 22-280C
Hạt bọc phấn. Trọng lượng 950 hạt/gr
Phủ hạt: Không
Nảy mầm: 4-5 ngày
Đường kính hoa: 10-13 cm
Chiều cao cây: 25-38 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 40-50 ngày',6,11,500),



		(625,N'PETUNIA-DẠ YÊN THẢO RŨ-WAVE-Misty Lilac','https://floralseedvn.com/datafiles/galagy/thumb_15660067897445_fpet191-misty-lilac.jpg',6,'2002-05-01',N'Đặc điểm của dòng hoa rũ này là hoa nở dọc theo các nhánh và nở liên tục. Dòng Wave phù hợp trồng được ở cả hai điều kiện thời tiết nóng và lạnh. 
Màu Blue, thời gian ra hoa tương tự như màu Purple Classic và màu Pink. 
Màu Lavender thời gian ra hoa tương tự như màu Misty Lilac. 
Màu Misty Lilac hoa có thể xuất hiện một ít điểm trắng khi cây được trồng ở cường độ ánh sáng cao hoặc sử dụng chất điều hòa tăng trưởng. Chiều cao cây của màu này cao hơn những màu khác. 
Màu Purple cần thời gian chiếu sáng trong ngày từ 10 -11 tiếng và ra hoa sớm hơn màu Purple Classic từ 12-14 ngày. 
Màu Purple Classic ra hoa trễ hơn khoảng 7 ngày so với màu Lavender, Misty Lilac và Rose. 
Nên sử dụng chất điều hòa tăng trưởng để giúp cho hoa to, tán cây đều và nhiều hoa hơn.
Cây rũ sâu: 90-120 cm
 
Thích hợp trồng thời tiết mát, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 1200 hạt/gr
Phủ hạt: Không
Nảy mầm: 3-5 ngày
Đường kính hoa: 5-6 cm
Chiều cao cây: 12-18 cm
Sang chậu (từ ngày gieo hạt): 30-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',6,11,500),



		(626,N'PETUNIA-DẠ YÊN THẢO RŨ-WAVE-Lavender','https://floralseedvn.com/datafiles/galagy/thumb_15660067892176_fpet192-lavender.jpg',6,'2002-05-01',N'Đặc điểm của dòng hoa rũ này là hoa nở dọc theo các nhánh và nở liên tục. Dòng Wave phù hợp trồng được ở cả hai điều kiện thời tiết nóng và lạnh. 
Màu Blue, thời gian ra hoa tương tự như màu Purple Classic và màu Pink. 
Màu Lavender thời gian ra hoa tương tự như màu Misty Lilac. 
Màu Misty Lilac hoa có thể xuất hiện một ít điểm trắng khi cây được trồng ở cường độ ánh sáng cao hoặc sử dụng chất điều hòa tăng trưởng. Chiều cao cây của màu này cao hơn những màu khác. 
Màu Purple cần thời gian chiếu sáng trong ngày từ 10 -11 tiếng và ra hoa sớm hơn màu Purple Classic từ 12-14 ngày. 
Màu Purple Classic ra hoa trễ hơn khoảng 7 ngày so với màu Lavender, Misty Lilac và Rose. 
Nên sử dụng chất điều hòa tăng trưởng để giúp cho hoa to, tán cây đều và nhiều hoa hơn.
Cây rũ sâu: 90-120 cm
 
Thích hợp trồng thời tiết mát, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 1200 hạt/gr
Phủ hạt: Không
Nảy mầm: 3-5 ngày
Đường kính hoa: 5-6 cm
Chiều cao cây: 12-18 cm
Sang chậu (từ ngày gieo hạt): 30-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',6,11,500),



		(627,N'PETUNIA-DẠ YÊN THẢO RŨ-WAVE-Purple','https://floralseedvn.com/datafiles/galagy/thumb_15660067903218_fpet194-purple.jpg',6,'2002-05-01',N'Đặc điểm của dòng hoa rũ này là hoa nở dọc theo các nhánh và nở liên tục. Dòng Wave phù hợp trồng được ở cả hai điều kiện thời tiết nóng và lạnh. 
Màu Blue, thời gian ra hoa tương tự như màu Purple Classic và màu Pink. 
Màu Lavender thời gian ra hoa tương tự như màu Misty Lilac. 
Màu Misty Lilac hoa có thể xuất hiện một ít điểm trắng khi cây được trồng ở cường độ ánh sáng cao hoặc sử dụng chất điều hòa tăng trưởng. Chiều cao cây của màu này cao hơn những màu khác. 
Màu Purple cần thời gian chiếu sáng trong ngày từ 10 -11 tiếng và ra hoa sớm hơn màu Purple Classic từ 12-14 ngày. 
Màu Purple Classic ra hoa trễ hơn khoảng 7 ngày so với màu Lavender, Misty Lilac và Rose. 
Nên sử dụng chất điều hòa tăng trưởng để giúp cho hoa to, tán cây đều và nhiều hoa hơn.
Cây rũ sâu: 90-120 cm
 
Thích hợp trồng thời tiết mát, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 1200 hạt/gr
Phủ hạt: Không
Nảy mầm: 3-5 ngày
Đường kính hoa: 5-6 cm
Chiều cao cây: 12-18 cm
Sang chậu (từ ngày gieo hạt): 30-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',6,11,500),


		(628,N'PETUNIA-DẠ YÊN THẢO RŨ-WAVE-Rose','https://floralseedvn.com/datafiles/galagy/thumb_15660067904843_fpet195-pink.jpg',6,'2002-05-01',N'Đặc điểm của dòng hoa rũ này là hoa nở dọc theo các nhánh và nở liên tục. Dòng Wave phù hợp trồng được ở cả hai điều kiện thời tiết nóng và lạnh. 
Màu Blue, thời gian ra hoa tương tự như màu Purple Classic và màu Pink. 
Màu Lavender thời gian ra hoa tương tự như màu Misty Lilac. 
Màu Misty Lilac hoa có thể xuất hiện một ít điểm trắng khi cây được trồng ở cường độ ánh sáng cao hoặc sử dụng chất điều hòa tăng trưởng. Chiều cao cây của màu này cao hơn những màu khác. 
Màu Purple cần thời gian chiếu sáng trong ngày từ 10 -11 tiếng và ra hoa sớm hơn màu Purple Classic từ 12-14 ngày. 
Màu Purple Classic ra hoa trễ hơn khoảng 7 ngày so với màu Lavender, Misty Lilac và Rose. 
Nên sử dụng chất điều hòa tăng trưởng để giúp cho hoa to, tán cây đều và nhiều hoa hơn.
Cây rũ sâu: 90-120 cm
 
Thích hợp trồng thời tiết mát, nắng nhiều
Nhiệt độ gieo trồng: 22-300C
Hạt bọc phấn. Trọng lượng 1200 hạt/gr
Phủ hạt: Không
Nảy mầm: 3-5 ngày
Đường kính hoa: 5-6 cm
Chiều cao cây: 12-18 cm
Sang chậu (từ ngày gieo hạt): 30-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',6,11,500),


		(71,N'DIANTHUS-CẨM CHƯỚNG ĐƠN-Mix','https://floralseedvn.com/datafiles/galagy/thumb_16536437162493_dia001-w.jpg',7,'2002-06-01',N'Dòng hoa này được sử dụng cho nhiều mục đích: trồng chậu, trang trí sân vườn, cảnh quan và trồng thảm. Cây và nhánh khỏe, cho ra nhiều hoa. Cẩm chướng Telstar có khả năng kháng bệnh Phytophthora cũng như chịu được thời tiết nóng và lạnh. Khi điều kiện khí hậu thay đổi bất thường , thì sẽ có một ít hoa màu trắng chuyển sang phớt hồng.

Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 20-300C
Hạt thô. Trọng lượng 700-1900 hạt/gr
Phủ hạt: Có
Nảy mầm: 4-5 ngày
Đường kính hoa: 2.5-3 cm
Chiều cao cây: 20-30 cm
Sang chậu (từ ngày gieo hạt): 30-40 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 50-60 ngày',7 ,11,500),


		(72,N'DIANTHUS-CẨM CHƯỚNG CHÙM-Cherry','https://floralseedvn.com/datafiles/galagy/thumb_16534677543030_dia451-w.jpg',7,'2002-06-01',N'Có khả năng chịu được nhiệt độ cao, ít bị dịch bệnh, ra hoa liên tục. Cây dễ chăm sóc và cho nhiều nhánh. Lá cây có màu xanh đậm, thích hợp trồng vào mùa hè. 
Màu Pink Magic khi bắt đầu nở hoa sẽ có màu trắng, sau chuyển sang màu hồng nhạt và sau cùng chuyển sang màu hồng đậm. Cường độ chiếu sáng cao và nhiệt độ lạnh vào ban đêm sẽ làm cho màu hoa rực rỡ hơn.
Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt bọc phấn. Trọng lượng 300-465 hạt/gr
Phủ hạt: Không
Nảy mầm: 3-5 ngày
Đường kính hoa: 1.5-2 cm
Chiều cao cây: 40-50 cm. Tán cây: 30-35 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 75-90 ngày (mùa hè)
                                                            100-125 ngày (mùa đông)',7 ,11,500),


		(73,N'DIANTHUS-CẨM CHƯỚNG CHÙM-Pink','https://floralseedvn.com/datafiles/galagy/thumb_16534677543252_dia452-w.jpg',7,'2002-06-01',N'Có khả năng chịu được nhiệt độ cao, ít bị dịch bệnh, ra hoa liên tục. Cây dễ chăm sóc và cho nhiều nhánh. Lá cây có màu xanh đậm, thích hợp trồng vào mùa hè. 
Màu Pink Magic khi bắt đầu nở hoa sẽ có màu trắng, sau chuyển sang màu hồng nhạt và sau cùng chuyển sang màu hồng đậm. Cường độ chiếu sáng cao và nhiệt độ lạnh vào ban đêm sẽ làm cho màu hoa rực rỡ hơn.
Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt bọc phấn. Trọng lượng 300-465 hạt/gr
Phủ hạt: Không
Nảy mầm: 3-5 ngày
Đường kính hoa: 1.5-2 cm
Chiều cao cây: 40-50 cm. Tán cây: 30-35 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 75-90 ngày (mùa hè)
                                                            100-125 ngày (mùa đông)',7 ,11,500),


		(74,N'DIANTHUS-CẨM CHƯỚNG CHÙM-Purple','https://floralseedvn.com/datafiles/galagy/thumb_16534677558880_dia454-w.jpg',7,'2002-06-01',N'Có khả năng chịu được nhiệt độ cao, ít bị dịch bệnh, ra hoa liên tục. Cây dễ chăm sóc và cho nhiều nhánh. Lá cây có màu xanh đậm, thích hợp trồng vào mùa hè. 
Màu Pink Magic khi bắt đầu nở hoa sẽ có màu trắng, sau chuyển sang màu hồng nhạt và sau cùng chuyển sang màu hồng đậm. Cường độ chiếu sáng cao và nhiệt độ lạnh vào ban đêm sẽ làm cho màu hoa rực rỡ hơn.
Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt bọc phấn. Trọng lượng 300-465 hạt/gr
Phủ hạt: Không
Nảy mầm: 3-5 ngày
Đường kính hoa: 1.5-2 cm
Chiều cao cây: 40-50 cm. Tán cây: 30-35 cm
Sang chậu (từ ngày gieo hạt): 30-35 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 75-90 ngày (mùa hè)
                                                            100-125 ngày (mùa đông)',7 ,11,500),	
															

		(81,N'Helianthus-Hướng dương-SUNNY SMILE','https://floralseedvn.com/datafiles/galagy/thumb_15640192246925_fhls077-sunny-smile.jpg',8,'2002-08-01 ',N'Là hạt F1 có chiều cao cây thấp tự nhiên. Khi trồng vào chậu lớn, được cấp đầy đủ chất dinh dưỡng, cây sẽ cho nhánh nhiều. Đường kính hoa lớn với nhụy nâu.
Khi trồng ở điều kiện ngày ngắn, nhiệt độ trên 150C, cây sẽ thấp lại (15-20 cm), thời gian ra hoa 50-55 ngày.
Khi trồng ở điều kiện ngày dài thì cây cao 20-50 cm

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 20-300C
Hạt thô. Trọng lượng 18-30 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 8-10 cm
Chiều cao cây: 20-40 cm
Sang chậu (từ ngày gieo hạt): 15-20 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',8,11,500),	


		(82,N'Helianthus-Hướng dương-MISS SUNSHINE','https://floralseedvn.com/datafiles/galagy/thumb_15640191141778_fhls022-b.jpg',8,'2002-08-01 ',N'Hạt F1 được lai tạo nhằm tăng thêm sự lựa chọn cho dòng Hướng dương thấp, dễ chăm sóc, sử dụng một ít chất điều hòa sinh trưởng để giúp cây thấp trong điều kiện ngày ngắn.

Thích hợp trồng quanh năm, nắng nhiều
Nhiệt độ gieo trồng: 20-300C
Hạt thô. Trọng lượng 18-30 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 8-10 cm
Chiều cao cây: 20-40 cm
Sang chậu (từ ngày gieo hạt): 15-20 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 35-40 ngày',8,11,500),


		(91,N'Gerbera-Đồng tiền-JUMBO-Coral','https://floralseedvn.com/datafiles/galagy/thumb_15633348965282_giant-coral-1.jpg',5,'2002-09-01 ',N'Tán cây to, chắc, khỏe, đường kính hoa lớn với những màu hoa đẹp mắt. Ra hoa sớm và dễ chăm sóc. Hạt áo. Trồng chậu đường kính 15-17 cm. 
 
Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 20-300C
Hạt thô. Trọng lượng 250-300h/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 12-14 cm
Chiều cao cây: 15-25 cm
Sang chậu (từ ngày gieo hạt): 40-45 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 60-70 ngày',9,11,500),


		(92,N'Gerbera-Đồng tiền-JUMBO-Coral w/Dark Eye','https://floralseedvn.com/datafiles/galagy/thumb_15633348967325_giant-coral-bc-1.jpg',5,'2002-09-01 ',N'Tán cây to, chắc, khỏe, đường kính hoa lớn với những màu hoa đẹp mắt. Ra hoa sớm và dễ chăm sóc. Hạt áo. Trồng chậu đường kính 15-17 cm. 
 
Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 20-300C
Hạt thô. Trọng lượng 250-300h/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 12-14 cm
Chiều cao cây: 15-25 cm
Sang chậu (từ ngày gieo hạt): 40-45 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 60-70 ngày',9,11,500),


		(93,N'Gerbera-Đồng tiền-JUMBO-Orange','https://floralseedvn.com/datafiles/galagy/thumb_15633348967757_giant-orange-1.jpg',5,'2002-09-01 ',N'Tán cây to, chắc, khỏe, đường kính hoa lớn với những màu hoa đẹp mắt. Ra hoa sớm và dễ chăm sóc. Hạt áo. Trồng chậu đường kính 15-17 cm. 
 
Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 20-300C
Hạt thô. Trọng lượng 250-300h/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 12-14 cm
Chiều cao cây: 15-25 cm
Sang chậu (từ ngày gieo hạt): 40-45 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 60-70 ngày',9,11,500),


		(94,N'Gerbera-Đồng tiền-JUMBO-Orange w/Dark Eye','https://floralseedvn.com/datafiles/galagy/thumb_15633348987609_giant-orange-bc-1.jpg',5,'2002-09-01 ',N'Tán cây to, chắc, khỏe, đường kính hoa lớn với những màu hoa đẹp mắt. Ra hoa sớm và dễ chăm sóc. Hạt áo. Trồng chậu đường kính 15-17 cm. 
 
Thích hợp trồng quanh năm, đủ nắng
Nhiệt độ gieo trồng: 20-300C
Hạt thô. Trọng lượng 250-300h/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 12-14 cm
Chiều cao cây: 15-25 cm
Sang chậu (từ ngày gieo hạt): 40-45 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 60-70 ngày',9,11,500),


		(101,N'Geranium-PHONG LỮ ĐỨNG-Scarlet','https://floralseedvn.com/datafiles/galagy/thumb_16538831848646_ger201-w.jpg',3,'2002-10-01',N'Cây khỏe, phát triển tốt, nhanh phủ đầy mặt chậu. Tán cây, đường kính hoa lớn, tỉ lệ nảy mầm cao. Có nhiều màu để lựa chọn

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt áo. Trọng lượng 220-230 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 10-20 cm
Chiều cao cây: 30-35 cm
Sang chậu (từ ngày gieo hạt): 25-30 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 70-80 ngày',10,11,500),


		(102,N'Geranium-PHONG LỮ ĐỨNG-Appleblossom','https://floralseedvn.com/datafiles/galagy/thumb_16538831849710_ger202-w.jpg',3,'2002-10-01',N'Cây khỏe, phát triển tốt, nhanh phủ đầy mặt chậu. Tán cây, đường kính hoa lớn, tỉ lệ nảy mầm cao. Có nhiều màu để lựa chọn

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt áo. Trọng lượng 220-230 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 10-20 cm
Chiều cao cây: 30-35 cm
Sang chậu (từ ngày gieo hạt): 25-30 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 70-80 ngày',10,11,500),


		(103,N'Geranium-PHONG LỮ ĐỨNG-Orange IMP','https://floralseedvn.com/datafiles/galagy/thumb_16538831844528_ger204-w.jpg',3,'2002-10-01',N'Cây khỏe, phát triển tốt, nhanh phủ đầy mặt chậu. Tán cây, đường kính hoa lớn, tỉ lệ nảy mầm cao. Có nhiều màu để lựa chọn

Thích hợp với thời tiết mát, nắng vừa
Nhiệt độ gieo trồng: 18-250C
Hạt áo. Trọng lượng 220-230 hạt/gr
Phủ hạt: Có
Nảy mầm: 3-5 ngày
Đường kính hoa: 10-20 cm
Chiều cao cây: 30-35 cm
Sang chậu (từ ngày gieo hạt): 25-30 ngày
Ra hoa đầu tiên (từ ngày sang chậu): 70-80 ngày',10,11,500)





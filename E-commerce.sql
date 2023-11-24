CREATE TABLE [Account](
		
	[LoginID] [nvarchar](256) PRIMARY KEY,
	[Password][varchar](150) NOT NULL,

)
CREATE TABLE [Person](
	[PersonID] [int] NOT NULL PRIMARY KEY,		
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,	
	[LoginID] [nvarchar](256) NOT NULL,
	[Password][varchar](150) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	CONSTRAINT [FK_Person_Account] FOREIGN KEY([LoginID]) REFERENCES [Account] ([LoginID]),
)

CREATE TABLE [Saler](
	[SalerID] [int]  NOT NULL PRIMARY KEY,	
	[PersonID] [int] NULL,
	[StoreID] [int] NULL,
	[Address] [nvarchar](256)NULL,
	[Salary] [int] NOT NULL,
CONSTRAINT [FK_Saler_Person] FOREIGN KEY([PersonID]) REFERENCES [Person] ([PersonID]),
)

CREATE TABLE [Employee](
	[EmployeeID] [int] NOT NULL PRIMARY KEY,
	[Salary] [int] NOT NULL,
	[PersonID] [int] NOT NULL ,
	CONSTRAINT [FK_Employee_Person] FOREIGN KEY([PersonID]) REFERENCES [Person] ([PersonID])
)

CREATE TABLE [Product](
	[ProductID] [int] NOT NULL PRIMARY KEY,
	[Name][nvarchar](25) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,	
	[ListPrice] [int] NOT NULL,
	[SellStartDate] [date] NOT NULL,
	[Saler] [int] NOT NULL,
	CONSTRAINT [FK_Product_Saler] FOREIGN KEY([Saler]) REFERENCES [Saler] ([SalerID])
)

CREATE TABLE [Type](
	[TypeID] [nvarchar](25) NOT NULL PRIMARY KEY,
	[Title] [nvarchar](50) NOT NULL,
	[OwnerPersonID] [int] NOT NULL,
	CONSTRAINT [FK_Document_Employee] FOREIGN KEY(OwnerPersonID) REFERENCES [Employee]([EmployeeID])

)

CREATE TABLE [TypeofProduct](
	[ProductID] [int] NOT NULL ,
	[TypeID] [nvarchar](25) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
 CONSTRAINT [FK_ProductDocument_Document] FOREIGN KEY([TypeID]) REFERENCES [Type]([TypeID]),
 CONSTRAINT [FK_ProductDocument_Product] FOREIGN KEY([ProductID]) REFERENCES [Product]([ProductID])
) 

Insert [Account]([LoginID],[Password])
values  ('adventure-works\ken0','123'),
		('adventure-works\terri0','123'),
		('adventure-works\roberto0','123'),
		('adventure-works\rob0','123'),
		('adventure-works\gail0','123'),
		('adventure-works\jossef0','123'),
		('adventure-works\dylan0','123'),
		('adventure-works\diane1','123'),
		('adventure-works\gigi0','123'),
		('adventure-works\michael6','123')

Insert [Person](PersonID,[FirstName],[LastName],[LoginID],[Password],[BirthDate],[Gender] )
Values  (1,'Ken','Sánchez','adventure-works\ken0','123','1963-03-02','M'),
        (2,'Terri','Duffy','adventure-works\terri0','123','1965-09-01','F'),
	    (3,'Roberto','Tamburello','adventure-works\roberto0','123','1968-12-13','M'),
		(4,'Rob','Walters','adventure-works\rob0','123','1969-01-23','M'),
		(5,'Gail','Erickson','adventure-works\gail0','123','1946-10-29','F'),
		(6,'Jossef','Goldberg','adventure-works\jossef0','123','1953-04-11','M'),
		(7,'Dylan','Miller','adventure-works\dylan0','123','1981-03-27','M'),
		(8,'Diane','Margheim','adventure-works\diane1','123','1980-07-06','F'),
		(9,'Gigi','Matthew','adventure-works\gigi0','123','1973-02-21','F'),
		(10,'Michael','Raheem','adventure-works\michael6','123','1979-01-01','M')

Insert [Saler]([SalerID],[PersonID],[StoreID],[Address],[Salary])
values  (1,4,934,'1970 Napa Ct',100),
		(2,6,1028,'9833 Mt. Dias Blv',200),
		(3,2,642,'7484 Roundtree Drive',400),
		(4,4,932,'9539 Glenside Dr',400),
		(5,9,1026,'1226 Shoe St',300)


Insert [Employee]([EmployeeID],[Salary],[PersonID])
values  (1,800,1),
		(2,900,3),
		(3,700,5),
		(4,800,7),
		(5,900,8)


Insert [Product]([ProductID],[Name],[ProductNumber],[ListPrice],[SellStartDate],[Saler] )
values  (1,'BEGONIA - THU HẢI ĐƯỜNG','AR-5381',3,'2002-06-01',1),
		(2,'VẠN THỌ HOÀNG GIA','BA-8327',5,'2002-07-01' ,1),
		(3,'VẠN THỌ PHÁP','BE-2349',4,'2002-08-01 ',5),
		(4,'TORENIA - TÔ LIÊN','BE-2908',7,'2002-12-01 ',4),
		(5,'PHLOX - THANH TRÚC','BL-2036',5,'2002-05-01 ',4),
		(6,'Petunia - Dạ yên thảo','CA-5965',6,'2002-05-01',4),
		(7,'DIANTHUS - CẨM CHƯỚNG','CA-6738',7,'2002-06-01' ,2),
		(8,'Helianthus - Hướng dương','CA-7457',8,'2002-08-01 ',2),
		(9,'Gerbera - Đồng tiền','CB-2903',5,'2002-09-01 ',1),
		(10,'Geranium - Phong lữ','CN-6137',3,'2002-10-01', 5)

Insert [Type]([TypeID],[Title],[OwnerPersonID] )
values
('6x1','Petunia - Dạ Yên Thảo Đơn',1),
('6x2','Petunia - Dạ Yên Thảo Kép',1),
('6x3','Petunia - Dạ Yên Thảo Rũ',1),
('6x4','Petunia - Dạ Yên Thảo Leo',4),
('6x5','Petunia - Dạ Yên Thảo Fuseable',5),
('7x1','Cẩm Chướng Đơn',5),
('7x2','Cẩm Chướng Chùm',5),
('7x3','Cẩm Chướng Kép',5),
('10x1','Phong Lữ Đứng',5),
('10x2','Phong Lữ Rũ',3)


Insert [TypeofProduct]([ProductID],[TypeID],[ModifiedDate] )
values(6,'6x1','2008-01-30' ),
(6,'6x2','2008-06-30'),
(6,'6x3','2008-04-30'),
(7,'7x1','2008-05-30'),
(7,'7x2','2008-06-30'),
(10,'10x1','2008-01-30'),
(10,'10x2','2008-04-30'),
(7,'7x3','2008-04-30'),
(6,'6x4','2008-06-30'),
(6,'6x5','2008-07-30')


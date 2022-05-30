--Market adli Database yaradin
 
--Icinde Products Table-i yaradin.Product table-inda Id,Name,Price columnlari olsun

--Products table-na yeni bir Brand columnu elave edin

--Products table-a value-lar insert edin (10-15 dene product datasi kifayetdir)
 
--Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query yazin

--Qiymeti 10-dan yuxari olan Product datalarinin siyahisini getiren query yazin

--Brand uzunlugu 5-den boyuk olan Productlarin siyahisini getiren query.
--Gelen datalarda Mehsulun adi ve Brand adi 1 columnda gorsensin ve Column adi ProductInfo olsun 
--(dersdeki name ve surname-i fullname kimi gostermeye uygun)

Create Database Market

Use Market

Create Table Products
(
	Id int,
	Name nvarchar(50),
	Price money
)

Alter Table Products
Add Brand nvarchar(50)

Insert Into Products(Id, Name, Price, Brand)
Values
(1, 'Cola', 3.2, 'Dell'),
(2, 'Fanta', 2, 'Hp'),
(3, 'Sprite', 3, 'Hp'),
(4, 'Bread', 2.2, 'Dell'),
(5, 'Butter', 4.2, 'Hp'),
(6, 'Tea', 5.8, 'Dell'),
(7, 'Cookies', 1.2, 'Acer'),
(8, 'Cheese', 3.7, 'Hp'),
(9, 'Cucumber', 4.2, 'Acer'),
(10, 'Tomato', 32, 'Dell'),
(11, 'Apple', 22, 'Hp'),
(12, 'Pear', 122, 'Acer'),
(13, 'Melon', 37, 'Asus'),
(14, 'Strawberry', 32.1, 'Acer'),
(15, 'Raspberry', 3.24, 'Asus'),
(16, 'Chocolate', 3.4, 'Asus'),
(17, 'Kiwi', 15, 'Hansisa_Brend17'),
(18, 'Grapefruit', 14, 'Asus'),
(19, 'Eraser', 0.8, 'Hansisa_Brend19'),
(20, 'Pen', 0.7, 'Hansisa_Brend20'),
(21, 'Pepsi', 3, 'Hansisa_Brend21'),
(22, 'Pineapple', 5, 'Hansisa_Brend22'),
(23, 'Mamed', 6, 'Hansisa_Brend23'),
(24, 'Axmed', 8, 'Hansisa_Brend24'),
(25, 'Juice', 10, 'Hansisa_Brend25')

Truncate Table Products

Select * From Products Where Price < (Select AVG(Price) From Products)

Select * From Products Where Price > 10

Select (Name+' '+REPLACE(Brand,'Hansisa_','')) 'Product Info' From Products Where LEN(Brand) > 5
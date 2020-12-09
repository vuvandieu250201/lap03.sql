create table SinhVien(

MaSv int primary key,
TenSv varchar(40),
MaLopHoc int, constraint fk foreign key(MaLopHoc)
                           references LopHoc(MaLopHoc)
)
go
--GIA TRI NULL VA NOT NULL
/* KHI MA CO NOT NULL BAT BUOC PHAI NHAP GIA TRI
KHI CO NULL THI CO THE KHONG NHAN DU LIEU */
GO
CREATE TABLE SanPham(
MaSp int not null,
TenSp varchar(40) null,
)
/*
thuoc tich default
*/
create table StoreProduct(
ProductID int not null,
Name varchar(40) not null,
Price money not null default(10)
)

insert into StoreProduct (ProductID,Name)
values(111,Rivets)
go
create table Person.ContactPhone(
Person_ID int IDENTITY(500,1) not null,
MobileNumber bigint not null,
go
create table Person.ContactPhone (
Person_ID int primary key,
MobileNumber bigint,
ServiceProvider varchar(30),
LandlineNumber bigint
)
insert into Person.ContactPhone values
(101,983345674,Hutch,null)
go
insert into Person.ContactPhone
values(101,989010002,Airtel,null)
go
create table Person.PhoneExpenss(
Expenss_ID int primary key,
MobileNumber bigint foreign key references
PerSon.ConTactPhone (MobileNumber),
Amount bigint check (amount > 0)
)
go
alter table -- them cot vao bang
add<ten cott><kieu du lieu>
go
ALTER TABLE ContactPhone
go
ALTER COLUMN ServiceProvider varchar(45)
GO
--Xóa cột trong bảng
ALTER TABLE ContactPhone
DROP COLUMN ServiceProvider
GO
---Them một ràng buộc vào bảng
ALTER TABLE ContactPhone ADD CONSTRAINT CHK_RC CHECK(RentalCharges >0)
GO
--Xóa một ràng buộc
ALTER TABLE Person.ContactPhone
DROP CONSTRAINT CHK_RC

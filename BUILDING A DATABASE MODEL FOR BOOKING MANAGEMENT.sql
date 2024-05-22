create database thicuoiki1;
use thicuoiki1;
create table kinang
(
	makn varchar(10) not null primary key,
	tenkinang nvarchar(100)
);
create table vitri
(
	mavitri char(10) primary key not null,
	tenvitri nvarchar(50)
);
create table nhanvien 
( 
manv char(10) not null primary key, 
makn char(10), 
manv_ql char(10), 
hovaten nvarchar(100) not null, 
ngaysinh date, 
gioi nvarchar(10), 
mavitri char(10),
foreign key (makn) references kinang(makn),
foreign key (mavitri) references vitri(mavitri)
); 
ALTER TABLE nhanvien  
add  constraint fk_nhanvienquanly foreign key(manv_ql) 
references nhanvien(manv);
create table phanloaikh
(
	maloaikh char(10) not null primary key,
	loaikh nvarchar(50),
	giamgia varchar(100)
);
create table khachhang
(
	makh char(10) primary key not null,
	sdt char(10),
	maloaikh char(10),
	hvt nvarchar(100),
	email nvarchar(50),
	gioitinh nvarchar(10),
	ngsinh date,
	foreign key (maloaikh) references phanloaikh(maloaikh)
);
create table logins
(
	username nvarchar(100) primary key,
	passwords nvarchar(200),
	makh char(10),
	foreign key (makh) references khachhang(makh)
)
create table dichvu
(
	madv char(10) primary key,
	tendv nvarchar(50),
	giatien float
)
create table dondatlich
(
	malichhen char(10) not null primary key,
	makh char(10) not null,
	ngaydatlich date,
	foreign key (makh) references khachhang(makh)
);
create table chitietlichhen
(
	malichhen char(10) not null ,
	sodv varchar(10), 
	madv char(10),
	tgthuchien time,
	ngaythuchien date,
	foreign key (madv) references dichvu(madv),
	primary key (malichhen,sodv),
	foreign key (malichhen) references dondatlich(malichhen)
)

alter table chitietlichhen
add ngaydanhdau nvarchar(100)
alter table chitietlichhen
add statuss nvarchar(100)
create table phancong 
( 
	malichhen char(10),
	manv char(10),
	foreign key (manv) references nhanvien(manv),
	foreign key (malichhen) references dondatlich(malichhen),
	primary key (malichhen, manv)
);
/*Bảng vị trí*/
insert into vitri (mavitri, tenvitri)
values ('1', N'Quản lý')
insert into vitri (mavitri, tenvitri)
values ('2', N'Nhân viên')


/*Bảng kĩ năng*/
insert into kinang(makn,tenkinang)
values (N'KN1',N'Trị mụn')
insert into kinang(makn,tenkinang)
values (N'KN2',N'Trị nám')
insert into kinang(makn,tenkinang)
values (N'KN3',N'Trị sẹo')
insert into kinang(makn,tenkinang)
values (N'KN4',N'Xoá nếp nhăn')
insert into kinang(makn,tenkinang)
values (N'KN5',N'Massage cơ bản')
insert into kinang(makn,tenkinang)
values (N'KN6',N'Tiếp tân')
insert into kinang(makn,tenkinang)
values (N'KN7',N'Tư vấn viên')
set dateformat DMY; 
/*Bảng nhân viên*/
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV01',N'Phạm Duy An','21/11/1987',N'Nam',Null,'KN7')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV02',N'Dương Diệu Anh','19/05/1997',N'Nữ',Null,'KN1')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV03',N'PNguyễn Gia Bình','05/02/1992',N'Nam',Null,'KN5')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV04',N'Lưu Thuý Bình','17/11/1999',N'Nữ',Null,'KN1')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV05',N'Tan Minh Châu','12/09/2000',N'Nữ',Null,'KN6')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV06',N'Nguyễn Thị Cẩu Tú','14/07/1997',N'Nữ',Null,'KN3')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV07',N'Đặng Mỹ Duyên','09/07/2000',N'Nữ',Null,'KN2')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV08',N'Trương Quỳnh Dao','12/03/1998',N'Nữ',Null,'KN7')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV09',N'Đặng Nhật Hạ','04/12/2000',N'Nữ',Null,'KN2')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV10',N'Trần Ngọc Hân','12/01/1999',N'Nữ',Null,'KN3')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV11',N'Võ Vân Khánh','14/03/1991',N'Nữ',Null,'KN5')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV12',N'Lê Đan Khanh','25/04/1998',N'Nữ',Null,'KN7')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV13',N'Nguỵ Tuệ Lâm','29/05/1996',N'Nữ',Null,'KN6')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV14',N'Huỳnh Thị Ngọc Mỹ','27/08/2000',N'Nữ',Null,'KN4')
insert into nhanvien(manv,hovaten,ngaysinh,gioi,manv_ql,makn)
values ('NV15',N'Phạm Diệu Ngọc','14/10/1995',N'Nữ',Null,'KN4')


/*Bảng dịch vụ*/
insert into dichvu(madv,tendv,giatien)
values ('DV01',N'Trị mụn','150000')
insert into dichvu(madv,tendv,giatien)
values ('DV02',N'Trị nám','400000')
insert into dichvu(madv,tendv,giatien)
values ('DV03',N'Trị sẹo','350000')
insert into dichvu(madv,tendv,giatien)
values ('DV04',N'Xoá nếp nhăn','600000')
insert into dichvu(madv,tendv,giatien)
values ('DV05',N'Massage cơ bản','250000')

/*Bảng loại khách hàng*/
insert into phanloaikh(maloaikh, loaikh, giamgia)
values ('M',N'mới','20%')
insert into phanloaikh(maloaikh, loaikh, giamgia)
values ('T',N'thường','0%')
insert into phanloaikh(maloaikh, loaikh, giamgia)
values ('V',N'vip','10%');

/*Bảng khách hàng*/
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH01',N'Nguyễn Hà An Khuê','15/02/2001','0998745821',N'khue87@gmail.com',N'Nữ','M')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH02',N'Phạm Thịnh Hoan','09/02/2003','0226987458',N'hoan09@gmail.com',N'Nam','T')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('VIP01',N'Huỳnh Linh Lan','14/12/1999','0335987461',N'lan14@gmail.com',N'Nữ','V')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH03',N'Trương Ngọc Mỹ','25/11/2000','0905874698',N'my2511@gmail.com',N'Nữ','T')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH04',N'Trần Kim Ngân','14/06/1991','0406987548',N'ngan14@gmail.com',N'Nữ','T')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('VIP02',N'Lưu Tuệ Trường','19/08/1987','0105874962',N'truong19@gmail.com',N'Nam','V')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH05',N'Hà Cát Tường','12/05/2000','0598746321',N'tuong12@gmail.com',N'Nữ','M')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH06',N'Lâm Thục Ninh','16/01/1993','0508749863',N'ninh16@gmail.com',N'Nam','M')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('VIP03',N'Doãn Nam Phương','14/05/1981','044987563',N'phuong05@gmail.com',N'Nam','V')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('VIP04',N'Hà Phương Nguyên','29/04/1978','055874963',N'nguyen29@gmail.com',N'Nữ','V')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH07',N'Đặng Thuý Quỳnh','06/01/1971','0778948765',N'quynh0601@gmail.com',N'Nữ','T')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH08',N'Vũ Hồng Quế','12/06/1997','0118759863',N'hongque12@gmail.com',N'Nam','T')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH09',N'Đỗ Thục Quyên','15/07/2000','0578964872',N'quyen15@gmail.com',N'Nữ','M')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH10',N'Ngô Anh Phương','19/04/1997','0448796587',N'phuong19@gmail.com',N'Nam','T')
insert into khachhang(makh,hvt,ngsinh,sdt,email,gioitinh,maloaikh)
values ('TH11',N'Phan Hà Thu','24/03/1996','0554782154',N'thu2403@gmail.com',N'Nữ','T')

/*Bảng login*/
insert into logins(makh,username,passwords)
values ('TH01','khue87@gmail.com','99999999')
insert into logins(makh,username,passwords)
values ('TH02','hoan09@gmail.com','55555555')
insert into logins(makh,username,passwords)
values ('VIP01','lan14@gmail.com','15151515')
insert into logins(makh,username,passwords)
values ('TH03','my2511@gmail.com','36363636')
insert into logins(makh,username,passwords)
values ('TH04','ngan14@gmail.com','20320320')
insert into logins(makh,username,passwords)
values ('VIP02','truong19@gmail.com','33333333')
insert into logins(makh,username,passwords)
values ('TH05','tuong12@gmail.com','14141414')
insert into logins(makh,username,passwords)
values ('TH06','ninh16@gmail.com','21212121')
insert into logins(makh,username,passwords)
values ('VIP03','phuong05@gmail.com','26262626')
insert into logins(makh,username,passwords)
values ('VIP04','nguyen29@gmail.com','53535353')
insert into logins(makh,username,passwords)
values ('TH07','quynh0601@gmail.com','88888888')
insert into logins(makh,username,passwords)
values ('TH08','hongque12@gmail.com','77777777')
insert into logins(makh,username,passwords)
values ('TH09','quyen15@gmail.com','10101010')
insert into logins(makh,username,passwords)
values ('TH10','phuong19@gmail.com','80808080')
insert into logins(makh,username,passwords)
values ('TH11','thu2403@gmail.com','89898989')

/*ĐẶT LỊCH HẸN*/
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D1','VIP03','01/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D2','TH01','01/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D3','TH04','04/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D4','TH07','05/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D5','TH08','05/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D6','TH10','06/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D7','TH02','08/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D8','VIP02','15/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D9','VIP01','18/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D10','TH06','19/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D11','VIP04','19/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D12','TH11','20/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D13','TH03','30/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D14','TH09','31/10/2022')
insert into dondatlich(malichhen,makh,ngaydatlich)
values ('D15','TH05','03/11/2022')

/*CHI TIẾT LỊCH HẸN*/
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D1','1','DV05','05/10/2022','7:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D2','1','DV02','11/10/2022','10:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D2','2','DV05','11/10/2022','11:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D3','1','DV03','06/10/2022','14:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D4','1','DV03','09/10/2022','7:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D5','1','DV01','07/10/2022','8:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D5','2','DV04','07/10/2022','9:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D6','1','DV04','11/10/2022','10:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D7','1','DV01','10/10/2022','8:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D8','1','DV05','31/10/2022','8:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D9','1','DV03','21/10/2022','14:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D9','2','DV02','21/10/2022','15:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D10','1','DV01','22/10/2022','14:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D11','1','DV04','31/10/2022','9:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D11','2','DV02','31/10/2022','10:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D12','1','DV05','22/10/2022','15:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D12','2','DV03','22/10/2022','16:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D13','1','DV01','05/11/2022','9:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D13','2','DV05','05/11/2022','10:30')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D14','1','DV02','06/11/2022','15:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D14','2','DV04','06/11/2022','16:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D15','1','DV01','06/11/2022','16:00')
insert into chitietlichhen(malichhen,sodv,madv,ngaythuchien,tgthuchien)
values ('D15','2','DV04','06/11/2022','17:00')

/*Bảng phân công*/
insert into phancong(malichhen,manv)
values ('D1', 'NV03')
insert into phancong(malichhen,manv)
values ('D2', 'NV09')
insert into phancong(malichhen,manv)
values ('D2', 'NV11')
insert into phancong(malichhen,manv)
values ('D3', 'NV10')
insert into phancong(malichhen,manv)
values ('D4', 'NV06')
insert into phancong(malichhen,manv)
values ('D5', 'NV02')
insert into phancong(malichhen,manv)
values ('D5', 'NV04')
insert into phancong(malichhen,manv)
values ('D6', 'NV15')
insert into phancong(malichhen,manv)
values ('D7', 'NV02')
insert into phancong(malichhen,manv)
values ('D8', 'NV11')
insert into phancong(malichhen,manv)
values ('D9', 'NV10')
insert into phancong(malichhen,manv)
values ('D9', 'NV07')
insert into phancong(malichhen,manv)
values ('D10', 'NV01')
insert into phancong(malichhen,manv)
values ('D11', 'NV14')
insert into phancong(malichhen,manv)
values ('D11', 'NV09')
insert into phancong(malichhen,manv)
values ('D12', 'NV11')
insert into phancong(malichhen,manv)
values ('D12', 'NV06')
insert into phancong(malichhen,manv)
values ('D13', 'NV04')
insert into phancong(malichhen,manv)
values ('D13', 'NV03')
insert into phancong(malichhen,manv)
values ('D14', 'NV07')
insert into phancong(malichhen,manv)
values ('D14', 'NV14')
insert into phancong(malichhen,manv)
values ('D15', 'NV04')
insert into phancong(malichhen,manv)
values ('D15', 'NV15')
/*Update bảng nhân viên*/
update nhanvien set manv_ql=null where manv='NV01'
update nhanvien set manv_ql=null where manv='NV02'
update nhanvien set manv_ql='NV02' where manv='NV03'
update nhanvien set manv_ql='NV02' where manv='NV04'
update nhanvien set manv_ql='NV01' where manv='NV05'
update nhanvien set manv_ql='NV02' where manv='NV06'
update nhanvien set manv_ql='NV02' where manv='NV07'
update nhanvien set manv_ql='NV01' where manv='NV08'
update nhanvien set manv_ql='NV02' where manv='NV09'
update nhanvien set manv_ql='NV02' where manv='NV10'
update nhanvien set manv_ql='NV02' where manv='NV11'
update nhanvien set manv_ql='NV01' where manv='NV12'
update nhanvien set manv_ql='NV01' where manv='NV13'
update nhanvien set manv_ql='NV02' where manv='NV14'
update nhanvien set manv_ql='NV02' where manv='NV15'
/*update bảng chitietlichhen*/
update chitietlichhen set statuss='hoan thanh' where malichhen='D1' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D2' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D2' and sodv='2'
update chitietlichhen set statuss='hoan thanh' where malichhen='D3' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D4' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D5' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D5' and sodv='2'
update chitietlichhen set statuss='hoan thanh' where malichhen='D6' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D7' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D8' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D9' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D9' and sodv='2'
update chitietlichhen set statuss='hoan thanh' where malichhen='D10' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D11' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D11' and sodv='2'
update chitietlichhen set statuss='hoan thanh' where malichhen='D12' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D12' and sodv='2'
update chitietlichhen set statuss='hoan thanh' where malichhen='D13' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D13' and sodv='2'
update chitietlichhen set statuss='hoan thanh' where malichhen='D14' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D15' and sodv='1'
update chitietlichhen set statuss='hoan thanh' where malichhen='D15' and sodv='2'
delete from chitietlichhen where malichhen='D1'
delete from chitietlichhen where malichhen='D2'
delete from chitietlichhen where malichhen='D3'
delete from chitietlichhen where malichhen='D4'
delete from chitietlichhen where malichhen='D5'
delete from chitietlichhen where malichhen='D6'
delete from chitietlichhen where malichhen='D7'
delete from chitietlichhen where malichhen='D8'
delete from chitietlichhen where malichhen='D9'
delete from chitietlichhen where malichhen='D10'
delete from chitietlichhen where malichhen='D11'
delete from chitietlichhen where malichhen='D12'
delete from chitietlichhen where malichhen='D13'
delete from chitietlichhen where malichhen='D14'
delete from chitietlichhen where malichhen='D15'

#Query
##Indicates appointment information for customer code TH01 or VIP03. Information displayed includes malichhen, makh,sodv,madv
select ddl.malichhen,ddl.makh , ctlh.sodv, ctlh.madv, ctlh.ngaythuchien
from dondatlich ddl left join chitietlichhen ctlh
on ddl.malichhen= ctlh.malichhen
where ddl.makh='TH01' or ddl.makh ='VIP01'
##Shows information of regular customers. Information displayed includes full name, date of birth, phone number, and gender
select kh.hvt, kh.ngsinh, kh.sdt,kh.gioitinh
from khachhang kh right join phanloaikh pl
on kh.maloaikh = pl.maloaikh
where loaikh=N'Thường'
##Indicates the total number of VIP customers performing services in November
select count(ddl.malichhen) as 'so_khach_vip'
from dondatlich ddl join chitietlichhen ct
on ddl.malichhen = ct.malichhen
where ddl.makh like 'V%' and ct.ngaythuchien between '2022/10/17' and '2022/10/22'
##Calculate the number of days reserved for appointment codes, displayed information includes appointment code, customer code, number of days reserved
select distinct ddl.malichhen, ddl.makh, (DATEDIFF(DAY,ddl.ngaydatlich, ct.ngaythuchien)) as 'đặt trước'
from dondatlich ddl left join chitietlichhen ct
on ddl.malichhen= ct.malichhen
##Export skill names and number of employees for each skill
select kn.tenkinang, count(nv.manv) as 'số nhân viên'
from kinang kn join nhanvien nv
on kn.makn=nv.makn
group by kn.tenkinang
##Outputs booking orders with 2 services
select distinct ct.malichhen, ddl.makh, ddl.ngaydatlich
from chitietlichhen ct left join dondatlich ddl
on ct.malichhen=ddl.malichhen
where ddl.malichhen in (
	select ct.malichhen
	from chitietlichhen ct
	group by malichhen
	having count(ct.malichhen)='2')
##Indicates appointment orders of VIP customers except VIP01
Select distinct ddl.malichhen, ct.ngaythuchien, ct.tgthuchien
from dondatlich ddl join chitietlichhen ct
on ddl.malichhen = ct.malichhen
where ddl.makh like'V%'
except
Select distinct ddl.malichhen, ct.ngaythuchien, ct.tgthuchien
from dondatlich ddl join chitietlichhen ct
on ddl.malichhen = ct.malichhen
where ddl.makh like 'VIP01'
#Indicates that the oldest employee among the skilled employees is "tiếp tân"
select manv, hovaten, gioi, makn, (2022-year(ngaysinh)) as 'tuoi'
from nhanvien
where (2022-year(ngaysinh)) in (select max(2022-year(ngaysinh)) from nhanvien 
where makn='KN6')
##Count how many appointments were scheduled for each service performed in October
SELECT [DV01],[DV02],[DV03],[DV04],[DV05]
FROM
(select ctlh.madv
from dichvu, chitietlichhen ctlh
where month(ngaythuchien)='10' and dichvu.madv=ctlh.madv ) AS BangNguon
PIVOT
(
count(madv)
FOR madv IN ([DV01],[DV02],[DV03],[DV04],[DV05])
) AS BangChuyen;
## Count each type of customer
SELECT [V],[M],[T]
FROM
(select khachhang.maloaikh
from khachhang, phanloaikh
where khachhang.maloaikh=phanloaikh.maloaikh) AS BangNguon
PIVOT
(
count(maloaikh)
FOR maloaikh IN ([V],[M],[T])
) AS BangChuyen;
##Indicate which service employees are rewarded at the end of the year
create procedure khenthuongcuoinam (@manv char(10))
as 
begin	
	declare @sodvth int;
	select @sodvth = count(manv)
	from phancong 
	where phancong.manv=@manv
	if @sodvth >= 3
	begin 
		print N'Được khen thưởng cuối năm'
	end
	else 
	begin
		print N'Không được khen thưởng cuối năm';
	end
end;
exec khenthuongcuoinam 'NV04';
##Update services in appointment schedule
create procedure  updatemadichvu(@malichhen char(10),@madv char(10), @sodv varchar(10))
as 
begin 
if(exists(select malichhen from chitietlichhen where malichhen=@malichhen))
begin 
update chitietlichhen
	set madv=@madv
	where malichhen = @malichhen and sodv=@sodv
	print N'cập nhật thành công'
	end
	else
	begin 
	print N'Mã lịch hẹn không tồn tại.Cập nhật không thành công'
	end
end
exec updatemadichvu 'D15','DV06','2'
select * from chitietlichhen
##It is mandatory to not accept customers under 12 years old
create trigger agekh
on khachhang
for insert
as
begin
	if exists (select * from inserted where (2022-year(ngsinh)<12))
	begin 
		print N'khách hàng dưới 12 tuổi vui lòng không thể đặt dịch vụ'
		rollback tran
		end
end

insert into khachhang(makh, ngsinh)
values ('TH15','21/10/2011')
## Constrain password to have more than 8 characters
create trigger insertpass
on logins
for insert
as
begin
	if exists (select * from inserted where len(passwords)<8)
	begin
		print N'password phải có nhiều hơn 8 kí tự'
		rollback tran
	end
end
## Decentralization
declare @mavitri char(10)
select @mavitri = mavitri from nhanvien where manv='NV03'
begin
if @mavitri = 1 
	print N'Bạn có quyền admin'
else
	print N'Bạn không có quyền admin'
end

create login QLNVadmin with password='12345789'
create user QL for login QLNVadmin
grant select, insert, update, delete, execute to QL;
revoke select on nhanvien to QL

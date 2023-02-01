CREATE DATABASE carmanage;
GO
USE carmanage;
GO
CREATE TABLE [dbo].[CHITIETPHIEUSUACHUA] (
  [MaPhieuSuaChua] int  IDENTITY(1,1),
  [MaPhuTung] int  NULL,
  [SoLuongPhuTung] int  NULL,
  [MaChiTietPhieuSuaChua] int  NOT NULL
)
GO


CREATE TABLE [dbo].[CHITIETTIENCONG] (
  [MaChiTietTienCong] int  IDENTITY(1,1),
  [MaPhieuSuaChua] int  NULL,
  [MaTC] int  NULL
)
GO


CREATE TABLE [dbo].[HIEUXE] (
  [MaHX] int  IDENTITY(1,1),
  [TenHieuXe] varchar(30)
)
GO
INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Toyota')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Kia')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Mazda')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Ford')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Honda')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Chevrolet')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Mitsubishi')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Suzuki')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Isuzu')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Mercedes')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES (N'Lexus')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES ( N'Peugeot')
GO

INSERT INTO [dbo].[HIEUXE] ([TenHieuXe]) VALUES ( N'Audi')
GO



CREATE TABLE [dbo].[KHACHHANG] (
  [MaKH] int  IDENTITY(1,1),
  [TenKH] varchar(30),
  [DienThoai] varchar(10) NULL,
  [DiaChi] varchar(100) NULL
)
GO

INSERT INTO [dbo].[KHACHHANG] ( [TenKH], [DienThoai], [DiaChi]) VALUES (N'Tran Kim Trung', N'1', N'QN')
GO

INSERT INTO [dbo].[KHACHHANG] ( [TenKH], [DienThoai], [DiaChi]) VALUES (N'Tran Thi Kim Dung', N'2', N'QN')
GO

INSERT INTO [dbo].[KHACHHANG] ([TenKH], [DienThoai], [DiaChi]) VALUES (N'Ta Thi Thu Lieu', N'3', N'QN')
GO

INSERT INTO [dbo].[KHACHHANG] ([TenKH], [DienThoai], [DiaChi]) VALUES (N'Tran Kim Ngoc', N'4', N'QN')
GO

INSERT INTO [dbo].[KHACHHANG] ([TenKH], [DienThoai], [DiaChi]) VALUES (N'Nguyen Van A', N'1', N'3')
GO

CREATE TABLE [dbo].[KHO] (
  [MaPhuTung] int  IDENTITY(1,1),
  [TenVatTuPhuTung] varchar(30),
  [SoLuong] int  NULL,
  [DonGia] int  NULL
)
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Guong chieu hau', N'100', N'3400000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Den hau', N'100', N'1900000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Den pha', N'100', N'3700000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES ( N'Kinh chan gio', N'100', N'1600000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Nap binh xang', N'100', N'220000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Binh xang', N'100', N'4800000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Chan bun', N'100', N'1300000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Lop xe', N'100', N'2000000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Cam bien ABS', N'100', N'1500000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Bugi', N'100', N'230000')
GO

INSERT INTO [dbo].[KHO] ([TenVatTuPhuTung], [SoLuong], [DonGia]) VALUES (N'Ken xe', N'100', N'240000')
GO

CREATE TABLE [dbo].[PHIEUSUACHUA] (
  [MaPhieuSuaChua] int  IDENTITY(1,1),
  [MaXe] int  NULL,
  [MaKH] int  NULL,
  [TienCong] int  NULL,
  [TienPhuTung] int  NULL,
  [TongTien] int  NULL
)
GO

CREATE TABLE [dbo].[PHIEUTHUTIEN] (
  [MaPhieuThuTien] int  IDENTITY(1,1),
  [MaKH] int  NULL,
  [TienThu] int  NULL,
  [NgayThuTien] datetime  NULL
)
GO


CREATE TABLE [dbo].[THAMSO] (
  [MaThamSo] int  IDENTITY(1,1),
  [TenThamSo] varchar(50) NULL,
  [GiaTri] int  NULL
)
GO


INSERT INTO [dbo].[THAMSO] ([TenThamSo], [GiaTri]) VALUES (N'So xe sua chua toi da', N'30')
GO

INSERT INTO [dbo].[THAMSO] ([TenThamSo], [GiaTri]) VALUES (N'So loai vat tu', N'200')
GO

INSERT INTO [dbo].[THAMSO] ([TenThamSo], [GiaTri]) VALUES (N'So loai tien cong', N'100')
GO

CREATE TABLE [dbo].[TIENCONG] (
  [MaTC] int  IDENTITY(1,1),
  [TenTienCong] varchar(100) NULL,
  [ChiPhi] int  NULL
)
GO


INSERT INTO [dbo].[TIENCONG] ([TenTienCong], [ChiPhi]) VALUES (N'Thay guong chieu hau', N'50000')
GO

INSERT INTO [dbo].[TIENCONG] ([TenTienCong], [ChiPhi]) VALUES (  N'Thay den xe', N'100000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES (  N'Thay kinh chan gio', N'70000')
GO 

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES (  N'Thay binh xang', N'150000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES ( N'Thay la chan bun', N'60000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES (  N'Thay lop xe', N'80000')
GO

INSERT INTO [dbo].[TIENCONG] (  [TenTienCong], [ChiPhi]) VALUES ( N'Gan cam bien ABS', N'120000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES ( N'Thay bugi', N'100000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES (  N'Thay ken xe', N'90000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES ( N'Bom banh xe', N'40000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES (  N'Ve sinh phu tung xe', N'200000')
GO

INSERT INTO [dbo].[TIENCONG] ( [TenTienCong], [ChiPhi]) VALUES (  N'Son xe', N'5000000')
GO

CREATE TABLE [dbo].[XE] (
  [MaXe] int  IDENTITY(1,1) ,
  [BienSo] varchar(10)  NOT NULL,
  [MaHX] int  NULL,
  [MaKH] int  NULL,
  [NgayTiepNhan] datetime  NULL,
  [TrangThai] int  NULL
)
GO
 
CREATE PROCEDURE [dbo].[BaoCaoDoanhThu]
		@Thang int,
		@Nam int
AS
BEGIN
  select KH.TenKH as 'Tên KH',KH.DienThoai as 'Số điện thoại',kh.DiaChi as 'Địa chỉ' ,HX.TenHieuXe as 'Hiệu xe', SQRT(COUNT(PSC.MaPhieuSuaChua)) as 'Số Lượt Sửa', SUM(PTT.TienThu)/SQRT(COUNT(PSC.MaPhieuSuaChua)) as 'Đã thanh toán', KH.TienNo as 'Còn thiếu'
	FROM KHACHHANG as KH, XE, HIEUXE as HX, PHIEUTHUTIEN as PTT, PHIEUSUACHUA as PSC
	WHERE KH.MaKH = XE.MaKH and XE.MaHX = HX.MaHX and PTT.MaKH = KH.MaKH and PSC.BienSo = Xe.BienSo
	group by KH.TenKH, HX.TenHieuXe, KH.TienNo,KH.DienThoai,kh.DiaChi
END
GO

 
CREATE PROCEDURE [dbo].[DoiMK]
	@MaTK int,
	@MatKhauMoi varchar(20)
AS
BEGIN
	UPDATE TAIKHOAN
	SET MatKhau = @MatKhauMoi 
	WHERE MaTK = @MaTK
END
GO

  

CREATE PROCEDURE [dbo].[NhapMoiVTPT]
	@TenPhuTung varchar(30),
	@SoLuong int,
	@DonGia int,
	@ThoiDiem datetime
AS
BEGIN
	DECLARE @iMPNVTPT int
	SELECT @iMPNVTPT = COUNT(MaPNVTPT) FROM PHIEUNHAPVTPT
	SET @iMPNVTPT = @iMPNVTPT + 1
	DECLARE @iMVTPT int
	SELECT @iMVTPT = COUNT(MaPhuTung) FROM KHO
	SET @iMVTPT = @iMVTPT + 1
	INSERT INTO KHO (MaPhuTung, TenVatTuPhuTung, SoLuong, DonGia) VALUES (@iMVTPT, @TenPhuTung, @SoLuong, @DonGia)
	INSERT INTO PHIEUNHAPVTPT (MaPNVTPT, MaPhuTung, SoLuong, ThoiDiem) VALUES (@iMPNVTPT, @iMVTPT, @SoLuong, @ThoiDiem)
END
GO

  

CREATE PROCEDURE [dbo].[NhapVTPT]
	@MaPhuTung int,
	@SoLuong int,
	@ThoiDiem datetime
AS
BEGIN
	DECLARE @iMPNVTPT int
	SELECT @iMPNVTPT = COUNT(MaPNVTPT) FROM PHIEUNHAPVTPT
	SET @iMPNVTPT = @iMPNVTPT + 1
	INSERT INTO PHIEUNHAPVTPT (MaPNVTPT, MaPhuTung, SoLuong, ThoiDiem) VALUES (@iMPNVTPT, @MaPhuTung, @SoLuong, @ThoiDiem)
	UPDATE KHO SET SoLuong = SoLuong + @SoLuong WHERE MaPhuTung = @MaPhuTung
END
GO
 
CREATE PROCEDURE [dbo].[ThemKhachHang]
	@TenKH varchar(30),
	@DienThoai varchar(10),
	@DiaChi varchar(100),
	@TienNo int
AS
BEGIN
	DECLARE @test int
	SELECT @test=COUNT(MaKH) FROM KHACHHANG WHERE (@TenKH = TenKH) and (@DienThoai = DienThoai) 
	if @test = 0
	BEGIN
		DECLARE @imakh int
		select  @imakh = MAX(MaKH) from KHACHHANG
		IF (@imakh is null) set @imakh = 0
		else set @imakh = @imakh + 1			
		INSERT INTO KHACHHANG (MaKH, TenKH, DiaChi, DienThoai, TienNo) VALUES (@imakh, @TenKH, @DiaChi,@DienThoai, @TienNo)
	END
END;
GO

 

CREATE PROCEDURE [dbo].[ThemPhieuThuTien]
	@BienSo varchar(10),
	@TienThu int,
	@NgayThuTien datetime
AS
BEGIN
		DECLARE @imaptt int
		DECLARE @MaKH int
		SELECT @imaptt = COUNT(MaPhieuThuTien) from PHIEUTHUTIEN
		SET @imaptt = @imaptt + 1
		SELECT @MaKH = MaKH FROM XE WHERE XE.BienSo = @BienSo
		INSERT INTO PHIEUTHUTIEN (MaPhieuThuTien, MaKH, TienThu, NgayThuTien) VALUES (@imaptt, @MaKH, @TienThu, @NgayThuTien)
		UPDATE KHACHHANG SET TienNo = TienNo - @TienThu WHERE MaKH = @MaKH
		UPDATE XE SET TrangThai = 0 WHERE BienSo = @BienSo
END
GO

 
CREATE PROCEDURE [dbo].[ThemXe]
	@BienSo varchar(10) ,
	@HieuXe int,
	@MaKH int,
	@NgayTiepNhan datetime
AS
BEGIN
	INSERT INTO Xe (BienSo, MaHX, MaKH, NgayTiepNhan, TrangThai) VALUES (@BienSo, @HieuXe, @MaKH,@NgayTiepNhan, 1)
END;
GO

 
CREATE PROCEDURE [dbo].[TimKiemTuongDoi]
	@DuLieu varchar(100)
AS
BEGIN
	SELECT BienSo, TenHieuXe, TenKH, DienThoai, DiaChi, TienNo
	FROM KHACHHANG as KH, XE, HIEUXE as HX
	WHERE KH.MaKH = XE.MaKH and XE.MaHX = HX.MaHX and ((BienSo LIKE '%'+@DuLieu+'%') or (TenHieuXe LIKE '%'+@DuLieu+'%') or (TenKH LIKE '%'+@DuLieu+'%') or (DienThoai LIKE '%'+@DuLieu+'%') or (DiaChi LIKE '%'+@DuLieu+'%'))
END
GO
 

CREATE PROCEDURE [dbo].[TongTienDoanhThu]
		@Thang int,
		@Nam int
AS
BEGIN
	select sum(PTT.TienThu)
	from PHIEUTHUTIEN as PTT
	WHERE Month(PTT.NgayThuTien) = @Thang and YEAR(PTT.NgayThuTien) = @Nam
END
GO


 
CREATE PROCEDURE [dbo].[USP_DangNhap]
@TenDangNhap nvarchar(50), @MatKhau nvarchar(50)
AS
BEGIN
	SELECT * FROM dbo.TAIKHOAN WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau
END
GO

 

-- ----------------------------
-- Primary Key structure for table CHITIETPHIEUSUACHUA
-- ----------------------------
ALTER TABLE [dbo].[CHITIETPHIEUSUACHUA] ADD CONSTRAINT [PK__CHITIETP__B1B5AAABD42629B7] PRIMARY KEY CLUSTERED ([MaChiTietPhieuSuaChua]) 
GO

 
-- ----------------------------
-- Primary Key structure for table CHITIETTIENCONG
-- ----------------------------
ALTER TABLE [dbo].[CHITIETTIENCONG] ADD CONSTRAINT [PK__CHITIETT__E6021A23C6EC3D09] PRIMARY KEY CLUSTERED ([MaChiTietTienCong]) 
GO

 

-- ----------------------------
-- Primary Key structure for table HIEUXE
-- ----------------------------
ALTER TABLE [dbo].[HIEUXE] ADD CONSTRAINT [PK__HIEUXE__2725A6D48A1DEB33] PRIMARY KEY CLUSTERED ([MaHX]) 
GO

 

-- ----------------------------
-- Primary Key structure for table KHACHHANG
-- ----------------------------
ALTER TABLE [dbo].[KHACHHANG] ADD CONSTRAINT [PK__KHACHHAN__2725CF1E2F6AD701] PRIMARY KEY CLUSTERED ([MaKH]) 
GO

 

-- ----------------------------
-- Primary Key structure for table KHO
-- ----------------------------
ALTER TABLE [dbo].[KHO] ADD CONSTRAINT [PK__KHO__B7472C171F05DFFF] PRIMARY KEY CLUSTERED ([MaPhuTung]) 
GO

 

-- ----------------------------
-- Primary Key structure for table PHIEUSUACHUA
-- ----------------------------
ALTER TABLE [dbo].[PHIEUSUACHUA] ADD CONSTRAINT [PK__PHIEUSUA__8AF5077345F74EF2] PRIMARY KEY CLUSTERED ([MaPhieuSuaChua]) 
GO

 

-- ----------------------------
-- Primary Key structure for table PHIEUTHUTIEN
-- ----------------------------
ALTER TABLE [dbo].[PHIEUTHUTIEN] ADD CONSTRAINT [PK__PHIEUTHU__693EDBC8635D5635] PRIMARY KEY CLUSTERED ([MaPhieuThuTien]) 
GO
 


-- ----------------------------
-- Primary Key structure for table THAMSO
-- ----------------------------
ALTER TABLE [dbo].[THAMSO] ADD CONSTRAINT [PK__THAMSO__948C30E691F87B8E] PRIMARY KEY CLUSTERED ([MaThamSo]) 
GO


 

-- ----------------------------
-- Primary Key structure for table TIENCONG
-- ----------------------------
ALTER TABLE [dbo].[TIENCONG] ADD CONSTRAINT [PK__TIENCONG__27250068EBB559B3] PRIMARY KEY CLUSTERED ([MaTC]) 
GO

 


-- ----------------------------
-- Primary Key structure for table XE
-- ----------------------------
ALTER TABLE [dbo].[XE] ADD CONSTRAINT [PK__XE__F7052EB7BA025297] PRIMARY KEY CLUSTERED ([MaXe])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table CHITIETPHIEUSUACHUA
-- ----------------------------
ALTER TABLE [dbo].[CHITIETPHIEUSUACHUA] ADD CONSTRAINT [FK__CHITIETPH__MaPhi__3A81B327] FOREIGN KEY ([MaPhieuSuaChua]) REFERENCES [dbo].[PHIEUSUACHUA] ([MaPhieuSuaChua]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CHITIETPHIEUSUACHUA] ADD CONSTRAINT [FK__CHITIETPH__MaPhu__3B75D760] FOREIGN KEY ([MaPhuTung]) REFERENCES [dbo].[KHO] ([MaPhuTung]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CHITIETTIENCONG
-- ----------------------------
ALTER TABLE [dbo].[CHITIETTIENCONG] ADD CONSTRAINT [FK_MATIENCONG] FOREIGN KEY ([MaTC]) REFERENCES [dbo].[TIENCONG] ([MaTC]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CHITIETTIENCONG] ADD CONSTRAINT [FK_MAPHIEUSUACHUA] FOREIGN KEY ([MaPhieuSuaChua]) REFERENCES [dbo].[PHIEUSUACHUA] ([MaPhieuSuaChua]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PHIEUSUACHUA
-- ----------------------------
ALTER TABLE [dbo].[PHIEUSUACHUA] ADD CONSTRAINT [FK__PHIEUSUAC__BienS__3E52440B] FOREIGN KEY ([MaXe]) REFERENCES [dbo].[XE] ([MaXe]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PHIEUSUACHUA] ADD CONSTRAINT [FK__PHIEUSUACH__MaKH__3F466844] FOREIGN KEY ([MaKH]) REFERENCES [dbo].[KHACHHANG] ([MaKH]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PHIEUTHUTIEN
-- ----------------------------
ALTER TABLE [dbo].[PHIEUTHUTIEN] ADD CONSTRAINT [FK__PHIEUTHUTI__MaKH__403A8C7D] FOREIGN KEY ([MaKH]) REFERENCES [dbo].[KHACHHANG] ([MaKH]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table XE
-- ----------------------------
ALTER TABLE [dbo].[XE] ADD CONSTRAINT [FK__XE__MaKH__4222D4EF] FOREIGN KEY ([MaKH]) REFERENCES [dbo].[KHACHHANG] ([MaKH]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[XE] ADD CONSTRAINT [FK__XE__MaHX__412EB0B6] FOREIGN KEY ([MaHX]) REFERENCES [dbo].[HIEUXE] ([MaHX]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

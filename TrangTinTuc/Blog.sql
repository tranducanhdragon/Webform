USE [Blog]
GO
/****** Object:  Table [dbo].[BanTin]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanTin](
	[IDBanTin] [int] NOT NULL,
	[tenBanTin] [nvarchar](50) NULL,
 CONSTRAINT [PK_BanTin] PRIMARY KEY CLUSTERED 
(
	[IDBanTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTiet]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tieuDe] [nvarchar](200) NULL,
	[noiDung] [nvarchar](max) NULL,
	[lanXem] [int] NULL,
	[ngayDang] [datetime] NULL,
	[IDBanTin] [int] NULL,
 CONSTRAINT [PK_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[IDName] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[passWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[IDName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BanTin] ([IDBanTin], [tenBanTin]) VALUES (1, N'Xã hội')
INSERT [dbo].[BanTin] ([IDBanTin], [tenBanTin]) VALUES (2, N'Kinh tế')
INSERT [dbo].[BanTin] ([IDBanTin], [tenBanTin]) VALUES (3, N'Chính trị')
INSERT [dbo].[BanTin] ([IDBanTin], [tenBanTin]) VALUES (4, N'Văn hóa')
INSERT [dbo].[BanTin] ([IDBanTin], [tenBanTin]) VALUES (5, N'Giáo dục')
INSERT [dbo].[BanTin] ([IDBanTin], [tenBanTin]) VALUES (6, N'Thể thao')
INSERT [dbo].[BanTin] ([IDBanTin], [tenBanTin]) VALUES (7, N'CNTT')
SET IDENTITY_INSERT [dbo].[ChiTiet] ON 

INSERT [dbo].[ChiTiet] ([ID], [tieuDe], [noiDung], [lanXem], [ngayDang], [IDBanTin]) VALUES (12, N'AFC hoãn 6 trận đấu tại Champions League châu Á vì dịch Covid-19', N'<h2>Đứng trước sự lan rộng của dịch Covid-19, đặc biệt l&agrave; tại c&aacute;c nước H&agrave;n Quốc v&agrave; Iran, AFC đ&atilde; quyết định ho&atilde;n c&aacute;c trận đấu c&oacute; li&ecirc;n quan đến một số đội thuộc 2 quốc gia n&agrave;y, ở AFC Champions League.<br />
<a href="https://dantri.com.vn/the-thao/thai-league-dung-truoc-kha-nang-bi-hoan-vi-dich-covid-19-20200227234507537.htm" title="Thai-League đứng trước khả năng bị hoãn vì dịch Covid-19"><strong>&gt;&gt;Thai-League đứng trước khả năng bị ho&atilde;n v&igrave; dịch Covid-19</strong></a><br />
<a href="https://dantri.com.vn/the-thao/lo-ngai-covid-19-nhat-ban-tam-hoan-giai-j-league-20200226134953519.htm" title="Lo ngại Covid-19, Nhật Bản tạm hoãn giải J-League"><strong>&gt;&gt;Lo ngại Covid-19, Nhật Bản tạm ho&atilde;n giải J-League</strong></a></h2>

<p>C&aacute;c trận đấu n&oacute;i tr&ecirc;n giữa c&aacute;c đội Al Wahda FC (UAE) gặp Esteghlal FC (Iran), Persepolis FC (Iran) gặp Al Taawoun FC (Saudi Arabia), diễn ra ng&agrave;y 2/3, trận Shabab Al Ahli FC (UAE) - Shahr Khodro FC (Iran), Sepahan FC (Iran) - Al Nassr FC (Saudi Arabia), v&agrave; trận FC Seoul (South Korea) gặp Chiangrai United (Th&aacute;i Lan), diễn ra ng&agrave;y 3/3 sẽ bị ho&atilde;n.</p>

<p><img alt="AFC hoãn 6 trận đấu tại Champions League châu Á vì dịch Covid-19 - 1" src="https://icdn.dantri.com.vn/thumb_w/640/2020/02/28/c-1-chau-a-28220-1582872194024.jpeg" style="height:309px; width:550px" title="AFC hoãn 6 trận đấu tại Champions League châu Á vì dịch Covid-19 - 1" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>AFC Champions League đang chịu ảnh hưởng lớn từ dịch Covid-19</p>

<p>Ngo&agrave;i 5 trận đấu đấy, th&igrave; trận luợt về v&ograve;ng bảng giữa Al Nassr FC (Saudi Arabia) gặp Sepahan (Iran) v&agrave;o ng&agrave;y 6/4 cũng bị ho&atilde;n.</p>

<p>Hiện tại, H&agrave;n Quốc v&agrave; Iran l&agrave; những quốc gia m&agrave; t&igrave;nh h&igrave;nh dịch c&uacute;m Covid-19 đang diễn biến hết sức phức tạp, số ca nhiễm mới virus Corona tại c&aacute;c nước n&agrave;y tăng từng ng&agrave;y. Ch&iacute;nh v&igrave; thế, c&aacute;c trận đấu li&ecirc;n quan đến những đội b&oacute;ng của H&agrave;n Quốc v&agrave; Iran được AFC ho&atilde;n lại, để đề ph&ograve;ng dịch Covid-19 lan đến c&aacute;c đội b&oacute;ng thuộc c&aacute;c quốc gia kh&aacute;c.&nbsp;</p>

<p>Cũng đứng trước diễn biến phức tạp của dịch Covid-19, AFC sẽ họp khẩn với c&aacute;c th&agrave;nh vi&ecirc;n l&agrave; Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; c&aacute;c quốc gia, nhằm thảo luận về những hoạt động tiếp theo, của b&oacute;ng đ&aacute; ch&acirc;u &Aacute;, trước t&igrave;nh h&igrave;nh dịch bệnh như hiện nay.</p>

<p>Cuộc họp n&agrave;y dự kiến diễn ra ng&agrave;y 7 v&agrave; 8/3, tại trụ sở AFC, ở Kuala Lumpur (Malaysia). Sau cuộc họp n&oacute;i tr&ecirc;n, khả năng sẽ c&oacute; th&ecirc;m nhiều trận đấu của b&oacute;ng đ&aacute; ch&acirc;u &Aacute; bị ho&atilde;n hoặc huỷ, nhất l&agrave; c&aacute;c trận đấu diễn ra ở c&aacute;c điểm n&oacute;ng của dịch Covid-19, hoặc c&oacute; li&ecirc;n quan đến c&aacute;c đội đến từ v&ugrave;ng dịch.</p>
', NULL, CAST(N'2020-02-28 16:51:50.640' AS DateTime), 6)
INSERT [dbo].[ChiTiet] ([ID], [tieuDe], [noiDung], [lanXem], [ngayDang], [IDBanTin]) VALUES (13, N'Arsenal bị loại sốc, HLV Mikel Arteta nói gì?', N'<h2>Ph&aacute;t biểu sau trận đấu với Olympiacos, HLV Arteta của Arsenal đ&atilde; thừa nhận đau đớn, thất vọng khi chứng kiến đội nh&agrave; bị loại khỏi Europa League.<br />
<a href="https://dantri.com.vn/the-thao/man-utd-thang-lon-arsenal-bat-ngo-bi-loai-khoi-europa-league-20200228075411771.htm" title="Man Utd thắng lớn, Arsenal bất ngờ bị loại khỏi Europa League"><strong>&gt;&gt;Man Utd thắng lớn, Arsenal bất ngờ bị loại khỏi Europa League</strong></a><br />
<a href="https://dantri.com.vn/the-thao/nhung-khoanh-khac-trong-man-nguoc-dong-cua-arsenal-truoc-everton-20200224160015524.htm" title="Những khoảnh khắc trong màn ngược dòng của Arsenal trước Everton"><strong>&gt;&gt;Những khoảnh khắc trong m&agrave;n ngược d&ograve;ng của Arsenal trước Everton</strong></a></h2>

<p>D&ugrave; chiếm nhiều lợi thế với chiến thắng 1-0 tr&ecirc;n s&acirc;n của Olympiacos ở trận lượt đi v&ograve;ng 1/16 Europa League nhưng Arsenal đ&atilde; bất ngờ hứng chịu thất bại 1-2 (sau 120 ph&uacute;t thi đấu) tr&ecirc;n s&acirc;n nh&agrave; Emirates ở lượt về. Kết quả n&agrave;y khiến cho &ldquo;Ph&aacute;o thủ&rdquo; bị loại bởi luật b&agrave;n thắng tr&ecirc;n s&acirc;n kh&aacute;ch.</p>

<p><img alt="Arsenal" src="https://icdn.dantri.com.vn/thumb_w/640/2020/02/28/20200227-t-223524-z-1720740220-rc-2-a-9-f-93-a-4-ldrtrmadp-3-soccereuropaarsolyreport-1582866246432.jpg" style="height:410px; width:550px" title="Arsenal" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Arsenal bất ngờ thất bại trước Olympic</p>

<p>Điều n&agrave;y khiến cho những người h&acirc;m mộ Arsenal v&ocirc; c&ugrave;ng thất vọng v&agrave; kh&oacute; hiểu. &Iacute;t ai ngờ, đội b&oacute;ng th&agrave;nh London c&oacute; thể bị loại sớm tới vậy. Trong khi đ&oacute;, HLV Mikel Arteta cũng tỏ ra v&ocirc; c&ugrave;ng thất vọng.</p>

<p>Ph&aacute;t biểu trong buổi họp b&aacute;o sau trận đấu, HLV người T&acirc;y Ban Nha cho biết: &ldquo;T&ocirc;i thực sự cảm thấy đau đớn. Ch&uacute;ng t&ocirc;i c&oacute; tham vọng lớn ở Europa League bởi đ&acirc;y l&agrave; đấu trường quan trọng. Tuy nhi&ecirc;n, to&agrave;n đội đ&atilde; trải qua trận đấu v&ocirc; c&ugrave;ng kh&oacute; khăn.</p>

<p>Ch&uacute;ng t&ocirc;i đ&atilde; cố gắng rất nhiều v&agrave; nỗ lực tất cả. T&ocirc;i nghĩ rằng cả hai đội đ&atilde; tạo ra nhiều điểm t&iacute;ch cực trong trận đấu h&ocirc;m nay. C&aacute;c cầu thủ đ&atilde; tạo ra được cơ hội c&oacute; thể định đoạt trận đấu nhưng hai b&agrave;n thua ở c&aacute;c t&igrave;nh huống cố định đ&atilde; dập tắt tất cả.</p>

<p><img alt="Arsenal bị loại sốc, HLV Mikel Arteta nói gì? - 2" src="https://icdn.dantri.com.vn/thumb_w/640/2020/02/28/arsenal-f-cv-newcastle-united-premier-league-1582827888-1582866289541.jpg" style="height:413px; width:550px" title="Arsenal bị loại sốc, HLV Mikel Arteta nói gì? - 2" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>HLV Mikel Arteta tỏ ra v&ocirc; c&ugrave;ng thất vọng v&agrave; đau đớn</p>

<p>Olympiacos đ&atilde; chủ động l&ugrave;i s&acirc;u đội h&igrave;nh về tử thủ. Để vượt qua h&agrave;ng thủ 10 người như vậy l&agrave; điều v&ocirc; c&ugrave;ng vất cả. Sẽ thật tuyệt vời nếu ch&uacute;ng t&ocirc;i đi tiếp. Thất bại ng&agrave;y h&ocirc;m nay thực sự l&agrave; nỗi thất vọng lớn. Tuy nhi&ecirc;n, t&ocirc;i vẫn cảm thấy tự h&agrave;o về m&agrave;n tr&igrave;nh diễn của c&aacute;c học tr&ograve;. M&agrave;n tr&igrave;nh diễn của họ trong trận đấu h&ocirc;m nay rất đ&aacute;ng khen. Ch&uacute;ng t&ocirc;i phải c&ugrave;ng nhau bước tiếp&rdquo;.</p>

<p>Sau thất bại ở Europa League, Arsenal sẽ phải dồn to&agrave;n lực v&agrave;o cuộc đua cạnh tranh top 4 Premier League. Hiện tại, họ đang xếp thứ 9 tr&ecirc;n bảng xếp hạng với 37 điểm, k&eacute;m đội xếp thứ 4 l&agrave; Chelsea 7 điểm.</p>
', NULL, CAST(N'2020-02-28 16:52:51.403' AS DateTime), 6)
INSERT [dbo].[ChiTiet] ([ID], [tieuDe], [noiDung], [lanXem], [ngayDang], [IDBanTin]) VALUES (17, N'Trốn cách ly, khai báo không trung thực có thể bị truy tố', N'<h2>UBND tỉnh Ninh Thuận chỉ đạo xử l&yacute; nghi&ecirc;m c&aacute;c trường hợp kh&ocirc;ng khai b&aacute;o, khai b&aacute;o kh&ocirc;ng trung thực, kh&ocirc;ng chấp h&agrave;nh c&aacute;ch ly. Trong trường hợp cần thiết, tiến h&agrave;nh điều tra truy tố theo quy định.<br />
<a href="https://dantri.com.vn/xa-hoi/ha-noi-len-may-bay-bat-nguoi-tron-cach-ly-dinh-sang-anh-20200325180657961.htm" title="Hà Nội: Lên máy bay “bắt” người trốn cách ly định sang Anh"><strong>&gt;&gt;H&agrave; Nội: L&ecirc;n m&aacute;y bay &ldquo;bắt&rdquo; người trốn c&aacute;ch ly định sang Anh</strong></a><br />
<a href="https://dantri.com.vn/blog/nhan-nhuong-voi-doi-tuong-tron-cach-ly-la-tu-sat-cong-dong-20200323230645091.htm" title="Nhân nhượng với đối tượng trốn cách ly là tự sát cộng đồng"><strong>&gt;&gt;Nh&acirc;n nhượng với đối tượng trốn c&aacute;ch ly l&agrave; tự s&aacute;t cộng đồng</strong></a></h2>

<p>Chiều ng&agrave;y 26/3, trao đổi với ph&oacute;ng vi&ecirc;n&nbsp;<em>D&acirc;n tr&iacute;</em>, &ocirc;ng Nguyễn Nhị Linh - Gi&aacute;m đốc Trung t&acirc;m Kiểm so&aacute;t bệnh tật Ninh Thuận - cho biết hai bệnh nh&acirc;n 61 v&agrave; 67 đ&atilde; được x&eacute;t nghiệm lại để đ&aacute;nh gi&aacute; kết quả điều trị, kết quả cả 2 đều &acirc;m t&iacute;nh lần 2.</p>

<p>Như vậy, đến nay tổng số người được x&eacute;t nghiệm SARS-CoV-2 lần 2 của tỉnh Ninh Thuận l&agrave; 32 người, đều đ&atilde; c&oacute; kết quả x&eacute;t nghiệm &acirc;m t&iacute;nh.</p>

<p>Ngo&agrave;i ra, Ninh Thuận hiện c&oacute; 27 người li&ecirc;n quan đến yếu tố nước ngo&agrave;i, trong đ&oacute; c&oacute; 26 người Việt Nam về nước v&agrave; một người quốc tịch Ph&aacute;p đang cư tr&uacute; tại địa phương. Trong ng&agrave;y 26/3, cơ quan chức năng đ&atilde; thu thập 27 mẫu của những người n&agrave;y gửi đến Viện Pasteur Nha Trang để x&eacute;t nghiệm.</p>

<p><img alt="Trốn cách ly, khai báo không trung thực có thể bị truy tố - 1" src="https://icdn.dantri.com.vn/thumb_w/640/2020/03/19/cach-ly-van-lam-1-1584577584590.jpg" style="height:375px; width:500px" title="Trốn cách ly, khai báo không trung thực có thể bị truy tố - 1" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>To&agrave;n bộ th&ocirc;n Văn L&acirc;m 3 vẫn đang được c&aacute;ch ly y tế</p>

<p>Trước diễn biến phức tạp của t&igrave;nh h&igrave;nh dịch bệnh Covid-19, UBND tỉnh cũng đ&atilde; c&oacute; c&ocirc;ng văn đề nghị c&aacute;c sở, ban, ng&agrave;nh đo&agrave;n thể, UBND c&aacute;c huyện-th&agrave;nh phố khẩn trương tập trung thực hiện quyết liệt những nhiệm vụ trọng t&acirc;m, đặc biệt l&agrave; hạn chế tối đa việc tụ tập đ&ocirc;ng người (trừ c&aacute;c cơ sở kinh doanh c&aacute;c mặt h&agrave;ng thiết yếu).</p>

<p>Nhiệm vụ h&agrave;ng đầu l&agrave; tiếp tục kiểm tra thực hiện việc đ&oacute;ng cửa c&aacute;c cơ sở kinh doanh dịch vụ kh&ocirc;ng thiết yếu như vũ trường, karaoke, x&ocirc;ng hơi, qu&aacute;n bar, tiệm internet, hoạt động lướt v&aacute;n diều, c&aacute;c khu vui chơi giải tr&iacute; thể thao, c&aacute;c hoạt động tham quan tại c&aacute;c điểm di t&iacute;ch lịch sử, c&aacute;c l&agrave;ng nghề truyền thống, danh lam thắng cảnh tr&ecirc;n địa b&agrave;n tỉnh.&nbsp;</p>

<p>Ngo&agrave;i ra, c&aacute;c hoạt động tập trung đ&ocirc;ng người như rạp chiếu phim, s&acirc;n vận động, s&acirc;n b&oacute;ng đ&aacute;, điểm cung cấp dịch vụ tr&ograve; chơi điện tử c&ocirc;ng cộng,&nbsp; ph&ograve;ng tập gym, yoga&hellip; cũng được y&ecirc;u cầu ngừng cho đến khi c&oacute; th&ocirc;ng b&aacute;o cho hoạt động trở lại. C&aacute;c cơ sở t&ocirc;n gi&aacute;o cũng được đề nghị tạm dừng c&aacute;c hoạt động tập trung đ&ocirc;ng người.</p>

<p>C&ocirc;ng an tỉnh được giao r&agrave; so&aacute;t tất cả c&aacute;c trường hợp đ&atilde; nhập cảnh về Việt Nam từ ng&agrave;y 8/3 (cả người nước ngo&agrave;i v&agrave; người Việt Nam), y&ecirc;u cầu bắt buộc thực hiện khai b&aacute;o y tế, c&aacute;ch ly tại nơi lưu tr&uacute;, theo d&otilde;i sức khỏe để kịp thời ph&aacute;t hiện c&aacute;c trường hợp mắc bệnh, tr&aacute;nh l&acirc;y lan dịch bệnh cho cộng đồng.</p>

<p>UBND tỉnh Ninh Thuận chỉ đạo c&aacute;c huyện-th&agrave;nh phố xử l&yacute; nghi&ecirc;m c&aacute;c trường hợp kh&ocirc;ng khai b&aacute;o, khai b&aacute;o kh&ocirc;ng trung thực, kh&ocirc;ng chấp h&agrave;nh c&aacute;ch ly theo quy định. Trong trường hợp cần thiết, tiến h&agrave;nh điều tra truy tố theo quy định ph&aacute;p luật.</p>

<p><strong>Đắk Lắk: Xử l&yacute; một phụ nữ tung tin đồn c&oacute; người mắc Covid-19</strong></p>

<p>Ng&agrave;y 26/3, C&ocirc;ng an huyện Kr&ocirc;ng Ana (tỉnh Đắk Lắk) đ&atilde; l&agrave;m việc với chị Hồ Thị L. (ngụ thị trấn Bu&ocirc;n Trấp, huyện Kr&ocirc;ng Ana) về việc đăng tin sai sự thật t&igrave;nh h&igrave;nh dịch bệnh tại địa phương.</p>

<p><img alt="Trốn cách ly, khai báo không trung thực có thể bị truy tố - 2" src="https://icdn.dantri.com.vn/thumb_w/640/2020/03/27/910261176608375380030953991327814140821504-n-1585264165725.jpg" style="height:375px; width:500px" title="Trốn cách ly, khai báo không trung thực có thể bị truy tố - 2" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Chị L. bị c&ocirc;ng an mời l&ecirc;n l&agrave;m việc sau khi đăng th&ocirc;ng tin kh&ocirc;ng đ&uacute;ng về dịch bệnh</p>

<p>Cụ thể, s&aacute;ng 25/3, sau khi nghe tin đồn c&oacute; một trường hợp người d&acirc;n địa phương mắc Covid-19, chị Hồ Thị L. đ&atilde; đăng th&ocirc;ng tin tr&ecirc;n v&agrave;o nh&oacute;m tr&ograve; chuyện tr&ecirc;n Zalo với 33 th&agrave;nh vi&ecirc;n. Đến chiều c&ugrave;ng ng&agrave;y, biết th&ocirc;ng tin n&agrave;y kh&ocirc;ng đ&uacute;ng sự thật, chị L. đ&atilde; nhanh ch&oacute;ng x&oacute;a bỏ.</p>

<p>L&agrave;m việc với c&ocirc;ng an, chị L. thừa nhận h&agrave;nh vi đăng tải th&ocirc;ng tin sai sự thật về t&igrave;nh h&igrave;nh dịch bệnh Covid-19 l&agrave; vi phạm ph&aacute;p luật, g&acirc;y hoang mang trong nh&acirc;n d&acirc;n.</p>

<p>Hiện c&ocirc;ng an đang ho&agrave;n tất hồ sơ để xử l&yacute; theo quy định.</p>

<p>Trước đ&oacute;, từ đầu năm 2020 đến ng&agrave;y 22/3 lực lượng c&ocirc;ng an tỉnh Đắk Lắk đ&atilde; v&agrave;o cuộc x&aacute;c minh v&agrave; xử l&yacute; 14 trường hợp tr&ecirc;n địa b&agrave;n tỉnh đăng tải, chia sẻ tr&ecirc;n mạng x&atilde; hội Facebook những th&ocirc;ng tin sai sự thật về t&igrave;nh h&igrave;nh dịch bệnh Covid-19.</p>

<p>Theo th&ocirc;ng tin từ ng&agrave;nh Y tế Đắk Lắk, to&agrave;n tỉnh hiện đ&atilde; tiến h&agrave;nh c&aacute;ch ly tại cơ sở y tế 42 trường hợp, trong đ&oacute; 33 trường hợp đ&atilde; ho&agrave;n th&agrave;nh c&aacute;ch ly; c&aacute;ch ly tập trung đối với 38 trường hợp, trong đ&oacute; 21 trường hợp ho&agrave;n th&agrave;nh c&aacute;ch ly; c&aacute;ch ly tại nh&agrave; v&agrave; nơi cư tr&uacute; 236 trường hợp, trong đ&oacute; 189 trường hợp đ&atilde; ho&agrave;n th&agrave;nh c&aacute;ch ly.</p>
', NULL, CAST(N'2020-03-27 12:05:41.003' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[DangNhap] ON 

INSERT [dbo].[DangNhap] ([IDName], [userName], [passWord]) VALUES (1, N'admin', N'123456')
SET IDENTITY_INSERT [dbo].[DangNhap] OFF
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_BanTin] FOREIGN KEY([IDBanTin])
REFERENCES [dbo].[BanTin] ([IDBanTin])
GO
ALTER TABLE [dbo].[ChiTiet] CHECK CONSTRAINT [FK_ChiTiet_BanTin]
GO
/****** Object:  StoredProcedure [dbo].[BanTin_Delete]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_Delete](
	@IDBanTin int
)
as
begin
    delete from BanTin where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_Insert]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_Insert](
    @noiDung nvarchar(50)
)
as
begin
    insert into BanTin(noiDung) values(@noiDung)
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_SelectAll]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_SelectAll]
as
begin
    select * from BanTin
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_SelectID]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_SelectID](
    @IDBanTin int
)
as
begin
    select * from BanTin where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_Update]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_Update](
    @noiDung nvarchar(50),
	@IDBanTin int
)
as
begin
    update BanTin set noiDung = @noiDung where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Delete]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_Delete](
    @ID int
)
as
begin
    delete from ChiTiet where ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Insert]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_Insert](
    @tieuDe nvarchar(200),
	@noiDung nvarchar(max),
	@ngayDang datetime,
	@IDBanTin int
)
as
begin
    insert into ChiTiet(tieuDe, noiDung, ngayDang, IDBanTin)
	values(@tieuDe, @noiDung, @ngayDang, @IDBanTin)
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectAll]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_SelectAll]
as
begin
    select * from ChiTiet
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectBanTin]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_SelectBanTin](
    @IDBanTin int
)
as
begin
    select * from ChiTiet where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectHome]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_SelectHome]
as
begin
    select top 5 * from ChiTiet order by ID desc
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectID]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_SelectID](
    @ID int
)
as
begin
    select * from ChiTiet where ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Update]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_Update](
    @tieuDe nvarchar(200),
	@noiDung nvarchar(max),
	@ngayDang datetime,
	@ID int
)
as
begin
    update ChiTiet set tieuDe=@tieuDe, noiDung=@noiDung
	where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_UpdateSLX]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_UpdateSLX](
    @lanXem int,
	@ID int
)
as
begin
    update ChiTiet set lanXem=@lanXem
	where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Insert]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Insert](
    @userName nvarchar(50),
	@passWord nvarchar(50)
)
as
begin
    insert into DangNhap(userName, passWord) values(@userName, @passWord)
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Search]    Script Date: 9/19/2020 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Search](
    @userName nvarchar(50),
	@passWord nvarchar(50)
)
as
begin
    select * from DangNhap where userName=@userName and passWord=@passWord
end
GO

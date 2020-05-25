<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<%@ Register Src="~/ContentManageSystem/Admin/AdminLoadControl.ascx" TagPrefix="uc1" TagName="AdminLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang quản trị website</title>
    <link href="ContentManageSystem/Admin/CSS/cssAdmin.css" rel="stylesheet" />
    <script src="ContentManageSystem/Admin/JS/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Header --%>
            <div id="header">
                <div class="logo">
                    chen logo o day
                </div>
                <div class="accountMenu">
                    menu thong tin tai khoan
                </div>
            </div>
            <%-- Menu chính --%>
            <div class="MenuChinh">
                <ul>
                    <li>
                        <a href="Admin.aspx" title="Trang Chủ">Trang chủ</a>
                        <a href="Admin.aspx?modul=Sach" title="Sách">Sách</a>
                        <a href="Admin.aspx?modul=TaiKhoan" title="Tài khoản">Tài khoản</a>
                    </li>
                </ul>
            </div>
            <%-- Phần nội dung trang --%>
            <uc1:AdminLoadControl runat="server" ID="AdminLoadControl" />
        </div>
    </form>
</body>
</html>

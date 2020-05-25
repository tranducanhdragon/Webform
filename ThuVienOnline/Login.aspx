﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Đăng Nhập website</title>
    <link href="ContentManageSystem/Admin/CSS/cssDangNhap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="formDangNhap">
            <div class="head">Đăng Nhập Hệ Thống</div>
            <div class="controls">
                <div class="row">
                    <div class="left">Tên Đăng Nhập</div>
                    <div class="right">
                        <asp:TextBox ID="tbTenDangNhap" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            SetFocusOnError="true" Display="Dynamic" ControlToValidate="tbTenDangNhap"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="left">Mật Khẩu</div>
                    <div class="right">
                        <asp:TextBox ID="tbMatKhau" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            SetFocusOnError="true" Display="Dynamic" ControlToValidate="tbMatKhau"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="left">&nbsp</div>
                    <div class="right">
                        <asp:LinkButton ID="lbtDangNhap" OnClick="btnDangNhap_Click" CssClass="btDangNhap" runat="server">Đăng Nhập</asp:LinkButton>
                    </div>
                </div>
                <div>
                    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

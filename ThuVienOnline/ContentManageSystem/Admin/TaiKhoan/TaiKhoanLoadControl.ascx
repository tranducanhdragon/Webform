<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TaiKhoanLoadControl.ascx.cs" Inherits="ContentManageSystem_Admin_TaiKhoan_TaiKhoanLoadControl" %>
<div class="container">
    <div class="cotTrai">
        <div class="head">Quản lí</div>
        <ul>
            <li><a href="/Admin.aspx?modul=TaiKhoan&thaotac=HienThi">Quản lí tài khoản</a></li>
        </ul>
        <div class="head">Thêm mới</div>
        <ul>
            <li><a href="/Admin.aspx?modul=TaiKhoan&thaotac=ThemMoi">Tài khoản</a></li>
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plTaiKhoanLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>
</div>
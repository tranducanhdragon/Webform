<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SachLoadControl.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_SachLoadControl" %>
<div class="container">
    <div class="cotTrai">
        <div class="head">Quản lí</div>
        <ul>
            <li><a class="<%=DanhDau("Sach","DanhMuc","HienThi") %>" href="/Admin.aspx?modul=Sach&modulphu=DanhMuc&thaotac=HienThi">Quản lí danh mục</a></li>
            <li><a class="<%=DanhDau("Sach","DanhSach","HienThi") %>" href="/Admin.aspx?modul=Sach&modulphu=DanhSach&thaotac=HienThi">Quản lí danh sách</a></li>
            <li><a class="<%=DanhDau("Sach","NXB","HienThi") %>" href="/Admin.aspx?modul=Sach&modulphu=NXB&thaotac=HienThi">Quản lí NXB</a></li>
        </ul>
        <div class="head">Thêm mới</div>
        <ul>
            <li><a class="<%=DanhDau("Sach","DanhMuc","ThemMoi") %>" href="/Admin.aspx?modul=Sach&modulphu=DanhMuc&thaotac=ThemMoi">Danh mục</a></li>
            <li><a class="<%=DanhDau("Sach","DanhSach","ThemMoi") %>" href="/Admin.aspx?modul=Sach&modulphu=DanhSach&thaotac=ThemMoi">Danh sách</a></li>
            <li><a class="<%=DanhDau("Sach","NXB","ThemMoi") %>" href="/Admin.aspx?modul=Sach&modulphu=NXB&thaotac=ThemMoi">NXB</a></li>
        </ul>
    </div>
    <div class="cotPhai">
    <asp:PlaceHolder ID="plSachLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>
</div>


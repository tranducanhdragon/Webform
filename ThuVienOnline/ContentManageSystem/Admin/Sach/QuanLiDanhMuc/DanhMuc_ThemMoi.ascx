<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMuc_ThemMoi.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiDanhMuc_DanhMuc_ThemMoi" %>
<div class="head">
    Thêm mới danh mục sách
</div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">Danh Mục Sách Đã Tồn Tại</div>
        <div class="oNhap">
            <asp:DropDownList ID="ddlDanhMucCha" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Tên Danh Mục Sách Muốn Thêm</div>
        <div class="oNhap">
            <asp:TextBox ID="tbTenDanhMuc" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                ControlToValidate="tbTenDanhMuc" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Ảnh Đại Diện</div>
        <div class="oNhap">
            <asp:FileUpload ID="flAnhDaiDien" runat="server" />
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong"></div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm Mới" CssClass="btThemMoi" OnClick="btnThemMoi"/>
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btnHuy"/>
        </div>
    </div>
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
</div>
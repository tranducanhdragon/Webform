<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhSach_ThemMoi.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiDanhSach_DanhSach_ThemMoi" %>
<div class="head">
    Thêm mới sách
</div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">Sách Đã Tồn Tại</div>
        <div class="oNhap">
            <asp:DropDownList ID="ddlDanhSachCha" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Tên Thể Loại Sách</div>
        <div class="oNhap">
            <asp:DropDownList ID="ddlDanhMucCha" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Tên Sách Muốn Thêm</div>
        <div class="oNhap">
            <asp:TextBox ID="tbTenSach" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                ControlToValidate="tbTenSach" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Tên Tác Giả</div>
        <div class="oNhap">
            <asp:TextBox ID="tbTacGia" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" 
                ControlToValidate="tbTacGia" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Tên Nhà Xuất Bản</div>
        <div class="oNhap">
           <asp:DropDownList ID="ddlNXBCha" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Năm Xuất Bản</div>
        <div class="oNhap">
            <asp:TextBox ID="tbNamXB" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                ControlToValidate="tbNamXB" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
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
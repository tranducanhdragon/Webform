<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TaiKhoan_ThemMoi.ascx.cs" Inherits="ContentManageSystem_Admin_TaiKhoan_TaiKhoan_ThemMoi" %>
<div class="head">
    Thêm mới Tài Khoản
</div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">Tài Khoản Đã Tồn Tại</div>
        <div class="oNhap">
            <asp:DropDownList ID="ddlTaiKhoan" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Tên Tài Khoản Muốn Thêm</div>
        <div class="oNhap">
            <asp:TextBox ID="tbTenTaiKhoan" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                ControlToValidate="tbTenTaiKhoan" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Mật Khẩu</div>
        <div class="oNhap">
            <asp:TextBox ID="tbMatKhau" type="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                ControlToValidate="tbMatKhau" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
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
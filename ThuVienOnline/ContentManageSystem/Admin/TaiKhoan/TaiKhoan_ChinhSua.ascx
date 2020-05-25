<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TaiKhoan_ChinhSua.ascx.cs" Inherits="ContentManageSystem_Admin_TaiKhoan_TaiKhoan_ChinhSua" %>
<div class="head">Chỉnh Sửa Tài Khoản <asp:Label ID="lbTaiKhoan" runat="server" Text=""></asp:Label></div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">Tên Tài Khoản</div>
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
            <asp:Button ID="btChinhSua" runat="server" Text="Chỉnh Sửa" CssClass="btChinhSua" OnClick="btnChinhSua" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btnHuy" />
        </div>
    </div>
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
</div>

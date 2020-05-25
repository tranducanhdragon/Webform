<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NXB_ChinhSua.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiNXB_NXB_ChinhSus" %>
<div class="head">Chỉnh Sửa <asp:Label ID="lbNXB" runat="server" Text=""></asp:Label></div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">Tên NXB Sách</div>
        <div class="oNhap">
            <asp:TextBox ID="tbTenNXB" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="tbTenNXB" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <asp:Button ID="btChinhSua" runat="server" Text="Chỉnh Sửa" CssClass="btChinhSua" OnClick="btnChinhSua" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btnHuy" />
        </div>
    </div>
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
</div>
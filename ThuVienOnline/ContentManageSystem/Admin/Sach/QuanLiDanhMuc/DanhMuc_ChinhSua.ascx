<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMuc_ChinhSua.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiDanhMuc_DanhMuc_ChinhSua" %>
<div class="head">Chỉnh Sửa Danh Mục <asp:Label ID="lbDanhMuc" runat="server" Text=""></asp:Label></div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">Tên Danh Mục Sách</div>
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
            <asp:Button ID="btChinhSua" runat="server" Text="Chỉnh Sửa" CssClass="btChinhSua" OnClick="btnChinhSua" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btnHuy" />
        </div>
    </div>
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
</div>

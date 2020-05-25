<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NXB_ThemMoi.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiNXB_NXB_ThemMoi" %>
<div class="head">
    Thêm mới NXB
</div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">NXB Đã Tồn Tại</div>
        <div class="oNhap">
            <asp:DropDownList ID="ddlNXBCha" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Tên NXB Muốn Thêm</div>
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
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm Mới" CssClass="btThemMoi" OnClick="btnThemMoi"/>
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btnHuy"/>
        </div>
    </div>
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
</div>
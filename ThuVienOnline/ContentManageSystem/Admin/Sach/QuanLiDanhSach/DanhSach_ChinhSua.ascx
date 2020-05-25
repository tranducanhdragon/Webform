<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhSach_ChinhSua.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiDanhSach_DanhSach_ChinhSua" %>
<div class="head">Chỉnh Sửa Sách <asp:Label ID="lbSach" runat="server" Text=""></asp:Label></div>
<div class="FormThemMoi">
    <div class="ThongTin">
        <div class="tenTruong">Tên Sách</div>
        <div class="oNhap">
            <asp:TextBox ID="tbTenSach" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="tbTenSach" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <div class="tenTruong">Tác Giả</div>
        <div class="oNhap">
            <asp:TextBox ID="tbTenTG" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                ControlToValidate="tbTenTG" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Nhà Xuất Bản</div>
        <div class="oNhap">
            <asp:DropDownList ID="ddlNXB" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="ThongTin">
        <div class="tenTruong">Thể Loại</div>
        <div class="oNhap">
            <asp:DropDownList ID="ddlDanhMuc" runat="server"></asp:DropDownList>
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
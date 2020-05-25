<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TaiKhoan_HienThi.ascx.cs" Inherits="ContentManageSystem_Admin_TaiKhoan_TaiKhoan_HienThi" %>
<div class="head">Các Tài Khoản Đã Tạo</div>
<div class="khungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên Đăng Nhập</th>
            <th class="cotMK">Mật Khẩu</th>
            <th class="cotCongCu">Công Cụ</th>
        </tr>
        <asp:Literal ID="ltrTaiKhoan" runat="server"></asp:Literal>
    </table>
</div>
<script type="text/javascript">
    function XoaTaiKhoan(MaTaiKhoan) {
        if (confirm("Bạn có muốn xóa tài khoản này?")) {
            $.post("ContentManageSystem/Admin/TaiKhoan/Ajax/TaiKhoan.aspx",
                {
                    "MaTaiKhoan": MaTaiKhoan,
                    "ThaoTac": "XoaTaiKhoan"
                },
                function (data, status) {
                    if (data == "Xoa") {
                        alert(status);
                        $("#MaDong" + MaTaiKhoan).slideUp();
                    }
                }
            )
        }
    }
</script>
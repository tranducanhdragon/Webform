<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhSach_HienThi.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiDanhSach_DanhSach_HienThi" %>
<div class="head">Các Sách Đã Tạo</div>
<div class="khungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên Sách</th>
            <th class="cotNamXB">Năm XB</th>
            <th class="cotTenTG">Mã Tác Giả</th>
            <th class="cotNXB">Mã NXB</th>
            <th class="cotTheLoai">Mã Thể Loại</th>
            <th class="cotAnh">Ảnh Đại Diện</th>
            <th class="cotCongCu">Công Cụ</th>
        </tr>
        <asp:Literal ID="ltrDanhSach" runat="server"></asp:Literal>
    </table>
</div>
<script type="text/javascript">
    function XoaDanhSach(MaSach) {
        if (confirm("Bạn có muốn xóa sách này?")) {
            $.post("ContentManageSystem/Admin/Sach/QuanLiDanhSach/Ajax/DanhSach.aspx",
                {
                    "MaSach": MaSach,
                    "ThaoTac": "XoaDanhSach"
                },
                function (data, status) {
                    if (data == "Xoa") {
                        alert(status);
                        $("#MaDong" + MaDM).slideUp();
                    }
                }
            )
        }
    }
</script>
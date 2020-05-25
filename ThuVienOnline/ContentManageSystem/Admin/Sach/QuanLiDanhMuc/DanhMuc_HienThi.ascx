<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DanhMuc_HienThi.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiDanhMuc_DanhMuc_HienThi" %>
<div class="head">Các Danh Mục Sách Đã Tạo</div>
<div class="khungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên Danh Mục</th>
            <th class="cotAnh">Ảnh Đại Diện</th>
            <th class="cotCongCu">Công Cụ</th>
        </tr>
        <asp:Literal ID="ltrDanhMuc" runat="server"></asp:Literal>
    </table>
</div>
<script type="text/javascript">
    function XoaDanhMuc(MaDM) {
        if (confirm("Bạn có muốn xóa danh mục này?")) {
            $.post("ContentManageSystem/Admin/Sach/QuanLiDanhMuc/Ajax/DanhMuc.aspx",
                {
                    "MaDM": MaDM,
                    "ThaoTac": "XoaDanhMuc"
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

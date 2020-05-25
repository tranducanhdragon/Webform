<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NXB_HienThi.ascx.cs" Inherits="ContentManageSystem_Admin_Sach_QuanLiNXB_NXB_HienThi" %>
<div class="head">Các Nhà Xuất Bản Đã Tạo</div>
<div class="khungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên NXB</th>
            <th class="cotAnh">Ảnh Đại Diện</th>
            <th class="cotCongCu">Công Cụ</th>
        </tr>
        <asp:Literal ID="ltrNXB" runat="server"></asp:Literal>
    </table>
</div>
<script type="text/javascript">
    function XoaNXB(MaNXB) {
        if (confirm("Bạn có muốn xóa danh mục này?")) {
            $.post("ContentManageSystem/Admin/Sach/QuanLiNXB/Ajax/NXB.aspx",
                {
                    "MaNXB": MaNXB,
                    "ThaoTac": "XoaNXB"
                },
                function (data, status) {
                    if (data == "Xoa") {
                        alert(status);
                        $("#MaDong" + MaNXB).slideUp();
                    }
                }
            )
        }
    }
</script>
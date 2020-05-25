using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiNXB_NXB_ChinhSus : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbNXB.Text = ThuVienOnline.NXB.NXB_Ten(Request.QueryString["id"].ToString());
    }
    protected void btnChinhSua(Object sender, EventArgs e)
    {
        //Update ảnh cho danh mục sách
        if (flAnhDaiDien.FileContent.Length > 0)
        {
            if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") ||
                flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
            {
                flAnhDaiDien.SaveAs(Server.MapPath("pic/NXB/") + flAnhDaiDien.FileName);
            }
        }
        ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã chỉnh sửa NXB " + lbNXB.Text + "</div>";
        ThuVienOnline.NXB.NXB_Update(Request.QueryString["id"].ToString(), tbTenNXB.Text, flAnhDaiDien.FileName);
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=NXB&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenNXB.Text = "";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=NXB&thaotac=HienThi");
    }
}
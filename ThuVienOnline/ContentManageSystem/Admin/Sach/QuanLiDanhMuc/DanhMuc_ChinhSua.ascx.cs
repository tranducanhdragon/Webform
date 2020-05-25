using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhMuc_DanhMuc_ChinhSua : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbDanhMuc.Text = ThuVienOnline.TheLoai.TheLoai_Ten( Request.QueryString["id"].ToString());
    }
    protected void btnChinhSua(Object sender, EventArgs e)
    {
        //Update ảnh cho danh mục sách
        if (flAnhDaiDien.FileContent.Length > 0)
        {
            if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") ||
                flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
            {
                flAnhDaiDien.SaveAs(Server.MapPath("pic/DanhMucSach/") + flAnhDaiDien.FileName);
            }
        }
        ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã chỉnh sửa danh mục " + lbDanhMuc.Text + "</div>";
        ThuVienOnline.TheLoai.TheLoai_Update(Request.QueryString["id"].ToString(), tbTenDanhMuc.Text, flAnhDaiDien.FileName);
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhMuc&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenDanhMuc.Text = "";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhMuc&thaotac=HienThi");
    }
}
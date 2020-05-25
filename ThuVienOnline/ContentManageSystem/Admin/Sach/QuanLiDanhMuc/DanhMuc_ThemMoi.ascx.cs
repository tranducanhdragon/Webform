using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhMuc_DanhMuc_ThemMoi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LayDanhMucCha();
        }
    }

    private void LayDanhMucCha()
    {
        DataTable dt = new DataTable();
        dt = ThuVienOnline.TheLoai.TheLoai_ThongTin();
        ddlDanhMucCha.Items.Clear();
        for(int i = 0; i < dt.Rows.Count; i++)
        {
            ddlDanhMucCha.Items.Add(new ListItem(dt.Rows[i]["TenTheLoai"].ToString(), dt.Rows[i]["MaTheLoai"].ToString()));
        }
    }
    protected void btnThemMoi(Object sender, EventArgs e)
    {
        //Thêm ảnh cho danh mục sách
        if(flAnhDaiDien.FileContent.Length > 0)
        {
            if(flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") ||
                flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
            {
                flAnhDaiDien.SaveAs(Server.MapPath("pic/DanhMucSach/")+flAnhDaiDien.FileName);
            }
        }
        if (ddlDanhMucCha.Items.Count != 0)
        {
            ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã tạo danh mục " + tbTenDanhMuc.Text + "</div>";
            ThuVienOnline.TheLoai.TheLoai_Insert((Convert.ToInt32(ddlDanhMucCha.Items[ddlDanhMucCha.Items.Count - 1].Value) + 1).ToString(), tbTenDanhMuc.Text, flAnhDaiDien.FileName);
        }
        else
        {
            ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã tạo danh mục " + tbTenDanhMuc.Text + "</div>";
            ThuVienOnline.TheLoai.TheLoai_Insert("1", tbTenDanhMuc.Text, flAnhDaiDien.FileName);
        }
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhMuc&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenDanhMuc.Text = "";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhMuc&thaotac=HienThi");
    }
}
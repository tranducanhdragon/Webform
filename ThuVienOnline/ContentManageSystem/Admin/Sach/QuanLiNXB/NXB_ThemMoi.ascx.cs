using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_Sach_QuanLiNXB_NXB_ThemMoi : System.Web.UI.UserControl
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
        dt = ThuVienOnline.NXB.NXB_ThongTin();
        ddlNXBCha.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlNXBCha.Items.Add(new ListItem(dt.Rows[i]["TenNXB"].ToString(), dt.Rows[i]["MaNXB"].ToString()));
        }
    }
    protected void btnThemMoi(Object sender, EventArgs e)
    {
        //Thêm ảnh cho danh mục sách
        if (flAnhDaiDien.FileContent.Length > 0)
        {
            if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") ||
                flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
            {
                flAnhDaiDien.SaveAs(Server.MapPath("pic/NXB/") + flAnhDaiDien.FileName);
            }
        }
        if (ddlNXBCha.Items.Count != 0)
        {
            ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã tạo NXB " + tbTenNXB.Text + "</div>";
            ThuVienOnline.NXB.NXB_Insert((Convert.ToInt32(ddlNXBCha.Items[ddlNXBCha.Items.Count - 1].Value) + 1).ToString(), tbTenNXB.Text, flAnhDaiDien.FileName);
        }
        else
        {
            ThuVienOnline.NXB.NXB_Insert("1", tbTenNXB.Text, flAnhDaiDien.FileName);
        }
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=NXB&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenNXB.Text = "";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=NXB&thaotac=HienThi");
    }
}
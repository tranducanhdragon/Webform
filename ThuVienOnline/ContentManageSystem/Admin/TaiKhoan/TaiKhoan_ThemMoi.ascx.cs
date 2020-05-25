using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_TaiKhoan_TaiKhoan_ThemMoi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LayTaiKhoan();
        }
    }
    private void LayTaiKhoan()
    {
        DataTable dt = new DataTable();
        dt = ThuVienOnline.TaiKhoan.TaiKhoan_ThongTin();
        ddlTaiKhoan.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlTaiKhoan.Items.Add(new ListItem(dt.Rows[i]["TenDangNhap"].ToString(), dt.Rows[i]["MaTaiKhoan"].ToString()));
        }
    }
    protected void btnThemMoi(Object sender, EventArgs e)
    {
        //Thêm tài khoản
        if (ddlTaiKhoan.Items.Count != 0)
        {
            ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã tạo tài khoản " + tbTenTaiKhoan.Text + "</div>";
            ThuVienOnline.TaiKhoan.TaiKhoan_Insert((Convert.ToInt32(ddlTaiKhoan.Items[ddlTaiKhoan.Items.Count - 1].Value) + 1).ToString(), tbTenTaiKhoan.Text, tbMatKhau.Text);
        }
        else
        {
            ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã tạo taì khoản " + tbTenTaiKhoan.Text + "</div>";
            ThuVienOnline.TaiKhoan.TaiKhoan_Insert("1", tbTenTaiKhoan.Text, tbMatKhau.Text);
        }
        Response.Redirect("/Admin.aspx?modul=TaiKhoan&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenTaiKhoan.Text = "";
        tbMatKhau.Text = "";
        Response.Redirect("/Admin.aspx?modul=TaiKhoan&thaotac=HienThi");
    }
}
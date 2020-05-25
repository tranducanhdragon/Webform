using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_TaiKhoan_TaiKhoan_ChinhSua : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbTaiKhoan.Text = ThuVienOnline.TaiKhoan.TaiKhoan_Ten(Request.QueryString["id"].ToString());
    }
    protected void btnChinhSua(Object sender, EventArgs e)
    {
        //Update cho tài khoản
        
        ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã chỉnh sửa tài khoản " + lbTaiKhoan.Text + "</div>";
        ThuVienOnline.TaiKhoan.TaiKhoan_Update(Request.QueryString["id"].ToString(), tbTenTaiKhoan.Text, tbMatKhau.Text);
        Response.Redirect("/Admin.aspx?modul=TaiKhoan&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenTaiKhoan.Text = "";
        tbMatKhau.Text = "";
        Response.Redirect("/Admin.aspx?modul=TaiKhoan&thaotac=HienThi");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(Object sender, EventArgs e)
    {
        //Kiểm tra trong database có tên đăng nhập và mật khẩu này ko
        DataTable dt = ThuVienOnline.TaiKhoan.TaiKhoan_DangNhap_MatKhau(tbTenDangNhap.Text, tbMatKhau.Text);
        if(dt.Rows.Count > 0)
        {
            //Đăng nhập thành công, lưu giá trị vào một biến session để khi ở bất cứ đâu trong trang web
            //cũng có thể truy cập được đến biến session
            Session["DangNhap"] = "1";//gán là 1 thể hiện đã đăng nhập
            Session["TenDanhNhap"] = dt.Rows[0]["TenDangNhap"];//Gán tên đăng nhập để biết tài khoản nào đang đăng nhập
            Response.Redirect("/Admin.aspx");
        }
        else
        {
            ltrThongBao.Text = "<div class='thongBao'>Tên đăng nhập hoặc mật khẩu sai</div>";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTuc
{
    public partial class login : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var dl = dt.DangNhap_Search(txtUserName.Text, txtPassWord.Text);
            int kt = dl.Count();
            if(kt > 0)
            {
                Session["admin"] = true;
                Response.Redirect("index.aspx");
            }
            else
            {
                lblThongBao.Text = "Đăng nhập thất bại";
                txtUserName.Text = string.Empty;
                txtPassWord.Text = string.Empty;
            }
        }
    }
}
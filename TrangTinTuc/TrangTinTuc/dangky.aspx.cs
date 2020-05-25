using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTuc
{
    public partial class DangKy : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            if(txtUserName.Text == "" || txtPassWord.Text == "")
            {
                lblThongBao.Text = "Bạn không được để trống";
                txtUserName.Text = string.Empty;
                txtPassWord.Text = string.Empty;
            }
            else
            {
                dt.DangNhap_Insert(txtUserName.Text, txtPassWord.Text);
                Response.Redirect("index.aspx");
            }
        }
    }
}
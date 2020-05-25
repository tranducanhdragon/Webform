using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryDatabase;

namespace WebApplication1
{
    public partial class DangNhap : System.Web.UI.Page
    {
        
        DBConnected db = new DBConnected();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.OpenConnection("Data Source= COMPUTER-PC\\SQLEXPRESS; Initial Catalog = NetworkSocial; Integrated Security = True;");
        }
        protected void btn_DangNhap(Object sender, EventArgs e)
        {
            string email = TextBoxEmail.Text.Trim();
            string pass = TextBoxPassword.Text.Trim();
            if (email == "" || pass == "" || db.CheckEmailExist(email) == false)
            {
                LabelKQ.Text = "Không có tài khoản";
                return;
            }
            db.OpenConnection("Data Source= COMPUTER-PC\\SQLEXPRESS; Initial Catalog = NetworkSocial; Integrated Security = True;");
            if (db.CheckUser(email, pass) == true)
            {
                LabelKQ.Text = "Đăng nhập thành công";
            }
            else
            {
                LabelKQ.Text = "Sai mật khẩu";
            }
            TextBoxEmail.Text = string.Empty;
            TextBoxPassword.Text = string.Empty;
        }   
        protected void btn_DangKy(Object sender, EventArgs e)
        {
            Response.Redirect("DangKy.aspx");
        }
    }
}
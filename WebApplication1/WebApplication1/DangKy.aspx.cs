using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryDatabase;

namespace WebApplication1
{
    public partial class DangKy : System.Web.UI.Page
    {
        DBConnected db = new DBConnected();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_DangKy(Object sender, EventArgs e)
        {
            db.OpenConnection("Data Source= COMPUTER-PC\\SQLEXPRESS; Initial Catalog = NetworkSocial; Integrated Security = True; MultipleActiveResultSets=true;");
            User nv = new User();
            nv.Name = TextBoxName.Text;
            nv.Email = TextBoxEmail.Text;
            nv.Password = TextBoxPassword.Text;
            nv.Country = TextBoxCountry.Text;
            if (db.CheckDupEmail(nv.Email) == true)
            {
                LabelKQ.Text = "Đã có người dùng này";
            }
            else
            {
                db.InsertUser(nv);
                LabelKQ.Text = "Đã Đăng Ký Thành Công";
            }
            TextBoxName.Text = string.Empty;
            TextBoxEmail.Text = string.Empty;
            TextBoxPassword.Text = string.Empty;
            TextBoxCountry.Text = string.Empty;
        }
        protected void btn_QuayLai(Object sender, EventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
        }
    }
}
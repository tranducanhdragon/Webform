using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryDatabase;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DBConnected db = new DBConnected();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.OpenConnection("Data Source= COMPUTER-PC\\SQLEXPRESS; Initial Catalog = NetworkSocial; Integrated Security = True;");
            string s = Request.Form["name"];
            if (db.CheckEmailExist(s))
            {
                Response.Write(s);
            }
            else
            {
                Response.Write("Không có người dùng này");
            }
        }
    }
}
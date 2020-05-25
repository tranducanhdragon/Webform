using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryDatabase;

namespace WebApplication1
{
    public partial class TrangChu : System.Web.UI.Page
    {
        DBConnected db = new DBConnected();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.OpenConnection("Data Source= COMPUTER-PC\\SQLEXPRESS; Initial Catalog = NetworkSocial; Integrated Security = True;");
            ListBoxDS.DataSource = db.GetAllUsers();
            /*            ListBoxDS.DataValueField = "ID";*/
            ListBoxDS.DataTextField = "Name";
            ListBoxDS.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_AdminLoadControl : System.Web.UI.UserControl
{
    string modul = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["modul"] != null)
        {
            modul = Request.QueryString["modul"];
            switch (modul)
            {
                case "Sach":
                    plAdminLoadControl.Controls.Add(LoadControl("Sach/SachLoadControl.ascx"));
                    break;
                case "TaiKhoan":
                    plAdminLoadControl.Controls.Add(LoadControl("TaiKhoan/TaiKhoanLoadControl.ascx"));
                    break;
            }
        }

    }
}
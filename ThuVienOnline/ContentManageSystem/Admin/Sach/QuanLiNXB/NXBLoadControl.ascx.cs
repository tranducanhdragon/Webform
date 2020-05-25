using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiNXB_NXBLoadControl : System.Web.UI.UserControl
{
    private string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["thaotac"] != null)
        {
            thaotac = Request.QueryString["thaotac"];
            switch (thaotac)
            {
                case "ThemMoi":
                    plNXBLoadControl.Controls.Add(LoadControl("NXB_ThemMoi.ascx"));
                    break;
                case "ChinhSua":
                    plNXBLoadControl.Controls.Add(LoadControl("NXB_ChinhSua.ascx"));
                    break;
                case "HienThi":
                    plNXBLoadControl.Controls.Add(LoadControl("NXB_HienThi.ascx"));
                    break;

                default:
                    plNXBLoadControl.Controls.Add(LoadControl("NXB_HienThi.ascx"));
                    break;
            }
        }
    }
}
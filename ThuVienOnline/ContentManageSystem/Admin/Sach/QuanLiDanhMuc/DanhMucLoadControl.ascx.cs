using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhMuc_DanhMucLoadControl : System.Web.UI.UserControl
{
    private string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["thaotac"] != null){
            thaotac = Request.QueryString["thaotac"];
            switch (thaotac)
            {
                case "ThemMoi":
                    plDanhMucLoadControl.Controls.Add(LoadControl("DanhMuc_ThemMoi.ascx"));
                    break;
                case "ChinhSua":
                    plDanhMucLoadControl.Controls.Add(LoadControl("DanhMuc_ChinhSua.ascx"));
                    break;
                case "HienThi":
                    plDanhMucLoadControl.Controls.Add(LoadControl("DanhMuc_HienThi.ascx"));
                    break;

                default:
                    plDanhMucLoadControl.Controls.Add(LoadControl("DanhMuc_HienThi.ascx"));
                    break;
            }
        }
    }
}
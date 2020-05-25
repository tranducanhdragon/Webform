using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_TaiKhoan_Ajax_TaiKhoan : System.Web.UI.Page
{
    private string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.Params["thaotac"] != null)
        {
            thaotac = Request.Params["thaotac"];
            switch (thaotac)
            {
                case "XoaTaiKhoan":
                    XoaTaiKhoan();
                    break;
            }
        }
    }
    public void XoaTaiKhoan()
    {
        string matk = "";
        if (Request.Params["MaTaiKhoan"] != null)
        {
            matk = Request.Params["MaTaiKhoan"];
            ThuVienOnline.TaiKhoan.TaiKhoan_Delete(matk);
            Response.Write("Xoa");
        }
    }
}
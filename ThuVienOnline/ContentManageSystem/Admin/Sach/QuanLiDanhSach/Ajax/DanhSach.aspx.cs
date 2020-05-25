using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhSach_Ajax_DanhSach : System.Web.UI.Page
{
    private string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["ThaoTac"] != null)
        {
            thaotac = Request.Params["ThaoTac"];
            switch (thaotac)
            {
                case "XoaDanhSach":
                    XoaDanhSach();
                    break;
            }
        }
    }
    public void XoaDanhSach()
    {
        string masach = "";
        if (Request.Params["MaSach"] != null)
        {
            masach = Request.Params["MaSach"];
            ThuVienOnline.Sach.Sach_Delete(masach);
            Response.Write("Xoa");
        }
    }
}
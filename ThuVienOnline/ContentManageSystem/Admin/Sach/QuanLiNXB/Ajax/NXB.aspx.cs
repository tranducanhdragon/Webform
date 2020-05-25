using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiNXB_Ajax_NXB : System.Web.UI.Page
{
    private string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //kiểm tra đăng nhập, sau đó thực hiện các thao tác
        if (Request.Params["ThaoTac"] != null)
        {
            thaotac = Request.Params["ThaoTac"];
            switch (thaotac)
            {
                case "XoaNXB":
                    XoaNXB();
                    break;
            }
        }
    }
    public void XoaNXB()
    {
        string manxb = "";
        if (Request.Params["MaNXB"] != null)
        {
            manxb = Request.Params["MaNXB"];
            ThuVienOnline.NXB.NXB_Delete(manxb);
            Response.Write("Xoa");
        }
    }
}
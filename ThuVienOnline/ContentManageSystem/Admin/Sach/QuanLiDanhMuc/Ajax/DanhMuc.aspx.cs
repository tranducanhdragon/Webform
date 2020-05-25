using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhMuc_Ajax_DanhMuc : System.Web.UI.Page
{
    private string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //kiểm tra đăng nhập, sau đó thực hiện các thao tác
        if(Request.Params["ThaoTac"] != null)
        {
            thaotac = Request.Params["ThaoTac"];
            switch (thaotac)
            {
                case "XoaDanhMuc":
                    XoaDanhMuc();
                    break;
            }
        }
    }
    public void XoaDanhMuc()
    {
        string madm = "";
        if(Request.Params["MaDM"] != null)
        {
            madm = Request.Params["MaDm"];
            ThuVienOnline.TheLoai.TheLoai_Delete(madm);
            Response.Write("Xoa");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTuc
{
    public partial class chitiet : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            int idbantin = Convert.ToInt32(Request["IDBanTin"]);
            rpBanTin.DataSource = dt.BanTin_SelectID(idbantin);
            rpBanTin.DataBind();
            rpChiTiet.DataSource = dt.ChiTiet_SelectID(id);
            rpChiTiet.DataBind();
        }
    }
}
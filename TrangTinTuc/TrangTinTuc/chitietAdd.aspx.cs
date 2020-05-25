using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTuc
{
    public partial class chitietAdd : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drBanTin.DataTextField = "tenBanTin";
                drBanTin.DataValueField = "IDBanTin";
                drBanTin.DataSource = dt.BanTin_SelectAll();
                drBanTin.DataBind();

                lbChiTiet.DataTextField = "tieuDe";
                lbChiTiet.DataValueField = "ID";
                lbChiTiet.DataSource = dt.ChiTiet_SelectAll();
                lbChiTiet.DataBind();
            }
        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            dt.ChiTiet_Insert(txtTieuDe.Text, txtNoiDung.Text, DateTime.Now, Convert.ToInt32(drBanTin.SelectedValue));
            Response.Redirect("index.aspx");
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            dt.ChiTiet_Delete(Convert.ToInt32(lbChiTiet.SelectedValue));
            Response.Redirect("index.aspx");
        }
    }
}
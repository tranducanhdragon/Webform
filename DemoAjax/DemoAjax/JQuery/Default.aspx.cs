using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JQuery_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["id"] != null)
        {
            string getResult = Request.Form["id"].ToString();
            getResult = "Dữ liệu đã gửi " + getResult;
            Response.Write(getResult);
        }
        if (Request.Form["cartModel"] != null)
        {
            string getResult = Request.Form["cartModel"].ToString();
            var jsonCart = new JavaScriptSerializer().Deserialize<List<CartItem>>(getResult);
            getResult = "Dữ liệu đã gửi " + getResult;
            Response.Write(getResult);
            foreach (var item in jsonCart)
            {
                Response.Write(item.SanPham.MaSP.ToString() + "-" + item.Quantity);
            }
        }
    }
}
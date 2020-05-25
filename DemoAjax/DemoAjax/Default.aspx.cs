using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string getResult = Request.Form["sendData"].ToString();
        getResult = "Dữ liệu đã gửi " + getResult;
        Response.Write(getResult);
    }
}
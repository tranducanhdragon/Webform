using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_Sach_QuanLiNXB_NXB_HienThi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LayNXB();
        }
    }
    private void LayNXB()
    {
        //Hiển thị các danh mục bằng việc lặp lại các thẻ của html
        DataTable dt = new DataTable();
        dt = ThuVienOnline.NXB.NXB_ThongTin();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ltrNXB.Text += @"        
            <tr id = 'MaDong" + dt.Rows[i]["MaNXB"] + @"'>
                <td class='cotMa'>" + dt.Rows[i]["MaNXB"] + @"</td>
                <td class='cotTen'>" + dt.Rows[i]["TenNXB"] + @"</td>
                <td class='cotAnh'><img class='anhDaiDien' src='pic/NXB/" + dt.Rows[i]["AnhDaiDien"] + @"' /></td>
                <td class='cotCongCu'>
                    <a href='/Admin.aspx?modul=Sach&modulphu=NXB&thaotac=ChinhSua&id=" + dt.Rows[i]["MaNXB"] + @"'>Sửa</a>
                    <a href='javascript:XoaNXB(" + dt.Rows[i]["MaNXB"] + @")'>Xóa</a>
                </td>
            </tr>";
        }
    }
}
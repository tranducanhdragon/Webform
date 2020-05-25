using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_TaiKhoan_TaiKhoan_HienThi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LayTaiKhoan();
        }
    }
    private void LayTaiKhoan()
    {
        //Hiển thị các danh mục bằng việc lặp lại các thẻ của html
        DataTable dt = new DataTable();
        dt = ThuVienOnline.TaiKhoan.TaiKhoan_ThongTin();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ltrTaiKhoan.Text += @"        
            <tr id = 'MaDong" + dt.Rows[i]["MaTaiKhoan"] + @"'>
                <td class='cotMa'>" + dt.Rows[i]["MaTaiKhoan"] + @"</td>
                <td class='cotTen'>" + dt.Rows[i]["TenDangNhap"] + @"</td>
                <td class='cotMK'>"+dt.Rows[i]["MatKhau"]+@"</td>
                <td class='cotCongCu'>
                    <a href='/Admin.aspx?modul=TaiKhoan&thaotac=ChinhSua&id=" + dt.Rows[i]["MaTaiKhoan"] + @"'>Sửa</a>
                    <a href='javascript:XoaTaiKhoan(" + dt.Rows[i]["MaTaiKhoan"] + @")'>Xóa</a>
                </td>
            </tr>";
        }
    }
}
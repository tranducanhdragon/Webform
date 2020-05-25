using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhSach_DanhSach_HienThi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LayDanhSach();
    }
    private void LayDanhSach()
    {
        //Hiển thị các danh mục bằng việc lặp lại các thẻ của html
        DataTable dt = new DataTable();
        dt = ThuVienOnline.Sach.Sach_ThongTin();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ltrDanhSach.Text += @"        
            <tr id = 'MaDong" + dt.Rows[i]["MaSach"] + @"'>
                <td class='cotMa'>" + dt.Rows[i]["MaSach"] + @"</td>
                <td class='cotTen'>" + dt.Rows[i]["TenSach"] + @"</td>
                <td class='cotNamXB'>" + dt.Rows[i]["NamXB"] + @"</td>
                <td class='cotTenTG'>" + dt.Rows[i]["MaTG"] + @"</td>
                <td class='cotNXB'>" + dt.Rows[i]["MaNXB"] + @"</td>
                <td class='cotTheLoai'>" + dt.Rows[i]["MaTheLoai"] + @"</td>
                <td class='cotAnh'><img class='anhDaiDien' src='pic/DanhSach/" + dt.Rows[i]["AnhDaiDien"] + @"' /></td>
                <td class='cotCongCu'>
                    <a href='/Admin.aspx?modul=Sach&modulphu=DanhSach&thaotac=ChinhSua&id=" + dt.Rows[i]["MaSach"] + @"'>Sửa</a>
                    <a href='javascript:XoaDanhSach(" + dt.Rows[i]["MaSach"] + @")'>Xóa</a>
                </td>
            </tr>";
        }
    }
}
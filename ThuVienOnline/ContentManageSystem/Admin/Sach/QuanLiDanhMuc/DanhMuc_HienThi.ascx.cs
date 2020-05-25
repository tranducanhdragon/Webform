using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhMuc_DanhMuc_HienThi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LayDanhMuc();
        }
    }
    private void LayDanhMuc()
    {
        //Hiển thị các danh mục bằng việc lặp lại các thẻ của html
        DataTable dt = new DataTable();
        dt = ThuVienOnline.TheLoai.TheLoai_ThongTin();
        for(int i = 0; i < dt.Rows.Count; i++)
        {
            ltrDanhMuc.Text += @"        
            <tr id = 'MaDong"+dt.Rows[i]["MaTheLoai"]+@"'>
                <td class='cotMa'>"+dt.Rows[i]["MaTheLoai"]+ @"</td>
                <td class='cotTen'>" + dt.Rows[i]["TenTheLoai"] + @"</td>
                <td class='cotAnh'><img class='anhDaiDien' src='pic/DanhMucSach/" + dt.Rows[i]["AnhDaiDien"] + @"' /></td>
                <td class='cotCongCu'>
                    <a href='/Admin.aspx?modul=Sach&modulphu=DanhMuc&thaotac=ChinhSua&id="+dt.Rows[i]["MaTheLoai"]+ @"'>Sửa</a>
                    <a href='javascript:XoaDanhMuc(" + dt.Rows[i]["MaTheLoai"] + @")'>Xóa</a>
                </td>
            </tr>";
        }
    }
}
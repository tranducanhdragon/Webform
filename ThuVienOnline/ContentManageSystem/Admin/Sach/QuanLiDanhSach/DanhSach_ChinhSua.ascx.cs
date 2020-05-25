using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhSach_DanhSach_ChinhSua : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbSach.Text = ThuVienOnline.Sach.Sach_Ten(Request.QueryString["id"].ToString());
        LayDanhMuc();
        LayNXB();
    }
    private void LayDanhMuc()
    {
        DataTable dt = new DataTable();
        dt = ThuVienOnline.TheLoai.TheLoai_ThongTin();
        ddlDanhMuc.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlDanhMuc.Items.Add(new ListItem(dt.Rows[i]["TenTheLoai"].ToString(), dt.Rows[i]["MaTheLoai"].ToString()));
        }
    }
    private void LayNXB()
    {
        DataTable dt = new DataTable();
        dt = ThuVienOnline.NXB.NXB_ThongTin();
        ddlNXB.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlNXB.Items.Add(new ListItem(dt.Rows[i]["TenNXB"].ToString(), dt.Rows[i]["MaNXB"].ToString()));
        }
    }
    protected void btnChinhSua(Object sender, EventArgs e)
    {
        //Update ảnh cho danh mục sách
        if (flAnhDaiDien.FileContent.Length > 0)
        {
            if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") ||
                flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
            {
                flAnhDaiDien.SaveAs(Server.MapPath("pic/DanhSach/") + flAnhDaiDien.FileName);
            }
        }
        //Nếu có tên tác giả trong db thì thêm tác giả cho sách, nếu ko thì tạo mới tác giả đó
        if (ThuVienOnline.TacGia.TacGia_SearchByName(tbTenTG.Text) != "Null")
        {
            ThuVienOnline.Sach.Sach_Update(Request.QueryString["id"].ToString(), tbTenSach.Text, tbNamXB.Text, "0", tbTenTG.Text, ddlNXB.SelectedItem.Value.ToString(), ddlDanhMuc.SelectedItem.Value.ToString(), flAnhDaiDien.FileName);
        }
        else
        {
            ThuVienOnline.TacGia.TacGia_Insert((ThuVienOnline.TacGia.TacGia_GetMaTG() + 1).ToString(), tbTenTG.Text);
            ThuVienOnline.Sach.Sach_Update(Request.QueryString["id"].ToString(), tbTenSach.Text, tbNamXB.Text, "0", tbTenTG.Text, ddlNXB.SelectedItem.Value.ToString(), ddlDanhMuc.SelectedItem.Value.ToString(), flAnhDaiDien.FileName);
        }
        ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã chỉnh sửa sách " + lbSach.Text + "</div>";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhSach&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenSach.Text = "";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhSach&thaotac=HienThi");
    }
}
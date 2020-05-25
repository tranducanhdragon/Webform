using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContentManageSystem_Admin_Sach_QuanLiDanhSach_DanhSach_ThemMoi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LayDanhMucCha();
            LayNXBCha();
            LayDanhSachCha();
        }
    }
    private void LayDanhMucCha()
    {
        DataTable dt = new DataTable();
        dt = ThuVienOnline.TheLoai.TheLoai_ThongTin();
        ddlDanhMucCha.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlDanhMucCha.Items.Add(new ListItem(dt.Rows[i]["TenTheLoai"].ToString(), dt.Rows[i]["MaTheLoai"].ToString()));
        }
    }
    private void LayNXBCha()
    {
        DataTable dt = new DataTable();
        dt = ThuVienOnline.NXB.NXB_ThongTin();
        ddlNXBCha.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlNXBCha.Items.Add(new ListItem(dt.Rows[i]["TenNXB"].ToString(), dt.Rows[i]["MaNXB"].ToString()));
        }
    }
    private void LayDanhSachCha()
    {
        DataTable dt = new DataTable();
        dt = ThuVienOnline.Sach.Sach_ThongTin();
        ddlDanhSachCha.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlDanhSachCha.Items.Add(new ListItem(dt.Rows[i]["TenSach"].ToString(), dt.Rows[i]["MaSach"].ToString()));
        }
    }
    protected void btnThemMoi(Object sender, EventArgs e)
    {
        //Thêm ảnh cho sách
        if (flAnhDaiDien.FileContent.Length > 0)
        {
            if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") ||
                flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
            {
                flAnhDaiDien.SaveAs(Server.MapPath("pic/DanhSach/") + flAnhDaiDien.FileName);
            }
        }
        if(ddlDanhSachCha.Items.Count != 0)
        {
            //Nếu có tên tác giả trong db thì thêm tác giả cho sách, nếu ko thì tạo mới tác giả đó
            if(ThuVienOnline.TacGia.TacGia_SearchByName(tbTacGia.Text) != "Null")
            {
                ThuVienOnline.Sach.Sach_Insert((Convert.ToInt32(ddlDanhSachCha.Items[ddlDanhSachCha.Items.Count - 1].Value) + 1).ToString(), tbTenSach.Text, tbNamXB.Text, "0", tbTacGia.Text, ddlNXBCha.SelectedItem.Value, ddlDanhMucCha.SelectedItem.Value, flAnhDaiDien.FileName);
            }
            else
            {
                ThuVienOnline.TacGia.TacGia_Insert((ThuVienOnline.TacGia.TacGia_GetMaTG()+1).ToString(), tbTacGia.Text);
                ThuVienOnline.Sach.Sach_Insert((Convert.ToInt32(ddlDanhSachCha.Items[ddlDanhSachCha.Items.Count - 1].Value) + 1).ToString(), tbTenSach.Text, tbNamXB.Text, "0", tbTacGia.Text, ddlNXBCha.SelectedItem.Value, ddlDanhMucCha.SelectedItem.Value, flAnhDaiDien.FileName);
            }
        }
        else
        {
            ThuVienOnline.Sach.Sach_Insert("1", tbTenSach.Text, tbNamXB.Text, "0", tbTacGia.Text, ddlNXBCha.SelectedItem.Value, ddlDanhMucCha.SelectedItem.Value, flAnhDaiDien.FileName);
        }
        ltrThongBao.Text = "<div class='thongBaoTaoThanhCong'>Đã tạo sách " + tbTenSach.Text + "</div>";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhSach&thaotac=HienThi");
    }
    protected void btnHuy(Object sender, EventArgs e)
    {
        tbTenSach.Text = "";
        tbNamXB.Text = "";
        tbTacGia.Text = "";
        Response.Redirect("/Admin.aspx?modul=Sach&modulphu=DanhSach&thaotac=HienThi");
    }
}
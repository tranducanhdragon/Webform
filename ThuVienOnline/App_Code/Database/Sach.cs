using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Sach
/// </summary>
namespace ThuVienOnline
{
    public class Sach
    {
        //Xóa sách theo mã sách
        //<param name ="MaSach"> mã sách cần xóa</param>
        public static void Sach_Delete(string MaSach)
        {
            SqlCommand cmd = new SqlCommand("Sach_Delete");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@maSach", Convert.ToInt32(MaSach));
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static void Sach_Insert(string MaSach, string TenSach, string NamXB, string IDThe, string TenTG, string MaNXB, string MaTheLoai, string AnhDaiDien)
        {
            SqlCommand cmd = new SqlCommand("Sach_Insert");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaSach",Convert.ToInt32(MaSach));
            cmd.Parameters.AddWithValue("@TenSach", TenSach);
            cmd.Parameters.AddWithValue("@NamXB", Convert.ToInt32(NamXB));
            cmd.Parameters.AddWithValue("@IDThe", Convert.ToInt32(IDThe));
            cmd.Parameters.AddWithValue("@TenTG", TenTG);
            cmd.Parameters.AddWithValue("@MaNXB", Convert.ToInt32(MaNXB));
            cmd.Parameters.AddWithValue("@MaTheLoai", Convert.ToInt32(MaTheLoai));
            cmd.Parameters.AddWithValue("@AnhDaiDien", AnhDaiDien);
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static void Sach_Update(string MaSach, string TenSach, string NamXB, string IDThe, string TenTG, string MaNXB, string MaTheLoai, string AnhDaiDien)
        {
            SqlCommand cmd = new SqlCommand("Sach_Update");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaSach", Convert.ToInt32(MaSach));
            cmd.Parameters.AddWithValue("@TenSach", TenSach);
            cmd.Parameters.AddWithValue("@NamXB", Convert.ToInt32(NamXB));
            cmd.Parameters.AddWithValue("@IDThe", Convert.ToInt32(IDThe));
            cmd.Parameters.AddWithValue("@TenTG", TenTG);
            cmd.Parameters.AddWithValue("@MaNXB", Convert.ToInt32(MaNXB));
            cmd.Parameters.AddWithValue("@MaTheLoai", Convert.ToInt32(MaTheLoai));
            cmd.Parameters.AddWithValue("@AnhDaiDien", AnhDaiDien);
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static DataTable Sach_ThongTin()
        {
            SqlCommand cmd = new SqlCommand("Sach_ThongTin");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static string Sach_Ten(string MaSach)
        {
            SqlCommand cmd = new SqlCommand("Sach_Ten");
            cmd.Parameters.AddWithValue("@MaSach", Convert.ToInt32(MaSach));
            cmd.Parameters.Add("@TenSach", SqlDbType.NVarChar, 50);
            cmd.Parameters["@TenSach"].Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            SQLDatabase.ExecuteNonQuery(cmd);
            return Convert.ToString(cmd.Parameters["@TenSach"].SqlValue);
        }
    }
}

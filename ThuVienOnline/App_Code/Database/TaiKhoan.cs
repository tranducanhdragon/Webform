using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TaiKhoan
/// </summary>
namespace ThuVienOnline
{
    public class TaiKhoan
    {

        public static void TaiKhoan_Delete(string MaTaiKhoan)
        {
            SqlCommand cmd = new SqlCommand("TaiKhoan_Delete");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaTaiKhoan", Convert.ToInt32(MaTaiKhoan));
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static void TaiKhoan_Insert(string MaTaiKhoan, string TenDangNhap, string MatKhau)
        {
            SqlCommand cmd = new SqlCommand("TaiKhoan_Insert");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaTaiKhoan", Convert.ToInt32(MaTaiKhoan));
            cmd.Parameters.AddWithValue("@TenDangNhap", TenDangNhap);
            cmd.Parameters.AddWithValue("@MatKhau", MatKhau);
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static DataTable TaiKhoan_ThongTin()
        {
            SqlCommand cmd = new SqlCommand("TaiKhoan_ThongTin");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static string TaiKhoan_Ten(string MaTaiKhoan)
        {
            SqlCommand cmd = new SqlCommand("TaiKhoan_Ten");
            cmd.Parameters.AddWithValue("@MaTaiKhoan", Convert.ToInt32(MaTaiKhoan));
            cmd.Parameters.Add("@TenDangNhap", SqlDbType.NVarChar, 50);
            cmd.Parameters["@TenDangNhap"].Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            SQLDatabase.ExecuteNonQuery(cmd);
            return Convert.ToString(cmd.Parameters["@TenDangNhap"].SqlValue);
        }
        public static void TaiKhoan_Update(string MaTaiKhoan, string TenTaiKhoan, string MatKhau)
        {
            SqlCommand cmd = new SqlCommand("TaiKhoan_Update");
            cmd.Parameters.AddWithValue("@MaTaiKhoan", Convert.ToInt32(MaTaiKhoan));
            cmd.Parameters.AddWithValue("@TenDangNhap", TenTaiKhoan);
            cmd.Parameters.AddWithValue("@MatKhau", MatKhau);
            cmd.CommandType = CommandType.StoredProcedure;
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static DataTable TaiKhoan_DangNhap_MatKhau(string TenDangNhap, string MatKhau)
        {
            SqlCommand cmd = new SqlCommand("TaiKhoan_DangNhap_MatKhau");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TenDangNhap", TenDangNhap);
            cmd.Parameters.AddWithValue("@MatKhau", MatKhau);
            return SQLDatabase.GetData(cmd);
        }
    }
}
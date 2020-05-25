using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TheLoai
/// </summary>
namespace ThuVienOnline
{
    public class TheLoai
    {
        public static void TheLoai_Delete(string MaTheLoai)
        {
            SqlCommand cmd = new SqlCommand("TheLoai_Delete");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@maTheLoai", Convert.ToInt32(MaTheLoai));
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static void TheLoai_Insert(string MaTheLoai, string TenTheLoai, string AnhDaiDien)
        {
            SqlCommand cmd = new SqlCommand("TheLoai_Insert");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaTheLoai", Convert.ToInt32(MaTheLoai));
            cmd.Parameters.AddWithValue("@TenTheLoai", TenTheLoai);
            cmd.Parameters.AddWithValue("@AnhDaiDien", AnhDaiDien);
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static DataTable TheLoai_ThongTin()
        {
            SqlCommand cmd = new SqlCommand("TheLoai_ThongTin");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static string TheLoai_Ten(string MaTheLoai)
        {
            SqlCommand cmd = new SqlCommand("TheLoai_Ten");
            cmd.Parameters.AddWithValue("@MaTheLoai", Convert.ToInt32(MaTheLoai));
            cmd.Parameters.Add("@TenTheLoai", SqlDbType.NVarChar, 50);
            cmd.Parameters["@TenTheLoai"].Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            SQLDatabase.ExecuteNonQuery(cmd);
            return Convert.ToString(cmd.Parameters["@TenTheLoai"].SqlValue);
        }
        public static void TheLoai_Update(string MaTheLoai, string TenTheLoai, string AnhDaiDien)
        {
            SqlCommand cmd = new SqlCommand("TheLoai_Update");
            cmd.Parameters.AddWithValue("@MaTheLoai", Convert.ToInt32(MaTheLoai));
            cmd.Parameters.AddWithValue("@TenTheLoai", TenTheLoai);
            cmd.Parameters.AddWithValue("@AnhDaiDien", AnhDaiDien);
            cmd.CommandType = CommandType.StoredProcedure;
            SQLDatabase.ExecuteNonQuery(cmd);
        }
    }
}
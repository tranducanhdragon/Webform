using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for NXB
/// </summary>
namespace ThuVienOnline
{
    public class NXB
    {

        public static void NXB_Delete(string MaNXB)
        {
            SqlCommand cmd = new SqlCommand("NXB_Delete");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@maNXB", Convert.ToInt32(MaNXB));
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static void NXB_Insert(string MaNXB, string TenNXB, string AnhDaiDien)
        {
            SqlCommand cmd = new SqlCommand("NXB_Insert");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaNXB", Convert.ToInt32(MaNXB));
            cmd.Parameters.AddWithValue("@TenNXB", TenNXB);
            cmd.Parameters.AddWithValue("@AnhDaiDien", AnhDaiDien);
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static DataTable NXB_ThongTin()
        {
            SqlCommand cmd = new SqlCommand("NXB_ThongTin");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static string NXB_Ten(string MaNXB)
        {
            SqlCommand cmd = new SqlCommand("NXB_Ten");
            cmd.Parameters.AddWithValue("@MaNXB", Convert.ToInt32(MaNXB));
            cmd.Parameters.Add("@TenNXB", SqlDbType.NVarChar, 50);
            cmd.Parameters["@TenNXB"].Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            SQLDatabase.ExecuteNonQuery(cmd);
            return Convert.ToString(cmd.Parameters["@TenNXB"].SqlValue);
        }
        public static void NXB_Update(string MaNXB, string TenNXB, string AnhDaiDien)
        {
            SqlCommand cmd = new SqlCommand("NXB_Update");
            cmd.Parameters.AddWithValue("@MaNXB", Convert.ToInt32(MaNXB));
            cmd.Parameters.AddWithValue("@TenNXB", TenNXB);
            cmd.Parameters.AddWithValue("@AnhDaiDien", AnhDaiDien);
            cmd.CommandType = CommandType.StoredProcedure;
            SQLDatabase.ExecuteNonQuery(cmd);
        }
    }
}
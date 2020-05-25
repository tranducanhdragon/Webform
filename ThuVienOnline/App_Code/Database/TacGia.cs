using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for TacGia
/// </summary>
namespace ThuVienOnline
{
    public class TacGia
    {

        public static DataTable TacGia_ThongTin()
        {
            SqlCommand cmd = new SqlCommand("TacGia_ThongTin");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static string TacGia_SearchByName(string TenTG)
        {
            SqlCommand cmd = new SqlCommand("TacGia_SearchByName");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TenTG", TenTG);
            cmd.Parameters.Add("@MaTG", SqlDbType.Int);
            cmd.Parameters["@MaTG"].Direction = ParameterDirection.Output;
            SQLDatabase.ExecuteNonQuery(cmd);
            return cmd.Parameters["@MaTG"].SqlValue.ToString();
        }
        public static void TacGia_Insert(string MaTG, string TenTG)
        {
            SqlCommand cmd = new SqlCommand("TacGia_Insert");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TenTG", TenTG);
            cmd.Parameters.AddWithValue("@MaTG", MaTG);
            SQLDatabase.ExecuteNonQuery(cmd);
        }
        public static int TacGia_GetMaTG()
        {
            SqlCommand cmd = new SqlCommand("TacGia_GetMaTG");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaTG", SqlDbType.Int);
            cmd.Parameters["@MaTG"].Direction = ParameterDirection.Output;
            SQLDatabase.ExecuteNonQuery(cmd);
            int i = Convert.ToInt32(cmd.Parameters["@MaTG"].Value);
            return i;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for SQLDatabase
/// </summary>
namespace ThuVienOnline
{
    public class SQLDatabase
    {
        private static string _connectionString = string.Empty;
        public static string ConnectionString
        {
            get{
                if (_connectionString.Equals(""))
                {
                    _connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
                }
                return _connectionString;
            }
            set{
                _connectionString = value;
            }
        }
        public static SqlConnection GetConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConnectionString;
            conn.Open();
            return conn;
        }
        public static void ExecuteNonQuery(SqlCommand cmd)
        {
            if(cmd.Connection != null)
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlConnection conn = GetConnection();
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
            }
        }
        //Trả về một bảng dữ liệu
        public static DataTable GetData(SqlCommand cmd)
        {
            if(cmd.Connection != null)
            {
                using (DataSet ds = new DataSet())
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);
                        return ds.Tables[0];
                    }
                }
            }
            else
            {
                using(SqlConnection conn = GetConnection())
                {
                    cmd.Connection = conn;
                    using (DataSet ds = new DataSet())
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(ds);
                            return ds.Tables[0];
                        }
                    }
                }
            }
        }
        //Trả về nhiều bảng dữ liệu
        public static DataSet GetData_OverDataset(SqlCommand cmd)
        {
            if(cmd.Connection != null)
            {
                using(DataSet ds = new DataSet())
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);
                        return ds;
                    }
                }
            }
            else
            {
                using(SqlConnection conn = GetConnection())
                {
                    cmd.Connection = conn;
                    using(DataSet ds = new DataSet())
                    {
                        using(SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(ds);
                            return ds;
                        }
                    }
                }
            }
        }
    }
}

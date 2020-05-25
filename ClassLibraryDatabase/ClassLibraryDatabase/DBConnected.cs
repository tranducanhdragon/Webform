using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ClassLibraryDatabase
{
    public class DBConnected
    {
        private SqlConnection sqlCn = null;

        public void OpenConnection(string xauketnoi)
        {
            sqlCn = new SqlConnection();
            sqlCn.ConnectionString = xauketnoi;
            sqlCn.Open();
        }
        public void CloseConnection()
        {
            sqlCn.Close();
        }

//         public List<User> getAllUsers()
//         {
//             List<User> ds = new List<User>();
//             string sql = "Select * from [User]";
//             using (SqlCommand cmd = new SqlCommand(sql, sqlCn))
//             {
//                 SqlDataReader rd = cmd.ExecuteReader();
//                 while (rd.Read()) {
//                     ds.Add(new User
//                     {
//                         ID = (int)rd["ID"],
//                         Name = (string)rd["Name"],
//                         Email = (string)rd["Email"],
//                         Password = (string)rd["Password"],
//                         Country = (string)rd["Country"],
//                     });
//                 }
// 
//                 rd.Close();
//             }
//             return ds;
//         }
        public DataTable GetAllUsers()
        {
            DataTable dt = new DataTable();
            string sql = "Select * from [User]";
            using(SqlCommand cmd = new SqlCommand(sql, sqlCn))
            {
                SqlDataReader rd = cmd.ExecuteReader();
                dt.Load(rd);
                rd.Close();
            }
            return dt;
        }
        public void InsertUser(User nv)
        {
            string sql = "insert into [User](Name, Email, Password, Country) values( @Name, @Email, @Password, @Country )";
            SqlParameter paraName = new SqlParameter("@Name", nv.Name);
            SqlParameter paraEmail = new SqlParameter("@Email", nv.Email);
            SqlParameter paraPassword = new SqlParameter("@Password", nv.Password);
            SqlParameter paraCountry = new SqlParameter("@Country", nv.Country);
            using (SqlCommand cmd = new SqlCommand(sql, sqlCn))
            {
                cmd.Parameters.Add(paraName);
                cmd.Parameters.Add(paraEmail);
                cmd.Parameters.Add(paraPassword);
                cmd.Parameters.Add(paraCountry);
                cmd.ExecuteNonQuery();
            }
        }
        public void DeleteUser(int id)
        {

            string sql = "Delete from [User] where id = @id";
            SqlParameter para = new SqlParameter("@id", id);
            using (SqlCommand cmd = new SqlCommand(sql, sqlCn))
            {
                cmd.Parameters.Add(para);
                cmd.ExecuteNonQuery();
            }
        }
        public bool CheckUser(string email, string password)
        {
            string sql_pass = "select password from [User] where email = @email";
            SqlParameter para = new SqlParameter("@email", email);
            using(SqlCommand cmd = new SqlCommand(sql_pass, sqlCn))
            {
                cmd.Parameters.Add(para);
                string pass_inSQL = cmd.ExecuteScalar().ToString();
                if(pass_inSQL == password)
                {
                    return true;
                }
            }
            return false;
        }
        public bool CheckDupEmail(string email)
        {
            string sql = "select email from [User] where email = @email";
            SqlParameter para = new SqlParameter("@email", email);
            using(SqlCommand cmd = new SqlCommand(sql, sqlCn))
            {
                cmd.Parameters.Add(para);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return true;
                }
            }
            return false;
        }
        public bool CheckEmailExist(string email)
        {
            string sql = "select email from [User] where email = @email";
            SqlParameter para = new SqlParameter("@email", email);
            using(SqlCommand cmd = new SqlCommand(sql, sqlCn))
            {
                cmd.Parameters.Add(para);
                SqlDataReader rd = cmd.ExecuteReader();
                if(rd.Read() == true)
                {
                    return true;
                }
            }
            return false;
        }
    }
}

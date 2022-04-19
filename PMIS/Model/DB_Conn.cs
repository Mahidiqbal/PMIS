using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMC
{
    class DB_Conn
    {
        
        protected SqlConnection GetSqlConnection()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=LHR-IT-332441L\\SQLEXPRESS; Initial Catalog=PMIS; Integrated Security=True";
            //con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="+ System.IO.Path.GetFullPath("db_PMS.mdf") + ";Integrated Security=True;Connect Timeout=30";
            //; User Instance = True  |DataDirectory|\db_PMS.mdf
            return con; 
        }
        public DataSet getData(string query)
        {
            SqlConnection con = GetSqlConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable getValue(string query)
        {
            SqlConnection con = GetSqlConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
        public void setData(string query)
        {
            SqlConnection con = GetSqlConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            con.Close(); 
        }
        public int setData3(string query, SqlTransaction obj )
        {
            //  SqlConnection con = GetSqlConnection();

            //  con.Open();
            //obj = con.BeginTransaction();
            SqlCommand cmd = new SqlCommand(query, obj.Connection);
            cmd.Transaction = obj;
            //i = cmd.ExecuteNonQuery();
            int modified = (int)cmd.ExecuteScalar();
            
            if (modified > 0)
            {
                return modified;
            }
            //con.Close();
            return 0;

        }
       
        public void setData2(string query)
        {
            SqlConnection con = GetSqlConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}

using System;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

namespace Day3_4
{
    public class Connection
    {
        DataTable datatable;
        public object ConnectionGenerate(string query)
        {
            MySqlConnection sqlconn;
            MySqlCommand sqlcmd;
            MySqlDataAdapter sqladapter;
            MySqlDataReader sqlreader;
            sqlconn = new MySqlConnection();
            try
            {
                //connectionstring
                sqlconn.ConnectionString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                if (sqlconn != null && sqlconn.State == ConnectionState.Closed)
                {
                    sqlconn.Open();//open the connection                        
                }
                sqlcmd = new MySqlCommand(query, sqlconn);
                sqladapter = new MySqlDataAdapter(sqlcmd);
                sqlreader = sqlcmd.ExecuteReader();//Reading data
                datatable = new DataTable();
                datatable.Load(sqlreader);
                return datatable;
            }
            catch (Exception)
            {
                return 0;
            }
            finally
            {
                if (sqlconn.State == ConnectionState.Open)
                {
                    sqlconn.Close();//open the connection                        
                }
                sqlcmd = null;
                sqladapter = null;
                sqlreader = null;
            }
        }
    }
}
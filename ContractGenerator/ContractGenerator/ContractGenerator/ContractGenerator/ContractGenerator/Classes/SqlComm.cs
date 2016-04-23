using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class SqlComm
    {
        static string DatabaseConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ContractGen"].ConnectionString;

        // Execute sql command with no value to return
        public static void SqlExecute(string sql)
        {
            using (SqlConnection conn = new SqlConnection(DatabaseConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);               
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        // Execute SQL query and return a value
        public static object SqlReturn(string sql)
        {
            using (SqlConnection conn = new SqlConnection(DatabaseConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                object result = (object)cmd.ExecuteScalar();
                conn.Close();
                return result;
            }
        }


        public static DataTable SqlDataTable(string sql)
        {
            using (SqlConnection conn = new SqlConnection(DatabaseConnectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    DataTable TempTable = new DataTable();
                    TempTable.Load(cmd.ExecuteReader());
                    conn.Close();
                    return TempTable;
                }
                catch(SqlException e)
                {
                    Console.Write("Error ");
                    return null;
                }
            }
        }

    }
}
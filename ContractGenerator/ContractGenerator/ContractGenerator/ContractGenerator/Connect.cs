using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Configuration;

    public class Connect
    {
        private SqlDataAdapter myAdapter;
        ConnectionStringSettings connectionStringSettings = ConfigurationManager.ConnectionStrings["ContractGenerator"];
        Document doc = new Document();

        private SqlConnection openConnection()
        {
            string connectionString = connectionStringSettings.ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            {
                con.Open();
            }

            return con;
        }

        public DataTable executeSelectQuery(String _query)
        {
            SqlCommand myCommand = new SqlCommand();
            DataTable dataTable = new DataTable();
            dataTable = null;
            DataSet ds = new DataSet();
            try
            {
                myCommand.Connection = openConnection();
                myCommand.CommandText = _query;
                myCommand.ExecuteNonQuery();
                myAdapter.SelectCommand = myCommand;
                myAdapter.Fill(ds);
                dataTable = ds.Tables[0];
            }
            catch (SqlException e)
            {
                Console.Write("Error ");
                return null;
            }
            finally
            {

            }
            return dataTable;
        }

    }
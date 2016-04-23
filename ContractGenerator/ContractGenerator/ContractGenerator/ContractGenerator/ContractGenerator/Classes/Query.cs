using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ContractGenerator
{
    public class Query
    {
        private Connect con;
        
        public Query()
        {
            con = new Connect();
        }

     
        public DataTable SectionID (int sectionID)
        {
            string query = string.Format("SELECT SectionTitle FROM ContractSection WHERE SectionID = " + sectionID + ";");
            return con.executeSelectQuery(query);
        }

        public DataTable SectionDetail(int sectionID)
        {
            string query = string.Format("SELECT SectionDetail FROM ContractSection WHERE SectionID = " + sectionID + ";");
            return con.executeSelectQuery(query);
        }

    }
}
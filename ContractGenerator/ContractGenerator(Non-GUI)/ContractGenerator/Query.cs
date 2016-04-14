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
        /// <constructor>
        /// Constructor UserDAO
        /// </constructor>
        public Query()
        {
            con = new Connect();
        }

        /// <method>
        /// Get User Email By Firstname or Lastname and return DataTable
        /// </method>
        public DataTable sampleQuery(string _username)
        {
            string query = string.Format("SELECT TemplateTitle, CreateDate, CreateBy, ModifiedDate FROM ContractTemplate");
            return con.executeSelectQuery(query);
        }

    }
}
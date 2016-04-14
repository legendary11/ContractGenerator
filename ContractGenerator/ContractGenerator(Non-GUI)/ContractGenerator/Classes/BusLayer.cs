using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ContractGenerator.Classes
{
    public class BusLayer
    {
        private Query _query;

        public BusLayer()
        {
            _query = new Query();
        }

        public ContractTemplate getTemplateTitle(string templateTitle)
        {
            ContractTemplate contractTemplate = new ContractTemplate();
            DataTable dataTable = new DataTable();

            dataTable = _query.sampleQuery(templateTitle);

            foreach (DataRow dr in dataTable.Rows)
            {
                contractTemplate.templateTitle = dr["_templateTitle"].ToString();

            }
            return contractTemplate;
        }
    }
}
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

        public ContractSection getSectionTitle(int sectionID)
        {
            ContractSection contractSection = new ContractSection();
            DataTable dataTable = new DataTable();

            dataTable = _query.SectionID(sectionID);

            foreach (DataRow dr in dataTable.Rows)
            {
                contractSection.SectionTitle = dr["SectionTitle"].ToString();

            }
            return contractSection;
        }

        public ContractSection getDetails(int detailID)
        {
            ContractSection contractSection = new ContractSection();
            DataTable dataTable = new DataTable();

            dataTable = _query.SectionDetail(detailID);

            foreach (DataRow dr in dataTable.Rows)
            {
                contractSection.SectionDetail = dr["SectionDetail"].ToString();

            }
            return contractSection;
        }
    }
}
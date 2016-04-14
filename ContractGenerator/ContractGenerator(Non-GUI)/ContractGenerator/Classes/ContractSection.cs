using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class ContractSection
    {
        private int SectionID;
        private int ParentID;
        private string SectionTitle;
        private string SectionDetail;

        public int getSectionID()
        {
            return SectionID;
        }

        public int getParentID()
        {
            return ParentID;
        }

        public string getSectionTitle()
        {
            return SectionTitle;
        }

        public string getSectionDetail()
        {
            return SectionDetail;
        }
    }
}
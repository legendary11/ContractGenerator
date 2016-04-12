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
        private String SectionTitle;
        private String SectionDetail;

        public int getSectionID()
        {
            return SectionID;
        }

        public int getParentID()
        {
            return ParentID;
        }

        public String getSectionTitle()
        {
            return SectionTitle;
        }

        public String getSectionDetail()
        {
            return SectionDetail;
        }
    }
}
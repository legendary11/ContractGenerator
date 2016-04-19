using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class ContractSection
    {
        private int _sectionID;
        private int _parentID;
        private string _sectionTitle;
        private string _sectionDetail;

        public ContractSection()
        {
            _sectionID = 0;
            _sectionTitle = "";
            _sectionDetail = " ";
            _parentID = 0;
        }


        public int SectionID{get;set;}
        
        public int ParentID{get;set;}
       
        public string SectionTitle{get;set;}
       
        public string SectionDetail{get;set;}

        public override string ToString()
        {
            return String.Format("{0} {1}\n", SectionTitle, SectionDetail);
        }

    }
}
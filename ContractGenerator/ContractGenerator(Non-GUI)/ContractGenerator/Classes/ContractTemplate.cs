using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text;


namespace ContractGenerator
{
    public class ContractTemplate
    {
        private int _templateID;
        private string _templateTitle;
        private string _createdDate;
        private string _createdBy;
        private string _lastModifiedDate;

        public ContractTemplate()
        {
            //constructor
        }

        public int templateID {get;set;}
        public string templateTitle{ get; set; }
        public string createdDate {get; set; }
        public string createdBy { get; set; }
        public string lastModifiedDate { get; set; }

    }
}
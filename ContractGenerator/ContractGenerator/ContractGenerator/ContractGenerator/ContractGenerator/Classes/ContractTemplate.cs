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

        public int TemplateID {get;set;}
        public string TemplateTitle{ get; set; }
        public string CreatedDate {get; set; }
        public string CreatedBy { get; set; }
        public string LastModifiedDate { get; set; }

    }
}
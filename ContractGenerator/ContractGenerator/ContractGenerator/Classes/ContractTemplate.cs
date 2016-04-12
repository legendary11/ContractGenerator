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


        /*
        public Document generateDocument()
        {
            Document doc = new Document();
            PdfWriter.GetInstance(doc, new FileStream(System.IO.Directory.GetCurrentDirectory() + 
                "\\contract.pdf", FileMode.OpenOrCreate, FileAccess.ReadWrite));
            doc.Open();
            doc.Close();
            return doc;
        }

        public void generateHeading(Document doc)
        {
            try
            {
                //add info to document
                //add heading table
                PdfWriter.GetInstance(doc, new FileStream("contract.pdf", FileMode.Append));
                doc.Open();
                PdfPTable table = new PdfPTable(2);
                table.AddCell("Company:");
                table.AddCell("Name:");
                table.AddCell("Address:");
                table.AddCell("City:");
                table.AddCell("Phone:");
                table.AddCell("Email:");

                doc.Add(table);
                doc.Close();
            }
            catch (Exception ex)
            {

            }
        }

      */ 
    }
}
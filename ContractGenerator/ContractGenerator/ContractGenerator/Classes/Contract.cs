using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text;

namespace ContractGenerator
{
    public class Contract
    {
        private ContractTemplate contractTemplate = new ContractTemplate();
        private User user;
        private int ContractID;
        private int TemplateID;
        private int UserID;
        private String PrimaryDomain;
        private String lastModifiedDate;

        public Document generateDocument()
        {
            Document doc = new Document();
            PdfWriter.GetInstance(doc, new FileStream("contract.pdf", FileMode.Create));
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

        public int getNumberOfPages()
        {
            string filePath = "C:\\contract.pdf";
            PdfReader pdfReader = new PdfReader(filePath);
            int numberOfPages = pdfReader.NumberOfPages;
            return numberOfPages;

        }
    }
}
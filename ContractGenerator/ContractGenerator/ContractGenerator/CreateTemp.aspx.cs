﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using ContractGenerator.Classes;
using HTMLtoPDF;

namespace ContractGenerator
{
    public partial class CreateTemp : System.Web.UI.Page
    {
        private BusLayer _buslayer = new BusLayer();
        private int numOfSections = 0;
        private int numOfDetails = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public int sectionListCount()
        {
            foreach (System.Web.UI.WebControls.ListItem li in SectionList.Items)
            {
                if (li.Selected)
                {
                    numOfSections += 1;
                }
            }
            return numOfSections;
        }

        public int detailListCount()
        {
            foreach (System.Web.UI.WebControls.ListItem li in DetailList.Items)
            {
                if (li.Selected)
                {
                    numOfDetails += 1;
                }
            }
            return numOfDetails;
        }

        public void createTemplate()
        {
            int sectionCount = sectionListCount();
            int detailCount = detailListCount();

            try
            {
                string strHtml = "<html><head></head><body>";
               
                string close = "</body>";

                if (sectionCount > 0)
                {
                    //add section title loop
                    for (int i = 0; i < sectionCount; i++)
                    {
                        strHtml += _buslayer.getSectionTitle(i).ToString() + Environment.NewLine;
                       

                    }

                }
                strHtml += close;

                string pdfFileName = Request.PhysicalApplicationPath + "Contract.pdf";

                CreatePDFFromHTMLFile(strHtml, pdfFileName);

                Response.ContentType = "application/x-download";
                Response.AddHeader("Content-Disposition", string.Format("attachment; filename=\"{0}\"", "Contract.pdf"));
                Response.WriteFile(pdfFileName);
                Response.Flush();
                Response.End();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }


            public void CreatePDFFromHTMLFile(string HtmlStream, string FileName)
            {
                try
                {
                    object TargetFile = FileName;
                    string ModifiedFileName = string.Empty;
                    string FinalFileName = string.Empty;


                    GeneratePDF.HtmlToPdfBuilder builder = new GeneratePDF.HtmlToPdfBuilder(iTextSharp.text.PageSize.A4);
                    GeneratePDF.HtmlPdfPage first = builder.AddPage();
                    first.AppendHtml(HtmlStream);
                    byte[] file = builder.RenderPdf();
                    File.WriteAllBytes(TargetFile.ToString(), file);

                    iTextSharp.text.pdf.PdfReader reader = new iTextSharp.text.pdf.PdfReader(TargetFile.ToString());
                    ModifiedFileName = TargetFile.ToString();
                    ModifiedFileName = ModifiedFileName.Insert(ModifiedFileName.Length - 4, "1");

                    iTextSharp.text.pdf.PdfEncryptor.Encrypt(reader, new FileStream(ModifiedFileName, FileMode.Append), iTextSharp.text.pdf.PdfWriter.STRENGTH128BITS, "", "", iTextSharp.text.pdf.PdfWriter.AllowPrinting);
                    reader.Close();
                    if (File.Exists(TargetFile.ToString()))
                        File.Delete(TargetFile.ToString());
                    FinalFileName = ModifiedFileName.Remove(ModifiedFileName.Length - 5, 1);
                    File.Copy(ModifiedFileName, FinalFileName);
                    if (File.Exists(ModifiedFileName))
                        File.Delete(ModifiedFileName);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

            protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
            {
                createTemplate();
            }

           
    }
}
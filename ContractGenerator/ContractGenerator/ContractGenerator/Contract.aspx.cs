using System;
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
using ContractGenerator;

namespace HTMLtoPDF
{
    public partial class ConvertHTMLtoPDF : System.Web.UI.Page
    {
        private BusLayer _buslayer;

        protected void Page_Load(object sender, EventArgs e)
        {
              if (!User.Identity.IsAuthenticated)
              {
                  Response.Redirect("login.aspx");
              }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DownloadAsPDF();
        }

        public ConvertHTMLtoPDF()
        {
            _buslayer = new BusLayer();
        }

        public void DownloadAsPDF()
        {
            

            try
            {
                //string strHtml = string.Empty;
                string strHtml = "<html><head></head><body> <h1 style='color: #3A71C4'> " +
                                      " Section </h1> " +
                                    " <p /> " +
                                    " <p style='color: #000000'> " +
                                        " Your project includes the following Standard Deliverables and Functionality. Any specific requirements beyone the Standard Scope of Work will either be included in the Custom Scope of Work section, or subject to Element 74, L.L.C.&#39;s standard billing rate of $94 per hour.</p> " +
                                    " <p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'> " +
                                     " 1.";

                string pdfFileName = Request.PhysicalApplicationPath + "Contract.pdf";
                
                //StringWriter sw = new StringWriter();
               // HtmlTextWriter hw = new HtmlTextWriter(sw);
               // pdfTemplate.RenderControl(hw);
               // StringReader sr = new StringReader(sw.ToString());
               // strHtml = sr.ReadToEnd();
              //  sr.Close();

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
    }
}
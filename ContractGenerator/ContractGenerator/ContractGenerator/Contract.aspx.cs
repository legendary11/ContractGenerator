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
                                      " 1. Standard Scope of Work </h1> " +
                                    " <p /> " +
                                    " <p style='color: #000000'> " +
                                        "Your project includes the following Standard Deliverables and Functionality. Any specific requirements beyone the Standard Scope of Work will either be included in the Custom Scope of Work section, or subject to Element 74, L.L.C.&#39;s standard billing rate of $94 per hour.</p> " +
                                    " <p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'> " +
                                        "1. Wireframe and Sitemap documents</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "2. Home page and Secondary page website design templates</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "3. Site programming and EasyPost®™ 3.3 Installment</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "4. EasyPost®™ Content Manager System Training</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "5. Content Posting</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;'>" +
                                        "Element 74, L.L.C. will post up to 10 pages of content for your project. Additional content posting will be billed at our normal rate.</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;'>" +
                                        "Standard content posting includes the placement of imgage, text, and video. Any additional special JavaScript or Flash effects are not included in standard content posting.</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "6. Forms</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;'>" +
                                        "Two(1) basic forms will be included with your project (typically a &quot;Contact Us&quot; form and one additional)</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 80px;'>" +
                                        "Each form will have no more than 10 fields of data</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 80px;'>" +
                                        "Fields will include standard validation (whether information is required or not)</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 80px;'>" +
                                        "Any special formatting of fields will take additional programming time.</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;'>" +
                                        "Additional forms and/or fields will be billed at our standard billing rate.</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "7. Rotator Images</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;'>" +
                                        "Images provided for the home page or secondary page rotator will be required to be delivered to ELEMENT 74, L.L.C. in a format that closely matches the format of the rotator. Additional billable graphic design hours may be necessary if images provided do not meet these specifications.</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "8. 3rd Part Integration</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;'>" +
                                        "Integration with 3rd party vendors and their software components is not included in the Standard Scope and will be quoted separately or included in the Custom Scope of Work section.</p>" +
                                    "<p style='font-size: medium; color: #000000'>" +
                                        "&nbsp;</p>" +
                                    "<p style='color: #000000; margin-top: 0px; margin-bottom: 0px;'>" +
                                        "CLIENT Initials __________</p>" +
                                    "<h1 style='color: #3A71C4'>" +
                                        "2. Custom Scope of Work</h1>" +
                                    "<p>" +
                                        "Your project will include the following custom deliverables that fall beyond our standard Scope of Work:</p>" +
                                    "<p style='text-decoration: underline'>" +
                                        "Items not listed above are considered out of scope for this project and will require a change order request from the CLIENT. Upon request, ELEMENT 74, L.L.C. will submit a quote to CLIENT at our standard billing rate for any additional work required.</p>" +
                                    "<p>" +
                                        "CLIENT Initials __________";


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
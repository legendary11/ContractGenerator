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
        private String CreatedBy;
        private Document doc = new Document();

        public Document generateDocument()
        {
            Document doc = new Document();
            PdfWriter.GetInstance(doc, new FileStream("contract.pdf",FileMode.Create));
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

                 doc.NewPage();


                 Font headFont = new Font(iTextSharp.text.Font.FontFamily.HELVETICA, 15, iTextSharp.text.Font.BOLD, BaseColor.BLUE);
                 Font listFont = new Font(iTextSharp.text.Font.FontFamily.HELVETICA, 13, iTextSharp.text.Font.BOLD, BaseColor.BLUE);
                 Font textFont = new Font(iTextSharp.text.Font.FontFamily.HELVETICA, 12, iTextSharp.text.Font.BOLD, BaseColor.BLACK);

                 Chunk headChunk = new Chunk("3. ELEMENT 74, L.L.C.’s Web Design Process", headFont);
                 doc.AddChunk(headChunk);

                 Paragraph paragraph = new Paragraph();
                 Chunk chunk = new Chunk("1. Client Meeting", listFont);
                 paragraph.add(chunk);
                 //These chunks are on separate lines purely for readability in the code
                 //If chunks are too long, try replacing them with a phrase
                 chunk = new chunk("A member or multiple members of the ELEMENT 74, L.L.C. team will meet with you to discuss the scope of your web design project including design parameters, " &
                    "overall marketing goals and objectives and desired look and feel.", textFont); 
                 paragraph.add(chunk);
                 doc.add(paragraph);

                 paragraph = new Paragraph();
                 chunk = new chunk("2. Project Management", listFont);
                 paragraph.add(chunk);
                 chunk = new chunk("Following the initial CLIENT meeting, a Project Manager will be assigned to your project to ensure timely production. In order to maintain project continuity, " &
                     "the CLIENT will be expected to correspond with the Project Manager in a timely fashion at all times.", textFont);
                 paragraph.add(chunk);
                 doc.add(paragraph);

                 paragraph = new Paragraph();
                 chunk = new chunk("3. Project Planning Documents", listFont);
                 paragraph.add(chunk);
                 chunk = new chunk("Your Project Manager will be drafting documents following the initial meeting. The documents may include one or all of the following, " &
                     "depending upon the scope of the project: Site Map, Home Page Wireframe and Secondary Page Wireframe. These documents must be reviewed and approved by the CLIENT " &
                     "prior to starting the design process.", textFont);
                 paragraph.add(chunk);
                 doc.add(paragraph);

                 paragraph = new Paragraph();
                 chunk = new chunk("4. Design", listFont);
                 paragraph.add(chunk);
                 chunk = new chunk("Following the approval of your “Project Planning” documents, a designer will be assigned to your project. Design concepts will be e-mailed to the CLIENT " &
                    "for approval. You will be allowed two (2) revisions of your design. If your number of design revisions exceeds two (2), then you will be billed an additional design fee " &
                    "at our standard billing rate. Final design approval must be received by ELEMENT 74, L.L.C. in the form of an email to your Project Manager. Once the design has been approved, " &
                    "any future design changes will involve additional cost to the CLIENT at our standard billing rate.", textFont);
                 paragraph.add(chunk);
                 doc.add(paragraph);

                 paragraph = new Paragraph();
                 chunk = new chunk("5. Development and Staging", listFont);
                 paragraph.add(chunk);
                 chunk = new chunk("Following design approval, your website will be given to Element 74, L.L.C.’s development team for programming. Once the shell of the site is programmed, " &
                     "a developer will post the website to our staging servers and we will begin creating pages and laying out content (content provided by CLIENT). At this point your Project " &
                     "Manager will send you a URL that you will be able to access and monitor progress on the website.", textFont);
                 paragraph.add(chunk);
                 doc.add(paragraph);

                 paragraph = new Paragraph();
                 chunk = new chunk("6. Content Posting", listFont);
                 paragraph.add(chunk);
                 chunk = new chunk("ELEMENT 74, L.L.C. will not post any content to the CLIENT’s completed website without specific direction from the CLIENT. If content is to be migrated from " &
                     "an existing website, specific direction must be given to ELEMENT 74, L.L.C. regarding the desired placement of all copy, photos and other related content.", textFont);
                 paragraph.add(chunk);
                 doc.add(paragraph);
                 paragraph = new Paragraph("If the CLIENT is utilizing the services of ELEMENT 74, L.L.C.’s professional copywriter, directions can be given to the copywriter at any time " &
                     "during the Web Design Process. Once the CLIENT approves the copy as written by our professional copywriter, it can then be populated to the CLIENT’s new website.", textFont);
                 doc.add(paragraph);
                 paragraph = new Paragraph("To insure a timely “Go-Live” date for the CLIENT’s new website, timely communication to the Project Manager or copywriter is expected at all times. " &
                 "During the content posting phase, the website will be fully tested by the Project Manager or copywriter.", textFont);
                 doc.add(paragraph);

                 paragraph = new Paragraph();
                 chunk = new chunk("7. Training", listFont);
                 paragraph.add(chunk);
                 chunk = new chunk("Once development is complete, the CLIENT will be notified to schedule an EasyPost® training session. An ELEMENT 74, L.L.C. trainer will lead the training " &
                     "session at our facility or through GoToMeeting if distance makes a meeting unfeasible. During this time, he or she will train you regarding the use of the EasyPost® "&
                     "Content Management System. The CLIENT may bring additional staff to this training session if necessary. A training session usually lasts approximately 2 hours. "&
                     "One training session is included in your web design package. Additional training sessions will involve additional cost to the CLIENT at our standard billing rate.", textFont);
                 doc.add(paragraph);
                 paragraph = new Paragraph("I have read and understand the ELEMENT 74, L.L.C. Web Design Process.", textFont);
                 doc.add(paragraph);
                 paragraph = new Paragraph("CLIENT Initials ____________", textFont);
                 doc.add(paragraph);

                 doc.Close();
             }
            catch (Exception ex){

            }
	    }

        public int getContractID()
        {
            return ContractID;
        }
       
        public int getTemplateID()
        {
            return contractTemplate.getTemplateID();
        }

        public int getUserID()
        {
            return user.getUserID();
        }

        public String getPrimaryDomain()
        {
            return PrimaryDomain;
        }

        public String getCreatedDate()
        {
            return contractTemplate.getCreatedDate();
        }

        public String getLastModifiedDate()
        {
            return lastModifiedDate;
        }

        public String getCreatedBy()
        {
            return contractTemplate.getCreatedBy();
        }
        
    }
}
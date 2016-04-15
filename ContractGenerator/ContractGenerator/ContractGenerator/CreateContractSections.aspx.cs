using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Configuration;

namespace ContractGenerator
{
    public partial class CreateContractTemplate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void  InsertClick(Object sender, EventArgs e) {
<<<<<<< HEAD
            string sectionID = SectionID.Text;
            string parentID = ParentID.Text;
            string sectionTitle = SectionTitle.Text;
            string sectionDetail = SectionDetail.Text;
            string initial = Initial.Text;
            string signature = Signature.Text;
            string optOut = OptOut.Text;
            string entryBox = EntryBox.Text;

            Connect con= new Connect();
            con.executeInsertQuery("INSERT INTO ContractSection (SectionID, ParentID, SectionTitle, SectionDetail, Initial, Signature, OptOut, EntryBox) VALUES (" + sectionID + ", " + parentID + ", " + sectionTitle + ", " + sectionDetail + ", " + initial + ", " + signature + ", " + optOut + ", " + entryBox + ");");

            Response.Redirect("mainpanel.aspx");
=======
            String sectionID = SectionID.Text;
            String parentID = ParentID.Text;
            String sectionTitle = SectionTitle.Text;
            String sectionDetail = SectionDetail.Text;
            String initial = Initial.Text;
            String signature = Signature.Text;
            String optOut = OptOut.Text;
            String entryBox = EntryBox.Text;

            Connect con= new Connect();
            con.executeSelectQuery("INSERT INTO ContractSection (SectionID, ParentID, SectionTitle, SectionDetail, Initial, Signature, OptOut, EntryBox) VALUES (" + sectionID + ", " + parentID + ", " + sectionTitle + ", " + sectionDetail + ", " + initial + ", " + signature + ", " + optOut + ", " + entryBox + ");");

>>>>>>> origin/master
        }

    }
}
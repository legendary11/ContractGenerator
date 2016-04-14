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

        }

    }
}
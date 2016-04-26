using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContractGenerator.Management
{
    public partial class CreateSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void createSection()
        {
            Connect con = new Connect();
            string sectionTitle = sectionNameBox.Text;
            string description = detailBox.Text;
            con.executeInsertQuery("INSERT INTO ContractSection ( SectionTitle, SectionDetail, Initial, Signature, OptOut, EntryBox) VALUES ('" + sectionTitle + "', '" + description + "');");

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            createSection();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Configuration;
using ContractGenerator.Classes;
using System.Windows.Forms;


namespace ContractGenerator
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.IsAuthenticated)
            {
                string[] roles = Roles.GetRolesForUser();

                if (roles.Contains<string>("admin"))
                {
                    SectionLink.Visible = true;
                    AdminLink.Visible = true;
                    ContractsLink.Visible = true;
                    ViewProfileLink.Visible = true;
                    CreateProfileLink.Visible = true;

                }
                else if (roles.Contains<string>("staff"))
                {                    
                    ContractsLink.Visible = true;
                    ViewProfileLink.Visible = true;
                    CreateProfileLink.Visible = true;
                }
                else if (roles.Contains<string>("client"))
                {
                    ContractsLink.Visible = true;
                    ViewProfileLink.Visible = true;
                }

                else
                {
                    ViewProfileLink.Visible = true;
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
       
    }

}
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
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                string[] roles = Roles.GetRolesForUser();

                if (roles.Contains<string>("admin"))
                {


                }
                else if (roles.Contains<string>("staff"))
                {
                    if (Page.Title == ("adminpanel.aspx") || Page.Title == ("manageroles.aspx") || Page.Title == ("createtemp.aspx"));
                    {
                        Response.Redirect("mainpanel.aspx");
                    }
                }
                //    else if (roles.Contains<string>("client"))
                //    {
                //        ContractsLink.Visible = true;
                //        ViewProfileLink.Visible = true;
                //    }

            //    else
                //    {
                //        ViewProfileLink.Visible = true;
                //    }
                //}
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
    }
}
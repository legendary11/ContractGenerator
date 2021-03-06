﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Data;
using System.Data.SqlClient;
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
                Session["user"] = Page.User.Identity.Name;
                string sql = "SELECT UserId FROM Users WHERE UserName = '" + Session["user"] + "'";
                Session["UserID"] = SqlComm.SqlReturn(sql);
                string[] roles = Roles.GetRolesForUser();

                if (roles.Contains<string>("admin"))
                {


                }
                else if (roles.Contains<string>("staff"))
                {
                    if (Page.Title == ("~/ViewEditSection.aspx") || Page.Title == ("~/adminpanel.aspx") || Page.Title == ("~/manageroles.aspx") || Page.Title == ("~/createtemplate.aspx") || Page.Title == ("~/createcontractsections.aspx"))
                    {
                        //MessageBox.Show("Unauthorized Access", "Not Allowed", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        Response.Redirect("~/mainpanel.aspx");
                        
                    }
                }
                else if (roles.Contains<string>("client"))
                {
                    if (Page.Title == ("~/ViewEditSection.aspx") || Page.Title == ("~/ViewTemplate.aspx") ||Page.Title == ("~/adminpanel.aspx") || Page.Title == ("~/manageroles.aspx") || Page.Title == ("~/createtemplate.aspx") || Page.Title == ("~/createcontractsections.aspx"))
                    {
                        //MessageBox.Show("Unauthorized Access", "Not Allowed", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        Response.Redirect("~/mainpanel.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }
    }
}
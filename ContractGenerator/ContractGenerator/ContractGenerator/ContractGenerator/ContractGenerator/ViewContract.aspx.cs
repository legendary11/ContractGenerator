using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContractGenerator
{
    public partial class ViewContract : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string[] roles = Roles.GetRolesForUser();

            if (roles.Contains<string>("admin"))
            {
                SqlDataSource1.SelectCommand = "SELECT UserName, ContractTitle, DomainName, CreatedDate, ModifiedDate, CreateBy FROM Contract, Users WHERE Users.UserID = Contract.UserID AND Status = 'false'";
                GridView1.DataBind();
                SqlDataSource1.SelectCommand = "SELECT UserName, ContractTitle, DomainName, CreatedDate, ModifiedDate, CreateBy FROM Contract, Users WHERE Users.UserID = Contract.UserID AND Status = 'true'";
                GridView1.DataBind();

            }
            else if (roles.Contains<string>("staff"))
            {
                SqlDataSource1.SelectCommand = "SELECT UserName, ContractTitle, DomainName, CreatedDate, ModifiedDate, CreateBy FROM Contract, Users WHERE Users.UserID = Contract.UserID AND Status = 'false' AND CreateUserID = '" + Session["UserID"] + "'";
                GridView1.DataBind();
                SqlDataSource1.SelectCommand = "SELECT UserName, ContractTitle, DomainName, CreatedDate, ModifiedDate, CreateBy FROM Contract, Users WHERE Users.UserID = Contract.UserID AND Status = 'true' AND CreateUserID = '" + Session["UserID"] + "'";
                GridView1.DataBind();
            }
            else if (roles.Contains<string>("client"))
            {
                SqlDataSource1.SelectCommand = "SELECT UserName, ContractTitle, DomainName, CreatedDate, ModifiedDate, CreateBy FROM Contract, Users WHERE Users.UserID = Contract.UserID AND Status = 'false' AND UserID = '" + Session["UserID"] + "'";
                GridView1.DataBind();
                GridView1.Columns[0].Visible = false;
                SqlDataSource1.SelectCommand = "SELECT UserName, ContractTitle, DomainName, CreatedDate, ModifiedDate, CreateBy FROM Contract, Users WHERE Users.UserID = Contract.UserID AND Status = 'true' AND UserID = '" + Session["UserID"] + "'";
                GridView1.DataBind();
                GridView1.Columns[0].Visible = false;
            }
        }
    }
}

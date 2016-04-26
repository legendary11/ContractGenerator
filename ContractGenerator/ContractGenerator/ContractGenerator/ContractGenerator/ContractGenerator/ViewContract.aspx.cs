using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
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
                SqlDataSource1.SelectCommand = "SELECT Users.UserName, Contract.ContractTitle, Contract.DomainName, Contract.CreatedDate, Contract.ModifiedDate, Contract.CreateBy FROM Contract INNER JOIN Users ON Users.UserID = Contract.UserID WHERE Contract.Status = 'false'";
                GridView1.DataBind();               
                SqlDataSource2.SelectCommand = "SELECT Users.UserName, Contract.ContractTitle, Contract.DomainName, Contract.CreatedDate, Contract.ModifiedDate, Contract.CreateBy FROM Contract INNER JOIN Users ON Users.UserID = Contract.UserID WHERE Contract.Status = 'true'";
                GridView2.DataBind();
            }
            else if (roles.Contains<string>("staff"))
            {
                SqlDataSource1.SelectCommand = "SELECT Users.UserName, Contract.ContractTitle, Contract.DomainName, Contract.CreatedDate, Contract.ModifiedDate, Contract.CreateBy FROM Contract INNER JOIN Users ON Users.UserID = Contract.UserID WHERE Contract.Status = 'false' AND Contract.CreateUserID = '" + Session["UserID"] + "'";
                GridView1.DataBind();
                SqlDataSource2.SelectCommand = "SELECT Users.UserName, Contract.ContractTitle, Contract.DomainName, Contract.CreatedDate, Contract.ModifiedDate, Contract.CreateBy FROM Contract INNER JOIN Users ON Users.UserID = Contract.UserID WHERE Contract.Status = 'true' AND Contract.CreateUserID = '" + Session["UserID"] + "'";
                GridView2.DataBind();
            }
            else if (roles.Contains<string>("client"))
            {
                SqlDataSource1.SelectCommand = "SELECT Users.UserName, Contract.ContractTitle, Contract.DomainName, Contract.CreatedDate, Contract.ModifiedDate, Contract.CreateBy FROM Contract INNER JOIN Users ON Users.UserID = Contract.UserID WHERE Contract.Status = 'false' AND Contract.UserID = '" + Session["UserID"] + "'";
                GridView1.DataBind();
                GridView1.Columns[0].Visible = false;
                SqlDataSource2.SelectCommand = "SELECT Users.UserName, Contract.ContractTitle, Contract.DomainName, Contract.CreatedDate, Contract.ModifiedDate, Contract.CreateBy FROM Contract INNER JOIN Users ON Users.UserID = Contract.UserID WHERE Contract.Status = 'true' AND Contract.UserID = '" + Session["UserID"] + "'";
                GridView2.DataBind();               
                GridView1.Columns[0].Visible = false;
            }
        }
    }
}

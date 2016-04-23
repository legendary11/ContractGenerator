using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace ContractGenerator.Management
{
    public partial class AdminPanel1 : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {
            /*
            string[] roles = Roles.GetRolesForUser();
            for (int i = 0; i < roles.Length; i++)
            {   
                if (roles[i] == ("admin"))
                {
                    if (!Page.IsPostBack)
                        DisplayRolesInGrid();
                }
            }
             */
            DisplayRolesInGrid();
       /*
                MessageBox.Show("Unauthorized Access", "Unauthorized Access", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                Response.Redirect("~/mainpanel.aspx");
         */  
        }

        protected void CreateRoleButton_Click(object sender, EventArgs e)
        {
            string newRoleName = RoleName.Text.Trim();

            if (!Roles.RoleExists(newRoleName))
            // Create the role
            Roles.CreateRole(newRoleName);
            RoleName.Text = string.Empty;
            DisplayRolesInGrid();
        }

        private void DisplayRolesInGrid()
        {
            RoleList.DataSource = Roles.GetAllRoles();
            RoleList.DataBind();
        }

        protected void RoleList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the RoleNameLabel
            System.Web.UI.WebControls.Label RoleNameLabel = RoleList.Rows[e.RowIndex].FindControl("RoleNameLabel") as System.Web.UI.WebControls.Label;

            // Delete the role
            Roles.DeleteRole(RoleNameLabel.Text, false);

            // Rebind the data to the RoleList grid
            DisplayRolesInGrid();
        }
    }
}
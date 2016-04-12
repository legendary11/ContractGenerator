using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ContractGenerator
{
    public partial class SignUp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Reference the SpecifyRolesStep WizardStep 
                WizardStep SpecifyRolesStep = RegisterUserWithRoles.FindControl("SpecifyRolesStep") as WizardStep;

                // Reference the RoleList CheckBoxList 
                CheckBoxList RoleList = SpecifyRolesStep.FindControl("RoleList") as CheckBoxList;

                // Bind the set of roles to RoleList 
                RoleList.DataSource = Roles.GetAllRoles();
                RoleList.DataBind();

                
            }
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            MembershipCreateStatus p = MembershipCreateStatus.Success;
            Membership.CreateUser(RegisterUserWithRoles.UserName,
               RegisterUserWithRoles.Password, RegisterUserWithRoles.Email,
            RegisterUserWithRoles.Question, RegisterUserWithRoles.Answer, true, out p);
        }

        protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void RegisterUserWithRoles_ActiveStepChanged(object sender, EventArgs e)
        {
            // Have we JUST reached the Complete step? 
            if (RegisterUserWithRoles.ActiveStep.Title == "Complete")
            {
                // Reference the SpecifyRolesStep WizardStep 
                WizardStep SpecifyRolesStep = RegisterUserWithRoles.FindControl("SpecifyRolesStep") as WizardStep;

                // Reference the RoleList CheckBoxList 
                CheckBoxList RoleList = SpecifyRolesStep.FindControl("RoleList") as CheckBoxList;

                // Add the checked roles to the just-added user 
                foreach (ListItem li in RoleList.Items)
                {
                    if (li.Selected)
                        Roles.AddUserToRole(RegisterUserWithRoles.UserName, li.Text);
                }
            }
        }
    }
}
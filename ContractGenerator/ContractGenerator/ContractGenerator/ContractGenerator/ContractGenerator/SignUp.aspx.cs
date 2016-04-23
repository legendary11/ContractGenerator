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
            RegisterUserWithRoles.ActiveStepIndex = 0;

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
            string sql = "INSERT INTO UserInfo(UserID) SELECT Users.UserId FROM Users  EXCEPT SELECT UserInfo.UserID FROM UserInfo RIGHT JOIN Users ON userInfo.UserID = Users.UserId";
            SqlComm.SqlExecute(sql);
        }

        protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void RegisterUserWithRoles_ActiveStepChanged(object sender, EventArgs e) 
        { 

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
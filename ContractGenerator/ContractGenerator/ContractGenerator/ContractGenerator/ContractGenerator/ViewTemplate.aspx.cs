using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContractGenerator
{
   public partial class ViewEditTemplate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDownList();
                DisplayTemplatesInGrid();
            }
        }

        protected void TemplateList_SelectedIndexChanged(object sender, EventArgs e)
        {           
           DisplayTemplatesInGrid();
        }

        private void BindDropDownList()
        {
            TemplateList.DataSource = SqlDataSource2;
            TemplateList.DataBind();
        }

        private void DisplayTemplatesInGrid()
        {
            Session["TemplateID"] = TemplateList.SelectedValue;

            TemplateGridView.DataSource = source1;
            TemplateGridView.DataBind();
            
        }
    }
}

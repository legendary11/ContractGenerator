﻿using System;
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

        }

        protected void TemplateList_SelectedIndexChanged(object sender, EventArgs e)
        {

            //Session["TemplateID"] = DropDownList1.SelectedValue;
        }

        private void DisplayTemplatesInGrid()
        {
            string selectedTemplate = TemplateList.SelectedValue;

            TemplateGridView.DataSource = selectedTemplate;
            TemplateGridView.DataBind();
        }
    }
}
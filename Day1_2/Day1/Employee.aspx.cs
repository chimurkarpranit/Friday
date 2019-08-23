using System;

namespace Day1
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowEmployee.Visible = true;
            GridViewEmployee.Visible = false;
            if (IsPostBack)
            {
                ShowEmployee.Visible = false;
                GridViewEmployee.Visible = true;
            }
        }
    }
}
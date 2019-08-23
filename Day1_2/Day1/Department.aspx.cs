using System;

namespace Day1
{
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowDepartment.Visible = true;
            GridViewEmployee.Visible = false;
            if (IsPostBack)
            {
                ShowDepartment.Visible = false;
                GridViewEmployee.Visible = true;
            }
        }
    }
}
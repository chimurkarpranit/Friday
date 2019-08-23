using System;

namespace Day1
{
    public partial class WebUserControl : System.Web.UI.UserControl
    {
        public int CounterClicks
        {
            get { return Convert.ToInt32(ViewState["Count"]); }
            set { ViewState["Count"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int a = 0;
        protected void UpButton_Click(object sender, EventArgs e)
        {
            CounterClicks += 1;
        }

        protected void DownButton_Click(object sender, EventArgs e)
        {
            CounterClicks -= 1;
        }
    }
}
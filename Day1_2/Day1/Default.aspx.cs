using System;
using System.Web.UI;

namespace Day1
{
    public partial class _Default : Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            textCounter.Text = UserCounter.CounterClicks.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                textCounter.Text = UserCounter.CounterClicks.ToString();
            }
        }
    }
}
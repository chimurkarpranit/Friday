using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Text;

namespace Day3_4
{
    public partial class Exercise_7 : System.Web.UI.Page
    {
        StringBuilder strBuild;
        AllMessage m = new AllMessage();
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        public void BindGrid()
        {
            try
            {
                strBuild = new StringBuilder("select FirstName from Employees");
                string cstring = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
                MySqlConnection con = new MySqlConnection(cstring);
                MySqlCommand cmd = new MySqlCommand(m.strEmpDL, con);
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DLEmployee.DataSource = dt;
                DLEmployee.DataTextField = "FirstName";
                DLEmployee.DataValueField = "FirstName";
                DLEmployee.DataBind();
                Cache.Insert("EmployeeName", c.ConnectionGenerate(strBuild.ToString()), null, DateTime.Now.AddSeconds(40), System.Web.Caching.Cache.NoSlidingExpiration);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void ButtonDetails_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("CacheEx7.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
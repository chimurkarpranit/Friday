using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Day3_4
{
    public partial class Exercise_6 : System.Web.UI.Page
    {
        AllMessage m = new AllMessage();
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
                string cstring = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
                MySqlConnection con = new MySqlConnection(cstring);
                MySqlCommand cmd = new MySqlCommand(m.strEmp, con);
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DLforEmployee.DataSource = dt;
                DLforEmployee.DataTextField = "Name";
                DLforEmployee.DataValueField = "Name";
                DLforEmployee.DataBind();
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
                if (DLforEmployee.SelectedValue == "0")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert('Select EmployeeID from the dropdown list');", true);
                }
                else
                {
                    string cstring = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
                    MySqlConnection con = new MySqlConnection(cstring);
                    MySqlCommand cmd = new MySqlCommand(m.strDL + DLforEmployee.SelectedValue + "'", con);
                    MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    sda.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
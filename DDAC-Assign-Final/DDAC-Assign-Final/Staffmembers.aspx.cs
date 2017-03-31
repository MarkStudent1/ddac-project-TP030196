using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DDAC_Assign_Final
{
    public partial class Staffmembers : System.Web.UI.Page
    {
        private string conn = ConfigurationManager.ConnectionStrings["cloudassign"].ConnectionString;
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            save();
        }
        public void save()
        {
            string a = TextBox7.Text;
            string b = TextBox8.Text;
            string c = TextBox9.Text;
            string d = TextBox10.Text;
            string e = TextBox11.Text;
            string f = TextBox12.Text;
            string g = TextBox13.Text;


            try
            {
                using (con = new SqlConnection(conn))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    string query = "insert into AgentProfile (username, pass, name, address, city, area, contact) values ('" + a + "','" + b + "','" + c + "', '" + d + "', '" + e + "', '" + f + "', '" + g + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    // con.Open();
                    int num = cmd.ExecuteNonQuery();
                    if (num > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Data Saved Successfull')", true);
                        TextBox7.Text = string.Empty;
                        TextBox8.Text = string.Empty;
                        TextBox9.Text = string.Empty;
                        TextBox10.Text = string.Empty;
                        TextBox11.Text = string.Empty;
                        TextBox12.Text = string.Empty;
                        TextBox13.Text = string.Empty;
                    

                    }

                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Data not Saved')", true);
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Error!')", true);
            }
        }
    }
}
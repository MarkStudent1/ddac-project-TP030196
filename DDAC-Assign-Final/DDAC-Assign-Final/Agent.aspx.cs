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
    public partial class Agent : System.Web.UI.Page
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
            string a = TextBox8.Text;
            string b = TextBox9.Text;
            string c = TextBox10.Text;
            string d = TextBox11.Text;
            string e = TextBox12.Text;
            string f = TextBox13.Text;
            string g = TextBox14.Text;
      
            try
            {
                using (con = new SqlConnection(conn))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    string query = "insert into CustomerProfile (username, pass, name, address, city, area, contact) values ('" + a + "','" + b + "','" + c + "', '" + d + "', '" + e + "', '" + f + "','" + g + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    // con.Open();
                    int num = cmd.ExecuteNonQuery();
                    if (num > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Data Saved Successfull')", true);
                        TextBox8.Text = string.Empty;
                        TextBox9.Text = string.Empty;
                        TextBox10.Text = string.Empty;
                        TextBox11.Text = string.Empty;
                        TextBox12.Text = string.Empty;
                        TextBox13.Text = string.Empty;
                        TextBox14.Text = string.Empty;
                        

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

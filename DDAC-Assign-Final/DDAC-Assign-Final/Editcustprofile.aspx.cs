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
    public partial class Editcustprofile : System.Web.UI.Page
    {
        private string conn = ConfigurationManager.ConnectionStrings["cloudassign"].ConnectionString;
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (con = new SqlConnection(conn))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                   
                    string a = TextBox1.Text;
                    string b = TextBox2.Text;
                    string c = TextBox3.Text;
                    string d = TextBox4.Text;
                    string ee = TextBox5.Text;
                    string f = TextBox6.Text;
                    string g = TextBox7.Text;

                    string query = "Update CustomerProfile set username='" + a + "',pass='" + b + "',name='" + c + "',address='" + d + "', city='" + ee + "',area='" + f + "', contact='"+g+"' Where username='" + a + "'";
                    SqlCommand comm = new SqlCommand(query, con);
                    //con.Open();
                    int num = comm.ExecuteNonQuery();
                    if (num > 0)
                    {
                        TextBox1.Text = string.Empty;
                        TextBox2.Text = string.Empty;
                        TextBox3.Text = string.Empty;
                        TextBox4.Text = string.Empty;
                        TextBox5.Text = string.Empty;
                        TextBox6.Text = string.Empty;
                        TextBox7.Text = string.Empty;

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Data update Successfull')", true);
                      

                    }

                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Data not update')", true);
                    }

                    con.Close();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Error! Site error')", true);
            }
        }
    }
}
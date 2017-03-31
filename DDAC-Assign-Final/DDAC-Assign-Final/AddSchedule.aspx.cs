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
    public partial class AddSchedule : System.Web.UI.Page
    {
        private string conn = ConfigurationManager.ConnectionStrings["cloudassign"].ConnectionString;
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string a = Textbox1.Text;
            string b = Textbox2.Text;
            string c = Textbox3.Text;
            string d = Textbox4.Text;
            string ee = Textbox4.Text;



            try
            {
                using (con = new SqlConnection(conn))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    string query = "insert into Schedule (shipid, deliverytime,shippingcost, departurepoint, arrivalpoint) values ('" + a + "','" + b + "','" + c + "', '" + d + "', '" + ee + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    // con.Open();
                    int num = cmd.ExecuteNonQuery();
                    if (num > 0)
                    {
                        Textbox1.Text = string.Empty;
                        Textbox2.Text = string.Empty;
                        Textbox3.Text = string.Empty;
                        Textbox4.Text = string.Empty;


                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('New Schedule successfully submitted!')", true);

                    }

                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Schedule request denied!')", true);
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Site Error soon be fiexd!')", true);
            }
    }
    }
    }

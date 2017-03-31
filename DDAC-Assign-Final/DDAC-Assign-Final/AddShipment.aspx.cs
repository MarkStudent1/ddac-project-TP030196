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
    public partial class AddShipment : System.Web.UI.Page
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
        public void save() {

            string a = TextBox1.Text;
            string b = TextBox2.Text;
            string c = TextBox3.Text;
            string d = TextBox4.Text;
            string ee = TextBox5.Text;
            string f = TextBox6.Text;
            string g = TextBox7.Text;
            string h = TextBox8.Text;
            string i = TextBox9.Text;


            try
            {
                using (con = new SqlConnection(conn))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    string query = "insert into Shipment (packageID,email,shipmentweight,contact,packagetype,shipnumber,price,currentplace,destination) values ('" + a + "','" + b + "','" + c + "', '" + d + "', '" + ee + "', '" + f + "', '" + g + "', '" + h + "', '" + i + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    // con.Open();
                    int num = cmd.ExecuteNonQuery();
                    if (num > 0)
                    {
                    

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('New Shipment request successfully submitted!')", true);
                        TextBox1.Text = string.Empty;
                        TextBox2.Text = string.Empty;
                        TextBox3.Text = string.Empty;
                        TextBox4.Text = string.Empty;
                        TextBox5.Text = string.Empty;
                        TextBox6.Text = string.Empty;
                        TextBox7.Text = string.Empty;
                        TextBox8.Text = string.Empty;
                        TextBox9.Text = string.Empty;
                    }

                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Shipment request denied!')", true);
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

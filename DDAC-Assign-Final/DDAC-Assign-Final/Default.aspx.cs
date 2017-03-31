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
    public partial class Default : System.Web.UI.Page
    {
       // SqlConnection connection = new SqlConnection("Data source=DESKTOP-0C5AR; database=DDACassignment;integrated security=true");
        private string conn = ConfigurationManager.ConnectionStrings["cloudassign"].ConnectionString;
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlCommand cmds = null;
        SqlCommand cmdsa = null;
        SqlDataReader dr = null;
        // SqlConnection connection = new SqlConnection("Data source=(local); database=DDACassignment; integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            login();
        }
            public void login()
        {
            string lg = id.Text;
            string ps = pass.Text;

            try
            {
                using (con = new SqlConnection(conn))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    string query = "select login,pass from Loginstaff where login=@lg and pass=@ps";
                    string query2 = "select username,pass from CustomerProfile where username=@lg and pass=@ps";
                    string query3 = "select username,pass from AgentProfile where username=@lg and pass=@ps";
                    cmd = new SqlCommand(query, con);
                    cmds = new SqlCommand(query2, con);
                    cmdsa = new SqlCommand(query3, con);
                    cmd.Parameters.Add("lg", @lg);
                    cmd.Parameters.Add("ps", @ps);
                    cmds.Parameters.Add("lg", @lg);
                    cmds.Parameters.Add("ps", @ps);
                    cmdsa.Parameters.Add("lg", @lg);
                    cmdsa.Parameters.Add("ps", @ps);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    SqlDataAdapter dat = new SqlDataAdapter(cmds);
                    SqlDataAdapter data = new SqlDataAdapter(cmdsa);
                    DataTable dt = new DataTable();
                    DataTable dta = new DataTable();
                    DataTable dtaa = new DataTable();
                    da.Fill(dt);
                    dat.Fill(dta);
                    data.Fill(dtaa);
                    if (dt.Rows.Count > 0)
                    {
                       
                        Response.Redirect("Staffmembers.aspx");
                    }
                    else if (dta.Rows.Count > 0)
                    {
                     
                        Response.Redirect("Customer.aspx");
                    }
                    else if (dtaa.Rows.Count > 0)
                    {
                      
                        Response.Redirect("Agent.aspx");
                    }
                    else
                    {
                        
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                    }

                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Error!')</script>");
            }

        }
    }
    }
    
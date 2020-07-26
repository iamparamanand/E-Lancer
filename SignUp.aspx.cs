using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;



public partial class SignUp : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void registration_Click(object sender, EventArgs e)
    {
        Registration();
    }

    private void Registration()
    {
        if(tbUsername.Text!="" && tbPass.Text!="" && tbCPass.Text!="" && tbName.Text!="" && tbEmail.Text!="")
        {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            if (tbPass.Text == tbCPass.Text)
            {
                if (RadioButton_work.Checked)
                {
                    SqlCommand cmd = new SqlCommand("insert into Work values('" + tbUsername.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('" + "Successfully Registration" + "')</script>");
                    con.Close();
                }
                else if (RadioButton_hire.Checked)
                {
                    SqlCommand cmd = new SqlCommand("insert into Hire values('" + tbUsername.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('" + "Successfully Registration" + "')</script>");
                    con.Close();
                }
                //Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('" + "Password do not match !" + "')</script>");
            }
        }
        }
            else
            {
                Response.Write("<script>alert('" + "All Field Must be filled" + "')</script>");
            }
        }
    }





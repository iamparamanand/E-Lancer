using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Log_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                Username.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }

    }
    protected void LogIn_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
            if (RadioButton_work.Checked)
            {
                SqlCommand cmd = new SqlCommand("select * from Work where Username='" + Username.Text + "'and Password='" + Password.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = Username.Text;
                        Response.Cookies["PWD"].Value = Password.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);

                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Response.Redirect("Profile_Work_Update.aspx");
                }
                else
                {
                    Response.Write("<script>alert('" + "Invalid Username or Password" + "')</script>");
                }
            }
            //con.Close();
            else if (RadioButton_hire.Checked)
            {
                SqlCommand cmdd = new SqlCommand("select * from Hire where Username='" + Username.Text + "'and Password='" + Password.Text + "'", con);
                con.Open();
                SqlDataAdapter sdaa = new SqlDataAdapter(cmdd);
                DataTable dtt = new DataTable();
                sdaa.Fill(dtt);

                if (dtt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = Username.Text;
                        Response.Cookies["PWD"].Value = Password.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);

                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Response.Redirect("Profile_Hire_Update.aspx");
                }
                else
                {
                    Response.Write("<script>alert('" + "Invalid Username or Password" + "')</script>");
                }
            }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

    }
    protected void RadioButton_hire_CheckedChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ToString());
        con.Open();
        string query = "select * from Hire where Username='" + Username.Text + "' and Password='" + Password.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            for (int i = 4; i < 6; i++)
            {
                if (dr[i].ToString() == "")
                {
                    Session["Lancerid"] = Username.Text;
                    Session["Lancerpassword"] = Password.Text;
                    Response.Redirect("Profile_Hire_Update.aspx");
                    break;
                }
            }
            Session["hid"] = dr["Uid"].ToString();
            Session["Lancerid"] = Username.Text;
            Session["Lancerpassword"] = Password.Text;

            //Response.Redirect("~/Logout.aspx");
            // Response.Redirect("~/FLPro.aspx");
            Response.Redirect("~/Profile_Hire.aspx");
            //Response.Redirect("~/Search_job1.aspx");

        }
        else
        {
            Response.Write("Login Failed");
        }

        //Response.Redirect("~/Logout.aspx");
    }
    protected void RadioButton_work_CheckedChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ToString());
        con.Open();
        string query = "select * from Work where Username='" + Username.Text + "' and Password='" + Password.Text + "'";
        //string query = "select * from Hire where Username='" + Txtuser.Text + "' and Password='" + Txtpass.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            for (int i = 4; i < 17; i++)
            {
                if (dr[i].ToString() == "")
                {
                    Response.Redirect("Profile_Work_Update.aspx");
                    break;
                }
            }
            Session["Userid"] = Username.Text;
           // Session["Uname"]
            Session["Password"] = Password.Text;

           
            Response.Redirect("~/Profile_Work.aspx");
            //Response.Redirect("~/Search_job1.aspx");

        }


        else
        {
            Response.Write("Login Failed");
        }

    }
}
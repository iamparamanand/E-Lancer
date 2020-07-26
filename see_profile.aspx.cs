using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class see_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ConnectionString);
    string qr;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string qr = "select Upload_Pic,Name,Email,Skills,Pro_Summary,City,Country,Rate,Company,Start_Year,End_Year,Degree,Edu_Start,Edu_End from Work where Uid='" + Session["tempuid"] + "'";
        SqlCommand cmd = new SqlCommand(qr, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {


            Image1.ImageUrl = "~/images/" + dr[0].ToString();

            TextBox12.Text = dr[1].ToString();
            TextBox13.Text = dr[2].ToString();
            TextBox1.Text = dr[3].ToString();
            TextBox2.Text = dr[4].ToString();
            TextBox3.Text = dr[5].ToString();
            TextBox4.Text = dr[6].ToString();
            TextBox5.Text = dr[7].ToString();
            TextBox6.Text = dr[8].ToString();
            TextBox7.Text = dr[9].ToString();
            TextBox11.Text = dr[10].ToString();
            TextBox8.Text = dr[11].ToString();
            TextBox9.Text = dr[12].ToString();
            TextBox10.Text = dr[13].ToString();
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Profile_Hire.aspx");
    }
}
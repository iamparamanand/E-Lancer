using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Profile_Work : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ToString());
        con.Open();
        string qr = "select * from Work where Username='" + Session["Userid"] + "' and Password='" + Session["Password"] + "'";
        SqlCommand cmd = new SqlCommand(qr, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {


            Image1.ImageUrl = "~/images/" + dr[4].ToString();

            Label1.Text = dr[5].ToString();
            Label2.Text = dr[6].ToString();
            Label3.Text = dr[7].ToString();
            Label4.Text = dr[8].ToString();
            Label5.Text = dr[9].ToString();
            Label6.Text = dr[10].ToString();
            Label7.Text = dr[11].ToString();
            Label8.Text = dr[12].ToString();
            Label9.Text = dr[13].ToString();
            Label10.Text = dr[14].ToString();
            Label11.Text = dr[15].ToString();
            Label12.Text = dr[16].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Search_job1.aspx");
    }
}
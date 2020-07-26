using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Profile_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ToString());
        con.Open();
        string qr = "select Upload_Pic from Work where Username='" + Session["Userid"] + "' and Password='" + Session["Password"] + "'";
        SqlCommand cmd = new SqlCommand(qr, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Image1.ImageUrl = "~/images/" + dr[0].ToString();
        }
        else
        {
            Response.Write("<script>alert('image not found')</script>");
        }

        con.Close();

        //tbEmail.Text = Session["Username"].ToString();
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ToString());
        con.Open();
        string qr = "update Work set Upload_Pic='" + FileUpload1.PostedFile.FileName + "',Name='" + tbName.Text + "',Skills='" + Workreq_list.Text + "',Pro_Summary='" + TextBox1.Text + "',City='" + tbcity.Text + "',Country='" + tbCountry.Text + "',Rate='" + TextBox2.Text + "',Company='" + TextBox3.Text + "',Start_Year='" + DropDownList1.Text + "',End_Year='" + DropDownList2.Text + "',Degree='" + TextBox4.Text + "',Edu_Start='" + TextBox5.Text + "',Edu_End='" + TextBox6.Text + "' where Username='" + Session["Userid"] + "' and Password='" + Session["Password"] + "'";
        SqlCommand cmd = new SqlCommand(qr, con);
        cmd.ExecuteNonQuery();
       // Response.Redirect("~/Default2.aspx");
        con.Close();
        FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.PostedFile.FileName);
        Image1.ImageUrl = "~/images/" + FileUpload1.PostedFile.FileName;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
            Image1.ImageUrl = "~/images/" + filename;
            Label1.Text = "upload successful";

        }
        else
        {
            Label1.Text = "upload failed";
        }
    }
}
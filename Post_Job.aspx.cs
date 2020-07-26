using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Post_Job : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        protected void Set_Fixed_Price_CheckedChanged(object sender, EventArgs e)
    {
        if (Set_Fixed_Price.Checked == true)
        {
            Drop_Fixed_Price.Visible = true;
            Drop_Hourly_Price.Visible = false;
            Drop_Fixed_Price.Enabled = true;
            Drop_Hourly_Price.Enabled = false;
        }
        else if (Set_Hourly_Price.Checked == true)
        {
            Drop_Hourly_Price.Visible = true;
            Drop_Fixed_Price.Visible = false;
            Drop_Fixed_Price.Enabled = false;
            Drop_Hourly_Price.Enabled = true;
        }
    }
    protected void Set_Hourly_Price_CheckedChanged(object sender, EventArgs e)
    {
        if (Set_Hourly_Price.Checked == true)
        {
            Drop_Fixed_Price.Visible = false;
            Drop_Hourly_Price.Visible = true;
            Drop_Fixed_Price.Enabled = false;
            Drop_Hourly_Price.Enabled = true;
        }
        else if (Set_Fixed_Price.Checked == true)
        {
            Drop_Fixed_Price.Visible = true;
            Drop_Hourly_Price.Visible = false;
            Drop_Fixed_Price.Enabled = false;
            Drop_Hourly_Price.Enabled = true;
        }
    }
    protected void Post_Click(object sender, EventArgs e)
    { 
        string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ConnectionString;
        string fp = "-1", hp = "-1";
        if (Set_Fixed_Price.Checked == true)
            fp = Drop_Fixed_Price.SelectedItem.Text;
        if (Set_Hourly_Price.Checked == true)
            hp = Drop_Hourly_Price.SelectedItem.Text;
        SqlConnection con= new SqlConnection(CS);
        int cnfrm=0;
        con.Open();
        SqlCommand cmd;
        Random rm = new Random();
        string jpid = "job" + rm.Next(100, 999) + rm.Next(100, 999);
        //try
        //{
        string query = "insert into pro_detail values('" + Session["hid"].ToString() + "','" + jpid + "','" + Workreq_list.SelectedItem.Text + "','" + tbAbout.Text + "','" + fp + "','" + hp + "','" + DropDownList_skill.SelectedItem.Text + "','" + tbDescribe.Text + "',1)";
            cmd = new SqlCommand(query, con);
            cnfrm = cmd.ExecuteNonQuery();
        //}
        //catch (SqlException e1)
        //{

        //    con.Close();
        //}
            con.Close();
        if (cnfrm == 1)
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Job Posted Succesfully.'); window.location='" + Request.ApplicationPath + "Profile_Hire.aspx';", true);
        else
            Response.Write("<script>alert('Please try again')</script>");
    }
}
      
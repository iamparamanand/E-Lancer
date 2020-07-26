using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ConnectionString);
    string qr;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {       
        con.Open();
        qr = "select * from Hire where Username='" + Session["Lancerid"] + "' and Password='" + Session["Lancerpassword"] + "'";
        cmd = new SqlCommand(qr, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label7.Text = dr[4].ToString();
        }
        con.Close();
        appliedfreelancers();
    }

    public void appliedfreelancers()
    {
        qr = "select w.Uid'uid',w.Name'name',w.Email'email',pd.Type_of_Work'tow',pd.jpid'jpid' from appliedlancers a,Work w,pro_detail pd where a.JID=pd.jpid and a.Uid=w.Name and pd.status=1";
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(qr,con);
        da.Fill(ds,"apply");
        da.SelectCommand.ExecuteReader();
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Post_Job.aspx");
    }

    
    protected void btnseeprofile_Click(object sender, EventArgs e)
    {
        int Index = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
        Label label18 = (Label)GridView1.Rows[Index].FindControl("lbluid");
        Session["tempuid"] = label18.Text;
        Response.Redirect("~/see_profile.aspx");
        
    }
    protected void btnapprove_Click(object sender, EventArgs e)
    {
        int Index = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
        Label label18 = (Label)GridView1.Rows[Index].FindControl("lbljpid");
        Label label19 = (Label)GridView1.Rows[Index].FindControl("lblname");

        qr = "update pro_detail set status=2 where jpid='" + label18.Text + "'";
        con.Open();
        cmd = new SqlCommand(qr,con);
        cmd.ExecuteNonQuery();
        con.Close();

        qr = "update appliedlancers set status=2 where JID='" + label18.Text + "' and Uid='"+label19.Text+"'";
        con.Open();
        cmd = new SqlCommand(qr, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Job Approved')</script>");
        appliedfreelancers();
    }
}
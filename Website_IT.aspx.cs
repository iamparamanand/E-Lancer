using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Website_IT : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectString1"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    string qr;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('"+Session["hypertext"]+"')</script>");
        showjobs();

    }

    public void showjobs()
    {
        
        con.Open();
        qr = "select h.Name'name',h.Email'email',jpid,Type_of_Work,About_Project,fixed_price,hourly_price,Skills_Require,Describe from pro_detail pd,Hire h where pd.hid=h.Uid and Type_of_Work='Website IT & Software' and Status=1";
        SqlDataAdapter dr = new SqlDataAdapter(qr, con);
        DataSet ds = new DataSet();
        dr.Fill(ds, "Hire");
        dr.SelectCommand.ExecuteReader();
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void btnapply_Click(object sender, EventArgs e)
    {
        int Index = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
        Label label17 = (Label)GridView1.Rows[Index].FindControl("lblskill");
        Label label18 = (Label)GridView1.Rows[Index].FindControl("lbluid");
        //string qr = "update Hire set status=1 where Skills_Req='" + label17.Text + "'";
        //con.Open();
        //SqlCommand cmd = new SqlCommand(qr, con);
        //cmd.ExecuteNonQuery();
        //con.Close();
        qr = "insert into appliedlancers values('"+label18.Text+"','"+Session["Userid"]+"',1)";
        con.Open();
        cmd = new SqlCommand(qr,con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Applied For Job Successfully')</script>");
        showjobs();
        //qr = "select * from Hire where status=0";
        //con.Open();
        //da = new SqlDataAdapter(qr, con);
        //da.Fill(ds, "Company_Details");
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
        //con.Close();
        //con.Open();
        //qr = "Update Hire set freelancer='" + Session["Userid"] + "'where status=1";
        //SqlCommand cmd1 = new SqlCommand(qr, con);
        //cmd1.ExecuteNonQuery();
        //con.Close();
    }
}
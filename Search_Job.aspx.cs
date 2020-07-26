using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search_Job : System.Web.UI.Page
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
}
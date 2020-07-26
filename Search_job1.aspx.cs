using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search_job1 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["hypertext"] = HyperLink1.Text;
        Session["hypertext1"] = HyperLink2.Text;
        Session["hypertext2"] = HyperLink3.Text;
        Session["hypertext3"] = HyperLink4.Text;
        
    }
}
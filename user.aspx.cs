using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void onClick_back(object sender, EventArgs e)
    {
        Server.Transfer("main.aspx");
    }

    protected void onClick_clear(object sender, EventArgs e)
    {
        textArea.Value = "";
    }

    protected void onClick_post(object sender, EventArgs e)
    {

    }
}
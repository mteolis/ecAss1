using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void onClick_cancel(object sender, EventArgs e)
    {
        Server.Transfer("main.aspx");
    }

    protected void onClick_save(object sender, EventArgs e)
    {

    }
}
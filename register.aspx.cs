using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void onClick_cancel(object sender, EventArgs e)
    {
        Server.Transfer("index.aspx");
    }

    protected void onClick_next(object sender, EventArgs e)
    {
        Session["userName"] = inputUsername.Text;
        Session["userPassword"] = inputUsername.Text;
        Session["firstName"] = inputUsername.Text;
        Session["lastName"] = inputUsername.Text;

        Session["gender"] = inputUsername.Text;

        Session["dob"] = inputUsername.Text;
        Session["phonenumber"] = inputUsername.Text;
        Session["streetAddress"] = inputUsername.Text;
        Session["city"] = inputUsername.Text;
        Session["p/s"] = inputUsername.Text;
        Session["country"] = inputUsername.Text;
        Session["zip"] = inputUsername.Text;
        

        Server.Transfer("terms.aspx");
    }
}
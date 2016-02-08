using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Terms : System.Web.UI.Page
{
    private string userName, userPassword, firstName, lastName, dob, phone, streetAddress, city, province, country, zip;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        //Label1.Text = Session["userName"].ToString();

        userName = Session["userName"].ToString();
        userPassword = Session["userPassword"].ToString();
        firstName = Session["firstName"].ToString();
        lastName = Session["lastName"].ToString();

        //Session["gender"] 

        dob = Session["dob"].ToString();
        phone = Session["phoneNumber"].ToString();
        streetAddress = Session["streetAddress"].ToString();
        city =  Session["city"].ToString();
        province = Session["p/s"].ToString();
        country = Session["country"].ToString();
        zip = Session["zip"].ToString();
    }

    protected void onClick_decline(object sender, EventArgs e)
    {
        Server.Transfer("register.aspx");
    }

    protected void onClick_accept(object sender, EventArgs e)
    {
        Server.Transfer("index.aspx");
    }
}
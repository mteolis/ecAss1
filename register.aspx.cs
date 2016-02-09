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
        Session["userPassword"] = inputPassword.Text;
        Session["firstName"] = inputFirstName.Text;
        Session["lastName"] = inputLastName.Text;
        Session["gender"] = inputGender.SelectedValue;
        Session["dob"] = inputDOB.Text;
        Session["phoneNumber"] = inputPhone.Text;
        Session["streetAddress"] = inputStreetAddress.Text;
        Session["city"] = inputCity.Text;
        Session["state"] = inputState.Text;
        Session["country"] = inputCountry.Text;
        Session["zip"] = inputZip.Text;
        
        Server.Transfer("terms.aspx");
    }
}
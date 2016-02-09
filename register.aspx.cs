using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    private static int count = 0;

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

    protected void onClick_fill(object sender, EventArgs e)
    {
        inputUsername.Text = "username" + count;
        inputPassword.Text = "password" + count;
        inputFirstName.Text = "firstName" + count;
        inputLastName.Text = "lastName" + count;
        inputGender.SelectedIndex = 1;
        inputDOB.Text = "2000-01-01";
        inputPhone.Text = "5143216547";
        inputStreetAddress.Text = "streetAddress" + count;
        inputCity.Text = "city" + count;
        inputState.Text = "state" + count;
        inputCountry.Text = "Canada";
        inputZip.Text = "32154";

        count++;
    }
}
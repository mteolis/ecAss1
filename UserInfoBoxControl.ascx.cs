using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserInfoBoxControl : System.Web.UI.UserControl
{
    private string userName;
    private string userPassword;
    private string firstName;
    private string lastName;
    private string gender;
    private string dob;
    private string streetAddress;
    private string city;
    private string province;
    private string country;
    private string zip;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string UserName
    {
        get { return userName; }
        set { userName = value;  }
    }
}
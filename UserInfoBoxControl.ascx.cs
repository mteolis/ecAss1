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

    public string UserPassword
    {
        get { return userPassword; }
        set { userPassword = value; }
    }

    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }

    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }

    public string Gender
    {
        get { return gender; }
        set { gender = value; }
    }

    public string DOB
    {
        get { return dob; }
        set { dob = value; }
    }

    public string StreetAddress
    {
        get { return streetAddress; }
        set { streetAddress = value; }
    }

    public string City
    {
        get { return city; }
        set { city = value; }
    }

    public string Province
    {
        get { return province; }
        set { province = value; }
    }

    public string Country
    {
        get { return country; }
        set { country = value; }
    }

    public string Zip
    {
        get { return zip; }
        set { zip = value; }
    }


}
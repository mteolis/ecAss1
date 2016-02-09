using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Terms : System.Web.UI.Page
{

    private OleDbConnection conn;
    private OleDbCommand cmd = null;
    private String path;
    private OleDbConnection connection = new OleDbConnection();

    //private string temp = "temp";

    private string userName, userPassword, firstName, lastName, gender, dob, phone, streetAddress, city, province, country, zip;


    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        connection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;";
        path = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;";

        userName = Session["userName"].ToString();
        userPassword = Session["userPassword"].ToString();
        firstName = Session["firstName"].ToString();
        lastName = Session["lastName"].ToString();
        gender = Session["gender"].ToString();
        dob = Session["dob"].ToString();
        phone = Session["phoneNumber"].ToString();
        streetAddress = Session["streetAddress"].ToString();
        city =  Session["city"].ToString();
        province = Session["state"].ToString();
        country = Session["country"].ToString();
        zip = Session["zip"].ToString();

    }

    protected void onClick_decline(object sender, EventArgs e)
    {
        Server.Transfer("register.aspx");
    }

    protected void onClick_accept(object sender, EventArgs e)
    {
<<<<<<< HEAD
        
        connection = new OleDbConnection(path);
        connection.Open();
        cmd = new OleDbCommand("INSERT INTO tblProfiles (user_name, user_password, first_name, last_name, gender, dob, street_address, province, country, zip) "
            + "VALUES ('" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "');", connection);
        cmd.ExecuteNonQuery();
        connection.Close();
=======
        OleDbDataReader reader;
        conn = new OleDbConnection(path);
        conn.Open();
        cmd = new OleDbCommand("INSERT INTO tblProfiles (user_name, user_password, first_name, last_name, gender, dob, street_address, province, country, zip) "
            + "VALUES ('" + userName + "', '" + userPassword + "', '" + firstName + "', '" + lastName + "', '" + gender + "', '" + dob + "', '" + streetAddress + "', '" + province + "', '" + country + "', '" + zip + "')", conn);
        
        reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            UserInfoBoxControl MyUserInfoBoxControl = (UserInfoBoxControl)LoadControl("UserInfoBoxControl.ascx");
            phUserInfoBox.Controls.Add(MyUserInfoBoxControl);

            MyUserInfoBoxControl.UserName = reader.GetString(0);
            MyUserInfoBoxControl.UserPassword = reader.GetString(1);
            MyUserInfoBoxControl.FirstName = reader.GetString(2);
            MyUserInfoBoxControl.LastName = reader.GetString(3);
            MyUserInfoBoxControl.Gender = reader.GetString(4);
            MyUserInfoBoxControl.DOB = reader.GetString(5);
            MyUserInfoBoxControl.StreetAddress = reader.GetString(6);
            MyUserInfoBoxControl.City = reader.GetString(7);
            MyUserInfoBoxControl.Province = reader.GetString(8);
            MyUserInfoBoxControl.Country = reader.GetString(9);
            MyUserInfoBoxControl.Zip = reader.GetString(10);
        }
        
       // Response.Redirect(HttpContext.Current.Request.Path);

        conn.Close();

>>>>>>> bf0035363aaf98c9d2f26dafe431ad1c497d3be7
        Server.Transfer("index.aspx");
    }
}
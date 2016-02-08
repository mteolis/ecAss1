using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Terms : System.Web.UI.Page
{
<<<<<<< HEAD
    private OleDbConnection connection;
    private OleDbCommand cmd = null;
    private String path = @"Provider=Microsoft.ACE.OLEDB.12.0;DataSource=VanierFaces.accdb;Persist Security Info=False;";

    private string temp = "temp";
=======
    private string userName, userPassword, firstName, lastName, dob, phone, streetAddress, city, province, country, zip;
>>>>>>> 4ef25554bbe5e810e8622c68c78dde94e172e1db

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

        OleDbDataReader reader;
        connection = new OleDbConnection(path);
        connection.Open();
        cmd = new OleDbCommand("INSERT INTO tblProfiles (user_name, user_password, first_name, last_name, gender, dob, street_address, province, country, zip) "
            + "VALUES ('" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "', '" + temp + "');", connection);
        cmd.ExecuteNonQuery();
        connection.Close();
    }
}
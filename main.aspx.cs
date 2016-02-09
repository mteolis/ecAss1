using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.OleDb;


public partial class main : System.Web.UI.Page
{
    private OleDbCommand cmd = null;
    private String path;
    private OleDbConnection connection = new OleDbConnection();

    private string username;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

<<<<<<< HEAD
=======
        connection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;";
        path = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;";

>>>>>>> fetch_head
        OleDbConnection myConnection = default(OleDbConnection);
        OleDbCommand myCommand = default(OleDbCommand);
        string strSQL = null;
        strSQL = "SELECT user_name, first_name, last_name, country FROM tblProfiles";
        myConnection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;");
        myConnection.Open();
        myCommand = new OleDbCommand(strSQL, myConnection);

        OleDbDataAdapter adp = new OleDbDataAdapter(myCommand);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridViewProfile.DataSource = ds;
        GridViewProfile.DataBind();

        errorUserNotFound.Visible = false;

        username = Session["username"].ToString();
    }

    protected void onClick_profile(object sender, EventArgs e)
    {
        Session["username"] = username;
        Server.Transfer("myprofile.aspx");
    }

    protected void onClick_logout(object sender, EventArgs e)
    {
        Server.Transfer("index.aspx");
    }

    protected void onClick_navigate(object sender, EventArgs e)
    {
        connection = new OleDbConnection(path);
        connection.Open();

        cmd = new OleDbCommand("SELECT COUNT(*) FROM tblProfiles WHERE user_name = '" + inputUserNavigation.Text + "';", connection);
        cmd.ExecuteNonQuery();

        int compareUsername = Convert.ToInt32(cmd.ExecuteScalar().ToString());

        connection.Close();

        if (compareUsername == 1)
        {
            Session["username"] = username;
            Server.Transfer("user.aspx");
        }
        else
            errorUserNotFound.Visible = true;
    }
}
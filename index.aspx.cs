using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class index : System.Web.UI.Page
{
    private OleDbCommand cmd = null;
    private String path;
    private OleDbConnection connection = new OleDbConnection();

    private string username;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        connection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;";
        path = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;";
    }

    protected void onClick_register(object sender, EventArgs e)
    {
        Server.Transfer("register.aspx");
    }

    protected void onClick_login(object sender, EventArgs e)
    {
        connection = new OleDbConnection(path);
        connection.Open();

        cmd = new OleDbCommand("SELECT COUNT(*) FROM tblProfiles WHERE user_name = '" + inputUsername.Text + "';", connection);
        cmd.ExecuteNonQuery();

        int compareUsername = Convert.ToInt32(cmd.ExecuteScalar().ToString());

        connection.Close();

        if (compareUsername == 1)
        {
            connection.Open();

            cmd = new OleDbCommand("SELECT user_password FROM tblProfiles WHERE user_name = '" + inputUsername.Text + "';", connection);
            cmd.ExecuteNonQuery();

            string comparePassword = cmd.ExecuteScalar().ToString();

            if (comparePassword == inputPassword.Text)
            {
                Session["username"] = username;
                Server.Transfer("main.aspx");
            }
            else
                Response.Write("invalid password.");
        }
        else
            Response.Write("invalid username.");
    }
}
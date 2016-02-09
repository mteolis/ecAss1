using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class user : System.Web.UI.Page
{
    private OleDbConnection connection = default(OleDbConnection);
    OleDbCommand cmd = default(OleDbCommand);
    private String path;
    private string username, userProfile;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        string strSQLUser = null;
        string strSQLMessage = null;
        strSQLUser = "SELECT user_name, first_name, last_name, country FROM tblProfiles WHERE user_name = 'Randolph'";
        connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;");
        connection.Open();
        cmd = new OleDbCommand(strSQLUser, connection);

        OleDbDataAdapter adpU = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpU.Fill(ds);
        GridViewUser.DataSource = ds;
        GridViewUser.DataBind();

        strSQLMessage = "SELECT sender, message, date_sent FROM tblMessages WHERE receiver = 'ewq'";
        cmd = new OleDbCommand(strSQLMessage, connection);
        OleDbDataAdapter adpM = new OleDbDataAdapter(cmd);
        DataSet dsM = new DataSet();
        adpM.Fill(dsM);
        GridViewMessage.DataSource = dsM;
        GridViewMessage.DataBind();

        username = Session["username"].ToString();
        userProfile = Session["userProfile"].ToString();
    }

    protected void onClick_back(object sender, EventArgs e)
    {
        Session["username"] = username;
        Server.Transfer("main.aspx");
    }

    protected void onClick_clear(object sender, EventArgs e)
    {
        textArea.Value = "";
    }

    protected void onClick_post(object sender, EventArgs e)
    {
       
        path = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;";
        OleDbDataReader reader;
        connection = new OleDbConnection(path);
        connection.Open();
        cmd = new OleDbCommand("INSERT INTO tblMessages(sender, receiver, message, date_sent)"
            + "VALUES ('" + username + "','" + userProfile + "',' "+ textArea.Value + "', NOW());", connection);

        reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            MessageUserControl MyMessageUserControl = (MessageUserControl)LoadControl("MessageUserControl.ascx");
            phUserInfoBox.Controls.Add(MyMessageUserControl);

            MyMessageUserControl.Sender = reader.GetString(0);
            MyMessageUserControl.Receiver = reader.GetString(1);
            MyMessageUserControl.Message = reader.GetString(2);
            MyMessageUserControl.DateSent = reader.GetString(3);
            
        }

        Response.Redirect(Request.RawUrl);
    }
}
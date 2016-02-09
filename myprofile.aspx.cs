using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class myprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


        OleDbConnection myConnection = default(OleDbConnection);
        OleDbCommand myCommand = default(OleDbCommand);
        string strSQL = null;
        strSQL = "SELECT user_name, user_password, first_name, last_name, gender, dob, street_address, province, country FROM tblProfiles WHERE user_name = 'Randolph'";
        myConnection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;");
        myConnection.Open();
        myCommand = new OleDbCommand(strSQL, myConnection);

        OleDbDataAdapter adp = new OleDbDataAdapter(myCommand);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridViewMyProfile.DataSource = ds;
        GridViewMyProfile.DataBind();
    }

    protected void onClick_cancel(object sender, EventArgs e)
    {
        Server.Transfer("main.aspx");
    }

    protected void onClick_save(object sender, EventArgs e)
    {

    }
}
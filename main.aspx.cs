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
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        /* string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

         DataTable dt = new DataTable();
         using (SqlConnection con = new SqlConnection(connStr))
         {
             string strQuery = "SELECT * FROM tblProfiles";
             SqlCommand cmd = new SqlCommand(strQuery);
             using (SqlDataAdapter sda = new SqlDataAdapter())
             {
                 cmd.Connection = con;
                 con.Open();
                 sda.SelectCommand = cmd;
                 sda.Fill(dt);
                 GridView1.DataSource = dt;
                 GridView1.DataBind();
             }
         }**/

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
    }

    protected void onClick_profile(object sender, EventArgs e)
    {
        Server.Transfer("myprofile.aspx");
    }

    protected void onClick_logout(object sender, EventArgs e)
    {
        Server.Transfer("index.aspx");
    }
}
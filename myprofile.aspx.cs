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
    private OleDbConnection myConnection = default(OleDbConnection);
    OleDbCommand myCommand = default(OleDbCommand);

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


        
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

    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        OleDbDataReader reader;
        string strSQL = null;
        strSQL = "SELECT user_name, user_password, first_name, last_name, gender, dob, street_address, province, country FROM tblProfiles WHERE user_name ='Randolph'";
        myCommand = new OleDbCommand(strSQL , myConnection);
        reader = myCommand.ExecuteReader();
        while (reader.Read())
        {
            TextBoxPassword.Text = reader[1].ToString();
            TextBoxFirstName.Text = reader[2].ToString();
            TextBoxLastName.Text = reader[3].ToString();
            TextGender.Text = reader[4].ToString();
            TextBoxDOB.Text = reader[5].ToString();
            TextBoxStreetAddress.Text = reader[6].ToString();
            TextBoxlabelState.Text = reader[7].ToString();
            TextBoxCountry.Text = reader[8].ToString();
        }

        labelPassword.Visible = true;
        TextBoxPassword.Visible = true;
        labelFirstName.Visible = true;
        TextBoxFirstName.Visible = true;
        labelLastName.Visible = true;
        TextBoxLastName.Visible = true;
        labelGender.Visible = true;
        TextGender.Visible = true;
        labelDOB.Visible = true;
        TextBoxDOB.Visible = true;
        labelStreetAddress.Visible = true;
        TextBoxStreetAddress.Visible = true;
        labelState.Visible = true;
        TextBoxlabelState.Visible = true;
        labelCountry.Visible = true;
        TextBoxCountry.Visible = true;


    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
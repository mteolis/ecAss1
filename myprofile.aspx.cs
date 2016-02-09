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
    private OleDbConnection connection = default(OleDbConnection);
    OleDbCommand cmd = default(OleDbCommand);

    string username;

    protected void Page_Load(object sender, EventArgs e)
    {
        username = Session["username"].ToString();

<<<<<<< HEAD
=======
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

>>>>>>> fetch_head
        string strSQL = null;
        strSQL = "SELECT user_name, user_password, first_name, last_name, gender, dob, street_address, province, country, zip FROM tblProfiles WHERE user_name = '" + username + "';";
        connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("VanierFaces.accdb") + ";Persist Security Info=False;");
        connection.Open();
        cmd = new OleDbCommand(strSQL, connection);

        OleDbDataAdapter adp = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridViewMyProfile.DataSource = ds;
        GridViewMyProfile.DataBind();
    }

    protected void onClick_main(object sender, EventArgs e)
    {
        Session["username"] = username;
        Server.Transfer("main.aspx");
    }

    protected void onClick_cancel(object sender, EventArgs e)
    {
        success.Visible = false;

        labelPassword.Visible = false;
        inputPassword.Visible = false;
        labelFirstName.Visible = false;
        inputFirstName.Visible = false;
        labelLastName.Visible = false;
        inputLastName.Visible = false;
        labelGender.Visible = false;
        inputGender.Visible = false;
        labelDOB.Visible = false;
        inputDOB.Visible = false;
        labelStreetAddress.Visible = false;
        inputAddress.Visible = false;
        labelState.Visible = false;
        inputState.Visible = false;
        labelCountry.Visible = false;
        inputCountry.Visible = false;
        labelZip.Visible = false;
        inputZip.Visible = false;

        buttonCancel.Visible = false;
        buttonSave.Visible = false;
    }

    protected void onClick_save(object sender, EventArgs e)
    {
        cmd = new OleDbCommand("UPDATE tblProfiles SET user_password = '" + inputPassword.Text + "', first_name = '" + inputFirstName.Text + "', last_name = '" + inputLastName.Text  
                                + "', gender = '" + inputGender.SelectedValue + "', dob = '" + inputDOB.Text + "', street_address = '" + inputAddress.Text + "', province = '" + inputState.Text 
                                + "', country = '" + inputCountry.Text + "', zip = '" + inputZip.Text + "' WHERE user_name = '" + username + "';", connection);
        cmd.ExecuteNonQuery();
        connection.Close();

        Response.Redirect(Request.RawUrl);
    }

    protected void onClick_update(object sender, EventArgs e)
    {
        OleDbDataReader reader;
        string strSQL = null;
<<<<<<< HEAD
        strSQL = "SELECT user_name, user_password, first_name, last_name, gender, dob, street_address, province, country FROM tblProfiles WHERE user_name ='Randolph'";
        myCommand = new OleDbCommand(strSQL, myConnection);

        reader = myCommand.ExecuteReader();
=======

        strSQL = "SELECT user_name, user_password, first_name, last_name, gender, dob, street_address, province, country, zip FROM tblProfiles WHERE user_name = '" + username + "';";

        cmd = new OleDbCommand(strSQL, connection);

        reader = cmd.ExecuteReader();

        strSQL = "SELECT user_name, user_password, first_name, last_name, gender, dob, street_address, province, country, zip FROM tblProfiles WHERE user_name ='Randolph'";

        cmd = new OleDbCommand(strSQL, connection);

        reader = cmd.ExecuteReader();

>>>>>>> fetch_head
        while (reader.Read())
        {
            inputPassword.Text = reader[1].ToString();
            inputFirstName.Text = reader[2].ToString();
            inputLastName.Text = reader[3].ToString();
            inputGender.SelectedValue = reader[4].ToString();
            inputDOB.Text = reader[5].ToString();
            inputAddress.Text = reader[6].ToString();
            inputState.Text = reader[7].ToString();
            inputCountry.Text = reader[8].ToString();
            inputZip.Text = reader[9].ToString();
        }

        labelPassword.Visible = true;
        inputPassword.Visible = true;
        labelFirstName.Visible = true;
        inputFirstName.Visible = true;
        labelLastName.Visible = true;
        inputLastName.Visible = true;
        labelGender.Visible = true;
        inputGender.Visible = true;
        labelDOB.Visible = true;
        inputDOB.Visible = true;
        labelStreetAddress.Visible = true;
        inputAddress.Visible = true;
        labelState.Visible = true;
        inputState.Visible = true;
        labelCountry.Visible = true;
        inputCountry.Visible = true;
        labelZip.Visible = true;
        inputZip.Visible = true;

        buttonCancel.Visible = true;
        buttonSave.Visible = true;
    }
}
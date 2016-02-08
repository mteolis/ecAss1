<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - Register</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Size="XX-Large" Font-Underline="true">Vanier Faces</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelRegister" Font-Bold="true" Font-Size="X-Large">Register</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelUsername">Username:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputUsername"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputUsername" ControlToValidate="inputUsername" ErrorMessage="* Please enter a username."/>
                <br /><br />

                <asp:Label runat="server" ID="labelPassword">Password:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputPassword"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputPassword" ControlToValidate="inputPassword" ErrorMessage="* Please enter a password."/>
                <br /><br />

                <asp:Label runat="server" ID="labelFirstName">First name:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputFirstName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputFirstName" ControlToValidate="inputFirstName" ErrorMessage="* Please enter your first name." />
                <br /><br />

                <asp:Label runat="server" ID="labelLastName">Last name:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputLastName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputLastName" ControlToValidate="inputLastName" ErrorMessage="* Please enter your last name." />
                <br /><br />

                <asp:Label runat="server" ID="labelGender">Gender:</asp:Label>
                <br />
                <asp:RadioButtonList runat="server" ID="inputGender">
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" ID="reqGender" ControlToValidate="inputGender" ErrorMessage="* Please select a gender." />
                <br />

                <asp:Label runat="server" ID="labelDOB">Date of Birth:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputDOB"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqDOB" ControlToValidate="inputDOB" ErrorMessage="* Please enter a date of birth." />
                <br />
                <asp:RangeValidator runat="server" ID="validateDOB" ControlToValidate="inputDOB" Type="Date" MinimumValue="1900-01-01" MaximumValue="2020-12-31" ErrorMessage="* Please enter a valid date (YYYY-MM-DD)." />
                <br />

                <asp:Label runat="server" ID="labelPhone">Phone number:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputPhone"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputPhone" ControlToValidate="inputPhone" ErrorMessage="* Please enter a phone number." />
                <br /><br />

                <asp:Label runat="server" ID="labelStreetAddress">Street address:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputStreetAddress"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputStreetAddress" ControlToValidate="inputStreetAddress" ErrorMessage="* Please enter a street address." />
                <br /><br />

                <asp:Label runat="server" ID="labelCity">City:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputCity"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputCity" ControlToValidate="inputCity" ErrorMessage="* Please enter a city." />
                <br /><br />

                <asp:Label runat="server" ID="labelState">Province/State</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputState"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqState" ControlToValidate="inputState" ErrorMessage="* Please enter a province/state." />
                <br /><br />

                <asp:Label runat="server" ID="labelCountry">Country:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputCountry"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputCountry" ControlToValidate="inputCountry" ErrorMessage="* Please enter a country." />
                <br /><br />

                <asp:Label runat="server" ID="labelZip">Zip/Postal code:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputZip"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputZip" ControlToValidate="inputZip" ErrorMessage="* Please enter a Zip/Postal code." />
                <br />
                <asp:RegularExpressionValidator runat="server" ID="regInputZip" ControlToValidate="inputZip" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)" ErrorMessage="* Please enter a valid Zip/Postal code (case-sensitive)." />
                <br /><br />
         
                <asp:Button runat="server" ID="buttonCancel" Text="Cancel" OnClick="onClick_cancel" CausesValidation="false" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonNext" Text="Next" OnClick="onClick_next" />
            </div>
        </form>
    </body>
</html>

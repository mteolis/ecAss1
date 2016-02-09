<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Reference Control="~/UserInfoBoxControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - Login</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:PlaceHolder runat="server" ID="phUserInfoBox" />

                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Size="XX-Large" Font-Underline="true">Vanier Faces</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelLogin" Font-Size="X-Large" Font-Bold="true">Login</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelUsername">Username:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputUsername"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputUsername" ControlToValidate="inputUsername" ErrorMessage="* Invalid username."/>
                <asp:Label runat="server" ID="errorUsername">* Invalid username.</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelPassword">Password:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="inputPassword"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="reqInputPassword" ControlToValidate="inputPassword" ErrorMessage="* Invalid password."/>
                <asp:Label runat="server" ID="errorPassword">* Invalid password.</asp:Label>
                <br /><br />

                <asp:Button runat="server" ID="buttonRegister" Text="Register" OnClick="onClick_register" CausesValidation="false" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonLogin" Text="Login" OnClick="onClick_login" />
            </div>
        </form>
    </body>
</html>

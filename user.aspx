<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - User</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Size="XX-Large" Font-Underline="true">Vanier Faces</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelUser" Font-Bold="true" Font-Size="X-Large">User Profile</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelTemp">
                    TEMP LABEL 
                    <br />
                    **********
                    <br />
                    Table of user profile information goes here
                    <br />
                    **********
                </asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelMessages">Messages</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelTemp1">
                    TEXT BOX OF MESSAGES
                </asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelMessageUser">Post Message on User's wall:</asp:Label>
                <br />
                <textarea runat="server" id="textArea" maxlength="150" cols="40" rows="4" style="resize:none" ></textarea>
                <br />

                <asp:Button runat="server" ID="buttonBack" Text="Back" OnClick="onClick_back" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonClear" Text="Clear" OnClick="onClick_clear" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonPost" Text="Post" OnClick="onClick_post" />
            </div>
        </form>
    </body>
</html>

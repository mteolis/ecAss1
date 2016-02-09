<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>
<%@ Reference Control="~/MessageUserControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - User</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:PlaceHolder runat="server" ID="phUserInfoBox" />
                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Size="XX-Large" Font-Underline="true">Vanier Faces</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelUser" Font-Bold="true" Font-Size="X-Large">User Profile</asp:Label>
                <br /><br />

               <!-- <asp:Label runat="server" ID="labelTemp">
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
                </asp:Label> -->

                <asp:GridView ID="GridViewUser" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="16px" Width="676px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <br />
                <br />
                <asp:GridView ID="GridViewMessage" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="17px" Width="675px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <br />
                <br />

                <asp:Label runat="server" ID="labelMessageUser">Post Message on User's wall:</asp:Label>
                <br />
                <textarea runat="server" id="textArea" maxlength="150" cols="40" rows="4" style="resize:none" ></textarea>
                <br />
                <asp:RequiredFieldValidator runat="server" ID="reqText" ControlToValidate="textArea" ErrorMessage="Please enter a message." />
                <br />

                <asp:Button runat="server" ID="buttonBack" Text="Back" CausesValidation="false" OnClick="onClick_back" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonClear" Text="Clear" CausesValidation="false" OnClick="onClick_clear" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonPost" Text="Post" OnClick="onClick_post" />
            </div>
        </form>
    </body>
</html>

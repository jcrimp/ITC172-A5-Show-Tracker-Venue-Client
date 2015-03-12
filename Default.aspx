<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Login</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker Venue Login</h1>
        <p>Log in to add a show</p>
        <table class="login">
            <tr>
                <td class="login">User Name</td>
                <td class="login">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="login">
                <td class="login">Password</td>
                <td class="login">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr class="login">
                <td class="login">
                    <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                </td>
                <td class="login">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="lbRegister" runat="server" PostBackUrl="~/register.aspx" CausesValidation="false">Register</asp:LinkButton>

        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter your user name" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter your password" Display="None"></asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation"/>
    </div>
    </form>
</body>
</html>

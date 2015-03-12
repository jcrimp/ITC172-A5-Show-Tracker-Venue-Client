<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Registration</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker Venue Registration</h1>
        <table>
            <tr>
                <td>Venue Name</td>
                <td>
                    <asp:TextBox ID="txtVenueName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Zip code</td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone number</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Website</td>
                <td>
                    <asp:TextBox ID="txtWebsite" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age Restrictions</td>
                <td>
                    <asp:DropDownList ID="ddAgeRestriction" runat="server">
                        <asp:ListItem Value="0">Select One</asp:ListItem>
                        <asp:ListItem Value="1">All Ages</asp:ListItem>
                        <asp:ListItem Value="18">18+</asp:ListItem>
                        <asp:ListItem Value="21">21+</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="lbLogin" runat="server" PostBackUrl="~/Default.aspx" CausesValidation="false">Log In</asp:LinkButton>

        <asp:RequiredFieldValidator ID="VenueNameRequired" ControlToValidate="txtVenueName" runat="server" ErrorMessage="Enter the Venue Name" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="AddressRequired" ControlToValidate="txtAddress" runat="server" ErrorMessage="Address is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="CityRequired" ControlToValidate="txtCity" runat="server" ErrorMessage="City is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="StateRequired" ControlToValidate="txtState" runat="server" ErrorMessage="State is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="ZipRequired" ControlToValidate="txtZip" runat="server" ErrorMessage="Zip code is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="PhoneRequired" ControlToValidate="txtPhone" runat="server" ErrorMessage="Phone number is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="EmailRequired" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="WebsiteRequired" ControlToValidate="txtWebsite" runat="server" ErrorMessage="Website is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="UserNameRequired" ControlToValidate="txtUser" runat="server" ErrorMessage="Choose a User Name" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="PasswordRequired" ControlToValidate="txtNewPass" runat="server" ErrorMessage="You must enter a password" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="ConfirmRequired" ControlToValidate="txtConfirmPass" runat="server" ErrorMessage="Please re-enter your password" Display="None"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="ZipRegularExpression" ControlToValidate="txtZip" runat="server" ErrorMessage="Enter a valid zip code" Display="None" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="EmailRegularExpression" ControlToValidate="txtEmail" runat="server" ErrorMessage="Enter a valid email" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <asp:CompareValidator ID="PasswordCompare" runat="server" ErrorMessage="Passwords do not match" ControlToValidate="txtConfirmPass" ControlToCompare="txtNewPass" Display="None"></asp:CompareValidator>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation"/>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addshow.aspx.cs" Inherits="addshow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a Show</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Add A Show</h1>
                <table>
                    <tr>
                        <td>Select an Artist</td>
                        <td>
                              <asp:DropDownList ID="ddArtistList" runat="server" OnSelectedIndexChanged="ddArtistList_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                        </td>
                    </tr>
                </table>
                    

                  
            <asp:Table ID="TableArtist" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Artist Name</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtArtistName" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Artist Email</asp:TableCell>
                    <asp:TableCell> <asp:TextBox ID="txtArtistEmail" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Artist Website</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtArtistWebsite" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="btnSaveArtist" runat="server" Text="Save Artist" OnClick="btnSaveArtist_Click" CausesValidation="false"/>
                    </asp:TableCell>

                </asp:TableRow>
            </asp:Table>
            
        <table>
            <tr id="artist-key">
                <td>Artist Key</td>
                <td>
                    <asp:Label ID="lblArtistKey" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblChooseArtist" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Show Name</td>
                <td>
                    <asp:TextBox ID="txtShowName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Show Date</td>
                <td>
                    <asp:TextBox ID="txtShowDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Show Time</td>
                <td>
                    <asp:TextBox ID="txtShowTime" runat="server" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Artist Start Time</td>
                <td>
                    <asp:TextBox ID="txtArtistStartTime" runat="server" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>Enter ticket info and prices</td>
                <td>
                    <asp:TextBox ID="txtTicketInfo" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter show description and additional details</td>
                <td>
                    <asp:TextBox ID="txtShowDetail" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSaveShow" runat="server" Text="Save Show" OnClick="btnSaveShow_Click" />
                </td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="lbViewShows" runat="server" PostBackUrl="~/viewshows.aspx" CausesValidation="false">View Shows</asp:LinkButton>
                </td>
            </tr>
        </table>
        <asp:RequiredFieldValidator ID="ArtistRequired" ControlToValidate="ddArtistList" runat="server" ErrorMessage="Select an artist from the dropdown menu" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="ShowNameRequired" ControlToValidate="txtShowName" runat="server" ErrorMessage="Enter Show Name" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="ShowDateRequired" ControlToValidate="txtShowDate" runat="server" ErrorMessage="Enter Show Date" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="ShowTimeRequired" ControlToValidate="txtShowTime" runat="server" ErrorMessage="Enter Show Time" Display="None"></asp:RequiredFieldValidator>
       
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation" />

    </div>
    </form>
</body>
</html>

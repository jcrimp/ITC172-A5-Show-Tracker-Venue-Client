<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewshows.aspx.cs" Inherits="viewshows" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>View Shows</title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <h1>Shows for this Venue</h1>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <h2>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ShowName") %>'></asp:Label>
                </h2>
                <p>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ShowDate") %>'></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ShowTime") %>'></asp:Label><br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ShowTicketInfo") %>'></asp:Label>
                </p>

            </ItemTemplate>
        </asp:DataList>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/addshow.aspx">Add a Show</asp:LinkButton>
    </div>
    </form>
</body>
</html>

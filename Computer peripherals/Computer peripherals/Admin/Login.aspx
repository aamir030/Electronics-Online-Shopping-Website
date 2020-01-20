<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin: 200px;">
            <table align="center" width="500px" border="1">
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="lblAdminPanel" runat="server" Text="Computer Peripherals AdminPanel" ForeColor="DarkBlue"></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%">Username
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>
                    <td align="center" width="50%">Password
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%" colspan="2">
                        <asp:Label ID="lblAlert" runat="server" Text="" ForeColor="DarkRed"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>

</html>

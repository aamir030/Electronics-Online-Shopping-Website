<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 673px;
        }

        .auto-style3 {
            width: 691px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" width="900px" bordercolor="violet" border="1">
                <tr> 
                    <td align="left" width="900px">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Computer peripherals/Images/banner.jpg" Width="900px" />
                    </td>
                </tr>
            </table>
                 <table align="center" width="900px" border="1" bordercolor="violet">
                            <tr>
                   
                            <td>
                                    <asp:Panel ID="pnlCategories" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="1px">
                                      <h1 align="center">Your shopping cart</h1>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="lstdisp" runat="server" Height="158px" Width="787px" SelectionMode="Multiple">

        </asp:ListBox><br />
               <br />
            <div id="cartbuttons">
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Remove Item" Width="127px" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Empty Cart" OnClick="Button2_Click"  />
                    </div><br />
            <div id="shopbuttons">
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server"
            Text="Continue Shopping" OnClick="Button3_Click"  
                   /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="CheckOut" Width="85px" OnClick="Button4_Click"  
                     />  
                    </div>
                <p id="message">
                <asp:Label ID="Label1" runat="server" EnableViewState="False" ForeColor="Red"
                  ></asp:Label>
         
                                    <p>
                         <asp:ListBox ID="lstdisp2" runat="server">

                         </asp:ListBox>
                </p>
                                    </asp:Panel>
                            </td>
         


              <table align="center" width="900px">
                     <tr>
                    <td colspan="2" align="center" border="1">&nbsp;&copy;ComputerPeripherals.com
                 </td>

                 </tr>
     
            </table>
            </div>
    </form>
</body>
</html>

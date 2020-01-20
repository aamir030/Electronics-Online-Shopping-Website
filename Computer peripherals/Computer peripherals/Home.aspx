<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home1" %>

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

            <table>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Computer peripherals/Images/Cart.png" Width="50px" Height="50px" OnClick="ImageButton1_Click"
                             />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>          
                        </td>
                </tr>
            </table>
            
                    
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table align="center" width="900px" border="1">
                        <table align="center" bordercolor="violet" width="900px">
                            <tr>
                                <td class="auto-style3">&nbsp;<asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="Green" Text="Popular Products at Electronic Store"></asp:Label>
                                </td>
                                <td border="2" border-witdh="thin" border-color="violet">
                              &nbsp;<asp:HyperLink ID="HyperLink1"  runat="server"  NavigateUrl="~/Computer peripherals/Home.aspx">Products</asp:HyperLink>
                                </td>

                            </tr>
                        </table>
                        <table align="center" width="900px">
                            <tr>
                                <td text-align="left" valign="top" class="auto-style2">
                                    <asp:Panel ID="pnlProducts" runat="server" ScrollBars="Auto" Width="692px"
                                        Height="500px" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Style="margin-right: 0px">

                                        <asp:DataList ID="DataList2" runat="server"
                                            RepeatColumns="3" Width="600px" Font-Bold="false"
                                            Font-Italic="false" Font-Overline="false"
                                            Font-Strikeout="false" Font-Underline="false"
                                            OnItemCommand="DataList2_ItemCommand"
                                           >

                                            <ItemTemplate>
                                                <table cellspacing="1" border="1">
                                                    <tr>
                                                        <td border-width="1px" border-color="#00000">
                                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Name") %>'
                                                                Style="font-weight: 700"></asp:Label>


                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~//Computer peripherals//ProductImages//" + Eval("Image")%>'
                                                                Width="173px" Height="160px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Price")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                        <asp:Button ID="Button1" runat="server" Text="Add To Cart" Width="100%"
                                                   BorderColor="Black" BorderStyle="Inset" BorderWidth="1px"
                                                      CommandName="Click" CommandArgument ='<%#Eval("Id")%>'      
                                                                 />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </asp:Panel>
                                </td>
                                <td valign="top" align="center" width="257px" text-align="center">
                                    <asp:Panel ID="pnlCategories" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="1px">
                                        <asp:DataList ID="DataList1" BackColor="White"
                                            BorderStyle="None" BorderWidth="1px" CellPadding="4"
                                            ForeColor="Black" 
                                            GridLines="Horizontal" runat="server" Width="188px"
                                            OnItemCommand="DataList1_ItemCommand"
                                             >
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <FooterStyle BackColor="#33333" ForeColor="White" Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1"
                                                    runat="server" Text='<%#Eval("Categoryname")%>'
                                                   CommandName="Click" 
                                                    CommandArgument='<%#Eval("Id")%>'
                                                   
                                                 >

                                                </asp:LinkButton>
                                            </ItemTemplate>
                                            <SelectedItemStyle BackColor="#CCCC99" Font-Bold="true" ForeColor="White" />
                                        </asp:DataList>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" border="1">&nbsp;&copy;ComputerPeripherals.com
                                    || <a href="Admin/Login.aspx">Admin Panel</a>
                                </td>

                            </tr>
                        </table>
                        </td>
                    </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>

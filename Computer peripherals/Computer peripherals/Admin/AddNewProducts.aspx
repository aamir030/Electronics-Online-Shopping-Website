<%@ Page Title="" Language="C#" MasterPageFile="~/Computer peripherals/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddNewProducts.aspx.cs" Inherits="Admin_AddNewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <div align="center">
            <h4>Add New Products
            </h4>
            <hr />
        </div>
        <table align="center" cellspacing="1" background-color="#FFFFFF" border="1">
            <tr>
                <td align="left" width="50%">Product Name:
                </td>
                <td>
                    <asp:TextBox ID="txtproductname" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" width="50px"></td>
                <td align="left" width="50px"></td>

            </tr>
            <tr>
                <td align="left">Product Category : 
                </td>
                <td width="50%" align="left">
                    <asp:DropDownList ID="ddlcategory" runat="server" Width="99%" Height="20px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="left" width="50px"></td>
                <td align="left" width="50px"></td>


            </tr>
            <tr>
                <td align="left">Product Description :
                </td>
                <td align="left" width="50px">
                    <asp:TextBox ID="txtproductdescription" runat="server" TextMode="MultiLine" Width="250px" heigth="150px" Height="83px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td align="left">Product Image : 
                </td>
                <td align="left" width="50px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>

            </tr>
            <tr>
                <td align="left" width="50px"></td>
                <td align="left" width="50px"></td>


            </tr>
            <tr>
                <td align="left">Product Price : 
                </td>
                <td align="left" width="50px">
                    <asp:TextBox ID="txtprice" runat="server" Width="250px"></asp:TextBox>
                </td>


            </tr>
            <tr>
                <td align="left" width="50px"></td>
                <td align="left" width="50px"></td>


            </tr>
            <tr>
                <td align="left" width="50px"></td>
                <td align="left" width="50px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" Height ="30px" OnClick="btnSubmit_Click" />
                </td>


            </tr>





        </table>
    
</asp:Content>


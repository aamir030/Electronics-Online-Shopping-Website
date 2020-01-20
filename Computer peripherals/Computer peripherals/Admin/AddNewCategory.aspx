<%@ Page Title="" Language="C#" MasterPageFile="~/Computer Peripherals/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddNewCategory.aspx.cs" Inherits="Admin_AddEditCategory" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <h4>Add New Category</h4>
        <hr />

    </div>
    <table align="center" background-color="#FFFFF" cellspacing="1" border="1">
        <tr>
            <td width="50%" align="left">Category Name:
            </td>
            <td width="50%" align="left">
                <asp:TextBox ID="txtCategoryName" runat="server" Width="250px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td width="50%" align="left"></td>
            <td width="50%" align="left">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" Height="30px" OnClick="btnSubmit_Click" />
            </td>

        </tr>
           </table>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Computer peripherals/CheckOut.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div>
           
    <h2>CheckOut Page 1</h2>
            <h4>Contact Information</h4>
            
            <asp:Table ID="Table1" runat="server" >
                <asp:TableRow>
                    <asp:TableCell>Email address:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter email" ControlToValidate="TextBox1">
                        </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Email format is invalid" ControlToValidate="TextBox1"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                            </asp:RegularExpressionValidator>
                    
        
                    </asp:TableCell>

                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>Email Re-entry:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please re-enter email" ControlToValidate="TextBox2">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please enter the same email as above" ControlToValidate="TextBox2" ControlToCompare="TextBox1">
                        </asp:CompareValidator>
                        </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>First Name:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter First Name" ControlToValidate="TextBox3">
                        </asp:RequiredFieldValidator>

                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Last Name:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Last Name" ControlToValidate="TextBox4">
                        </asp:RequiredFieldValidator>

                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Phone Number:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Phone Number" ControlToValidate="TextBox5">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                             ErrorMessage="Phone Number Format is invalid"
                             ValidationExpression="\D*([2-9]\d{2})(\D*)([2-9]\d{2})(\D*)(\d{4})\D*"
                             ControlToValidate="TextBox5">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell>

                </asp:TableRow>



            </asp:Table>

            <h4>Billing Address</h4>

            <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Address:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter Address" ControlToValidate="TextBox6">
                        </asp:RequiredFieldValidator>

                    </asp:TableCell>

                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>City:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter City" ControlToValidate="TextBox7">
                        </asp:RequiredFieldValidator>
            
                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>State:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="173px"></asp:DropDownList>
                   
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                         </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Zip Code:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter zip code" ControlToValidate="TextBox9">
                        </asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
            ErrorMessage="Zip Code Format is invalid" ControlToValidate="TextBox9"
            ValidationExpression="[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]">

       </asp:RegularExpressionValidator>
            
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <h4>Optional Data</h4>
            Please let me know about:<br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="New Products" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="New Editions" /><br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Special Offers" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox4" runat="server" Text="Local Events" /><br />
            <br />
            Please contact me via:<br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Twitter" GroupName="contact" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Facebook" GroupName="contact" />
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Text message" GroupName="contact" />
            <asp:RadioButton ID="RadioButton4" runat="server" Text="Email" GroupName="contact" /><br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Check Out" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Cancel Order" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"
                  CausesValidation="false">Continue Shopping</asp:LinkButton>      
          <br />
            <asp:Label ID="Label2" runat="server" ></asp:Label>
            
    </div>
</asp:Content>


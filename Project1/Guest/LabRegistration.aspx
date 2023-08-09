<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest Mater.master" AutoEventWireup="true" CodeFile="LabRegistration.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .auto-style1 {
            width: 107%;
        }
        .auto-style2 {
            height: 23px;
        width: 18px;
    }
        .auto-style8 {
        width: 18px;
    }
        .auto-style13 {
            height: 23px;
            width: 29px;
        }
        .auto-style14 {
            width: 29px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="tab">--%>
    <center>
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14"><strong>REGISTRATION FORM</strong></td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Laboratory Name</td>
            <td class="auto-style14">
                <asp:TextBox ID="labname" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="labname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">License Number</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtlicense" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlicense" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Email</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtemail" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtpass" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Confirm Password</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcon" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style8">
                *</td>
        </tr>
        <tr>
            <td class="auto-style8">Contact Number</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcontact" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="([0-9]{10,10})"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Address</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Accreditation</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtaccred" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaccred" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Working Hours</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtotime" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtotime" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">District</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddldistrict" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged1" Width="220px">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddldistrict" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Place</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddlplace" runat="server" AutoPostBack="True"  Width="220px">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Upload Proof</td>
            <td class="auto-style14">
                <asp:FileUpload ID="fileproof" runat="server" />
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="fileproof" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Upload Laboratory Logo</td>
            <td class="auto-style14">
                <asp:FileUpload ID="filelogo" runat="server" Width="220px" />
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="filelogo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style13">
                <asp:Button ID="btnreg" runat="server" OnClick="btnreg_Click" Text="Register" Width="90px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" />
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
        <%--</div>--%>
        </center>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest Mater.master" AutoEventWireup="true" CodeFile="JobseekerRegistration.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
            width: 8px;
        }
        .auto-style4 {
            height: 23px;
            width: 748px;
        }
        .auto-style5 {
            width: 153px;
        }
        .auto-style6 {
            height: 23px;
            width: 153px;
        }
        .auto-style7 {
            width: 153px;
            height: 26px;
        }
        .auto-style8 {
            width: 748px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            width: 8px;
        }
        .auto-style10 {
            width: 8px;
        }
        .auto-style11 {
            width: 748px
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11"><strong>REGISTRATION FORM</strong></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">First Name</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtfname" runat="server" style="margin-left: 0px" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Last Name</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtlname" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Email</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtemail" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Password</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtpass" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Confirm Password</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtcon" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcon" ErrorMessage="Check password" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Gender</td>
            <td class="auto-style11">
                <asp:RadioButtonList ID="rbgender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rbgender" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Contact Nomber</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtcont" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcont" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="([0-9]{10,10})"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Address</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">DOB</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtdob" runat="server" TextMode="Date" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdob" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Job Type</td>
            <td class="auto-style11">
                <asp:DropDownList ID="ddljbtype" runat="server" AutoPostBack="True" Width="220px">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddljbtype" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Qualification</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtqual" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtqual" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Year of Experience</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtexp" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">District</td>
            <td class="auto-style11">
                <asp:DropDownList ID="ddldistrict" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged1" Width="220px">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddldistrict" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Place</td>
            <td class="auto-style11">
                <asp:DropDownList ID="ddlplace" runat="server" AutoPostBack="True" Width="220px">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlplace" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Upload Profile photo</td>
            <td class="auto-style11">
                <asp:FileUpload ID="filephoto" runat="server" />
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="filephoto" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Upload CV</td>
            <td class="auto-style11">
                <asp:FileUpload ID="filecv" runat="server" />
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="filecv" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btnreg" runat="server" OnClick="btnreg_Click" Text="Register" Width="90px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" />
            </td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>
        </center>
        <%--</div>--%>
</asp:Content>


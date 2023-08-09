<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest Mater.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Basic_Programs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            height: 23px;
            width: 89px;
        }
    .auto-style8 {
            height: 26px;
            width: 89px;
        }
    .auto-style11 {
        height: 30px;
        width: 89px;
    }
        .auto-style20 {
            height: 24px;
            width: 89px;
        }
        .auto-style29 {
            height: 46px;
            width: 89px;
        }
        .auto-style30 {
            height: 23px;
            width: 761px;
        }
        .auto-style31 {
            height: 24px;
            width: 761px;
        }
        .auto-style32 {
            height: 26px;
            width: 761px;
        }
        .auto-style34 {
            height: 46px;
            width: 761px;
        }
        .auto-style35 {
            height: 30px;
            width: 761px;
        }
        .auto-style36 {
            height: 23px;
            width: 150px;
        }
        .auto-style37 {
            height: 24px;
            width: 150px;
        }
        .auto-style38 {
            height: 26px;
            width: 150px;
        }
        .auto-style39 {
            width: 150px;
        }
        .auto-style40 {
            height: 46px;
            width: 150px;
        }
        .auto-style41 {
            height: 30px;
            width: 150px;
        }
        .auto-style42 {
            width: 761px
        }
        .auto-style43 {
            width: 89px
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="tab">--%>
    <center>
    <table class="auto-style1">
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style30">
                REGISTRATION&nbsp;&nbsp; FORM</td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style37">First Name</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtfname" runat="server" Width="220px" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38">Last Name</td>
            <td class="auto-style32">
                <asp:TextBox ID="txtlname" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style39">Email</td>
            <td class="auto-style42">
                <asp:TextBox ID="txtemail" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style43">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Password</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtpass" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Confirm Password</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtcon" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcon" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style40">Gender</td>
            <td class="auto-style34">
                <asp:RadioButtonList ID="rbgender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style29">
                </td>
        </tr>
        <tr>
            <td class="auto-style38">Contact Number</td>
            <td class="auto-style32">
                <asp:TextBox ID="txtcontact" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtcontact"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38">DOB</td>
            <td class="auto-style32">
                <asp:TextBox ID="txtdob" runat="server" TextMode="Date" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtdob"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style39">Address</td>
            <td class="auto-style42">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
            <td class="auto-style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">District</td>
            <td class="auto-style30">
                <asp:DropDownList ID="ddldistrict" runat="server" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" >
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddldistrict" ErrorMessage="*" ForeColor="Red" InitialValue="--select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Place</td>
            <td class="auto-style30">
                <asp:DropDownList ID="ddlplace" runat="server" Width="220px" AutoPostBack="True" >
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlplace" ErrorMessage="*" ForeColor="Red" InitialValue="--select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Upload photo</td>
            <td class="auto-style30">
                <asp:FileUpload ID="filephoto" runat="server" Width="220px" />
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="filephoto"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style41"></td>
            <td class="auto-style35">
                <asp:Button ID="btnregister" runat="server" Text="Register" Width="90px" OnClick="btnregister_Click"  />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" CausesValidation="False" />
            </td>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
        </center>
        <%--</div>--%>
</asp:Content>


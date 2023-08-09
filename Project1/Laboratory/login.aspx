<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest Mater.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Basic_Programs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td style="font-weight: 700">
                LOGIN&nbsp; FORM</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" Width="220px" OnClick="btnlogin_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="invalidlabel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="change.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            width: 138px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Old Password&nbsp;&nbsp;&nbsp; :</td>
            <td>
                <asp:TextBox ID="txtold" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">New Password&nbsp; :</td>
            <td>
                <asp:TextBox ID="txtnew" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm passwrd:</td>
            <td>
                <asp:TextBox ID="txtcon" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnchange" runat="server" OnClick="btnchange_Click" Text="Change" Width="90px" />
            </td>
        </tr>
    </table>
</asp:Content>


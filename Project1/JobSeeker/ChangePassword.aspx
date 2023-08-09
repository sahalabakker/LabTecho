<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="JobSeeker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 167px;
        }
        .auto-style3 {
            width: 98px;
        }
        .auto-style4 {
            width: 98px;
            height: 24px;
        }
        .auto-style5 {
            width: 167px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">Old Password:</td>
            <td>
                <asp:TextBox ID="txtold" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">New Password:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtnew" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtcon" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnchange" runat="server" OnClick="btnchange_Click" Text="Change" Width="90px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


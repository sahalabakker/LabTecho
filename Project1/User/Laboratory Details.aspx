<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="Laboratory Details.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 147px;
        }
        .auto-style3 {
            color: #CC0000;
        }
        .auto-style4 {
            width: 147px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 147px;
            color: #CC0000;
            height: 23px;
        }
        .auto-style7 {
            width: 147px;
            font-weight: bold;
        }
        .auto-style8 {
            width: 147px;
            height: 21px;
        }
        .auto-style9 {
            height: 21px;
        }
        .auto-style10 {
            width: 87px;
            height: 21px;
        }
        .auto-style11 {
            width: 87px;
            height: 23px;
        }
        .auto-style12 {
            width: 87px;
            color: #CC0000;
            height: 23px;
        }
        .auto-style13 {
            width: 87px;
            font-weight: bold;
        }
        .auto-style14 {
            width: 87px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" Text="lname" CssClass="auto-style3" Font-Bold="True"></asp:Label>
                &nbsp;<span class="auto-style3"><strong>DIAGNOSTIC SERVICES</strong></span></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style6">BRANCH DETAILS:-</td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style7">Address</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style7">Contact</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style7">Email</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label" style="color: #0033CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style7">Working Hours</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="btnbook" runat="server" Text="Book a Test" Width="150px" OnClick="btnbook_Click1" />
&nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:Button ID="btndwnld" runat="server" Text="Download Report" Width="150px" OnClick="btndwnld_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


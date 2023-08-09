<%@ Page Title="" Language="C#" MasterPageFile="~/Basic Programs/BasicMaster.master" AutoEventWireup="true" CodeFile="reversepalindrome.aspx.cs" Inherits="Basic_Programs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Enter Nomber</td>
            <td>
                <asp:TextBox ID="txtnum" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:Button ID="btnsum" runat="server" OnClick="btnsum_Click" Text="Sum" />
                <asp:Button ID="btnrevers" runat="server" OnClick="btnrevers_Click" Text="Reverse" />
                <asp:Button ID="btnpalindrome" runat="server" OnClick="btnpalindrome_Click" Text="Check Palindrome" />
            </td>
        </tr>
        <tr>
            <td>Result</td>
            <td>
                <asp:TextBox ID="txtrslt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>


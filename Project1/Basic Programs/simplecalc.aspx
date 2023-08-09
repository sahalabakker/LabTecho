<%@ Page Title="" Language="C#" MasterPageFile="~/Basic Programs/BasicMaster.master" AutoEventWireup="true" CodeFile="simplecalc.aspx.cs" Inherits="Basic_Programs_Default" %>

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
            <td>First No:</td>
            <td>
                <asp:TextBox ID="txtnum1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Second No:</td>
            <td>
                <asp:TextBox ID="txtnum2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsub" runat="server" OnClick="btnsub_Click" Text="Substract" />
                <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" />
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


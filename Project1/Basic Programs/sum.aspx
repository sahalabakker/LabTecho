<%@ Page Title="" Language="C#" MasterPageFile="~/Basic Programs/BasicMaster.master" AutoEventWireup="true" CodeFile="sum.aspx.cs" Inherits="Basic_Programs_Default" %>

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
        <td>1st</td>
        <td>
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>2nd</td>
        <td>
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btn1" runat="server" Text="sum" OnClick="btn1_Click" />
        </td>
        <td>
            <asp:TextBox ID="txtrslt" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>


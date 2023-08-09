<%@ Page Title="" Language="C#" MasterPageFile="~/Basic Programs/BasicMaster.master" AutoEventWireup="true" CodeFile="smallestandlargest.aspx.cs" Inherits="Basic_Programs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>First Nomber</td>
            <td>
                <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Second Nomber</td>
            <td>
                <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Third Nomber</td>
            <td>
                <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsmall" runat="server" OnClick="btnsmall_Click" Text="Smallest" />
                <asp:Button ID="btnlarge" runat="server" OnClick="btnlarge_Click" style="height: 26px" Text="Largest" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Result</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtrslt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>


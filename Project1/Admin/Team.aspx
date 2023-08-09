<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Team.aspx.cs" Inherits="Admin_Default" %>

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
            <td>Team Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Team Owner</td>
            <td>
                <asp:TextBox ID="txtowner" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Team Flag</td>
            <td>
                <asp:FileUpload ID="flag" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="save" Width="90px" />
                <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Cancel" Width="90px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


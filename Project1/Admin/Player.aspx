<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Player.aspx.cs" Inherits="Admin_Default" %>

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
            <td>PLAYER</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>DOB</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" TextMode="Date" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Photo</td>
            <td>
                <asp:FileUpload ID="photo" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Width="90px" />
                <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" Width="90px" />
            </td>
        </tr>
    </table>
</asp:Content>


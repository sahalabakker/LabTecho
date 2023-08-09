<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="BookNow.aspx.cs" Inherits="User_Default" %>

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
            <td><strong>TEST DETAILS</strong></td>
        </tr>
        <tr>
            <td>
                Test Type</td>
            <td>
                <asp:TextBox ID="txtttype" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Test Name</td>
            <td>
                <asp:TextBox ID="txttname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Amount</td>
            <td>
                <asp:TextBox ID="txtamount" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Test Slot</td>
            <td>
                <asp:TextBox ID="txttime" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Test Time</td>
            <td>
                <asp:TextBox ID="txtctime" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" Width="90px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


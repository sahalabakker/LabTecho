<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Reply Jobseeker.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    .auto-style3 {
        width: 197px;
    }
    .auto-style4 {
        height: 23px;
        width: 197px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Complaint Ttpe:</td>
            <td>
                <asp:TextBox ID="txtcmptype" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Complaint Title:</td>
            <td>
                <asp:TextBox ID="txtcmptitle" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Complaint Content:</td>
            <td>
                <asp:TextBox ID="txtcmpcontent" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Send Date:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtsenddate" runat="server" TextMode="DateTime" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Reply:</td>
            <td>
                <asp:TextBox ID="txtreply" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnreply" runat="server" OnClick="btnreply_Click" Text="Reply" Width="90px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


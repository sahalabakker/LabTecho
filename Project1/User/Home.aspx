<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            font-size: large;
            color: #990033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <img src="Assets/img/b1.jpg" width="300" height="300" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">HELLO&nbsp; </span>    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Font-Size="X-Large"></asp:Label>
    <span class="auto-style3">, WELCOME&nbsp; TO&nbsp; LABCO</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/change.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/User/View Profile.aspx">View Profile</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/User/Edit Profile.aspx">Edit Profile</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/User/SearchLaboratory.aspx">Find Laboratory</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/User/Appoinment status.aspx">Appoinments</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/User/View report.aspx">Reports</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/User/Notifications.aspx">Notifications</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>


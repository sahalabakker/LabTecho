<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="JobSeeker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 156px;
        }
        .auto-style5 {
            height: 26px;
            width: 156px;
        }
        .auto-style6 {
            height: 23px;
            width: 156px;
        }
        .auto-style7 {
            width: 140px;
        }
        .auto-style8 {
            height: 26px;
            width: 140px;
        }
        .auto-style9 {
            height: 23px;
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="tab">--%>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td><strong>EDIT PROFILE</strong></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">First Name:</td>
            <td>
                <asp:TextBox ID="txtfname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">Last Name:</td>
            <td>
                <asp:TextBox ID="txtlname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">Email:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">Contact Number:</td>
            <td>
                <asp:TextBox ID="txtcont" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">Address:</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">Qualification:</td>
            <td>
                <asp:TextBox ID="txtqualif" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style5">Experience:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtexp" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="btnedit" runat="server" OnClick="btnedit_Click" Text="EDIT" Width="90px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style6"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <%--</div>--%>
</asp:Content>


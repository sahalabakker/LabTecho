<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest Mater.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Basic_Programs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
<style type="text/css">
    .auto-style1 {
        width: 469px;
    }
    .auto-style2 {
        width: 83px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tab">
    <%--<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <center>
        <div id="info_form">
    <div class="col-lg-6 info_box_col">
					<div class="info_form_container">
						<div class="info_form_title">Make an Appointment</div>--%>
    <table class="auto-style1" >
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="font-weight: 700">
                LOGIN&nbsp; FORM</td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" Width="220px" OnClick="btnlogin_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="invalidlabel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
                        <%--</div>
        </div>
    </div>
        </center>
    </div>--%>
        </div>
</asp:Content>


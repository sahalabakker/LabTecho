<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="DetailsView.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 388px;
        }
        .auto-style3 {
            width: 408px;
        }
        .auto-style4 {
            width: 410px;
        }
        .auto-style5 {
            width: 643px;
        }
        .auto-style6 {
            width: 696px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">&nbsp;</span><span class="auto-style3">VIEW PROFILE</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style5">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="180px" Width="613px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="first_name" HeaderText="First Name" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" />
            <asp:BoundField DataField="user_email" HeaderText="Email" />
            <asp:BoundField DataField="user_phone" HeaderText="Contact Nomber" />
            <asp:BoundField DataField="user_dob" HeaderText="DOB" />
            <asp:BoundField />
            <asp:BoundField DataField="user_address" HeaderText="Address" />
            <asp:TemplateField HeaderText="Profile Photo">
                            <ItemTemplate>
                                <img src="../User/photo/<%#Eval("user_photo")%>" width="100" height="100" />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />

    </asp:DetailsView>
      </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Edit" Width="90px" OnClick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Change Password" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


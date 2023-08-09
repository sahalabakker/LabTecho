<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="View Profile.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td><strong>VIEW PROFILE</strong></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="first_name" HeaderText="First Name" />
                        <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                        <asp:BoundField DataField="user_email" HeaderText="Email" />
                        <asp:BoundField DataField="user_phone" HeaderText="Contact Nomber" />
                        <asp:BoundField DataField="user_address" HeaderText="Address" />
                        <asp:BoundField DataField="district_name" HeaderText="District" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                        <asp:BoundField DataField="user_dob" HeaderText="DOB" />
                        <asp:BoundField DataField="user_gender" HeaderText="Gender" />
                        <asp:TemplateField HeaderText="Profile Photo">
                            <ItemTemplate>
                                <img src="../User/photo/<%#Eval("user_photo")%>" width="120" height="120" />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


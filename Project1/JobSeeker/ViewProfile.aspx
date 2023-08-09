<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="JobSeeker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            font-weight: normal;
            font-size: medium;
            color: #990000;
        }
        .auto-style4 {
            font-weight: normal;
            font-size: medium;
            height: 26px;
        }
        .auto-style5 {
            font-weight: normal;
            font-size: medium;
            height: 26px;
            width: 121px;
        }
        .auto-style6 {
            font-size: medium;
            width: 121px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="tab">--%>
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3"><strong>&nbsp;VIEW PROFILE</strong></span>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="507px" OnPageIndexChanging="DetailsView1_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="js_fname" HeaderText="First Name" />
                        <asp:BoundField DataField="js_lname" HeaderText="Last Name" />
                        <asp:BoundField DataField="js_email" HeaderText="Email" />
                        <asp:BoundField DataField="js_phone" HeaderText="Contact Nomber" />
                        <asp:BoundField DataField="js_address" HeaderText="Address" />
                        <asp:BoundField DataField="district_name" HeaderText="District" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                        <asp:BoundField DataField="js_dob" HeaderText="DOB" />
                        <asp:BoundField DataField="js_gender" HeaderText="Gender" />
                        <asp:BoundField DataField="jobtype" HeaderText="Jobtype" />
                        <asp:BoundField DataField="js_qualif" HeaderText="Qualification" />
                        <asp:BoundField DataField="js_exp" HeaderText="Experience" />
                        <asp:TemplateField HeaderText="Profile Photo">
                            <ItemTemplate>
                                <img src="../User/photo/<%#Eval("js_photo")%>" width="120" height="120" />
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
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" Width="100px" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Password" />
&nbsp; &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
       
    </table>
        <%--</div>--%>
</asp:Content>


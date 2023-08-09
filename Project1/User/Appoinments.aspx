<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="Appoinments.aspx.cs" Inherits="User_Default" %>

<script runat="server">

    
   
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 34px;
            width: 979px;
        }
        .auto-style3 {
            height: 69px;
            width: 979px;
        }
        .auto-style4 {
            width: 979px;
        }
        .auto-style5 {
            color: #CC0000;
            font-size: large;
            height: 24px;
        }
        .auto-style8 {
            width: 249px;
        }
        .auto-style9 {
            width: 249px;
            font-weight: bold;
        }
        .auto-style10 {
            width: 249px;
            height: 24px;
        }
        .auto-style11 {
            width: 58px;
        }
        .auto-style12 {
            height: 34px;
            width: 58px;
        }
        .auto-style13 {
            height: 69px;
            width: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnappoin" runat="server" Text="Fix Appointment" Width="170px" OnClick="btnappoin_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btnfeed" runat="server" Text="Send Feedback" Width="170px" OnClick="btnfeed_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btnpost" runat="server" Text="Post Complaint" Width="170px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View2" runat="server">
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style10"></td>
                                <td class="auto-style5">Fix Appointments Online</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Name Of Customer</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Email </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" ForeColor="#0033CC" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Preffered Date &amp; Time</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                                    &nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Age</td>
                                <td>
                                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Contact Number </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">District</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Laboratory Choosed</td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                    &nbsp; Medical Laboratory</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td>
                                    <asp:Button ID="btnnxt" runat="server" Text="Next" Width="120px" OnClick="btnnxt_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                    </asp:View>
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


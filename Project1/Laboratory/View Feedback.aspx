<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="View Feedback.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
            color: #666666;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            width: 66px;
        }
        .auto-style5 {
            height: 24px;
            width: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">FEEDBACKS&nbsp;</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="book_id" HeaderText="Book ID">
                        <HeaderStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Booked Date">
                        <ItemStyle HorizontalAlign="Center" Width="160px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="first_name" HeaderText="Name Of Customer">
                        <ItemStyle HorizontalAlign="Center" Width="160px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_email" HeaderText="Email ID">
                        <ItemStyle ForeColor="#0066CC" HorizontalAlign="Center" Width="160px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_phone" HeaderText="Contact">
                        <ItemStyle HorizontalAlign="Center" Width="160px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="feedback" HeaderText="Feedback">
                        <ItemStyle HorizontalAlign="Center" Width="175px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


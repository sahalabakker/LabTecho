<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 192px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            color: #006666;
        }
        .auto-style5 {
            color: #666666;
            font-size: medium;
        }
        .auto-style6 {
            width: 62px;
        }
        .auto-style7 {
            height: 23px;
            width: 62px;
        }
        .auto-style8 {
            height: 192px;
            width: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong> <span class="auto-style4"> &nbsp;</span><span class="auto-style5">PATIENT DETAILS</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="book_id" HeaderText="Book ID">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="first_name" HeaderText="Patient Name" >
                        <HeaderStyle Height="35px" />
                        <ItemStyle HorizontalAlign="Center" Width="145px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_email" HeaderText="Patient Email" >
                        <ItemStyle HorizontalAlign="Center" Width="170px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Age" DataField="age" >
                        <ItemStyle HorizontalAlign="Center" Width="60px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_gender" HeaderText="Gender" >
                        <ItemStyle HorizontalAlign="Center" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_phone" HeaderText="Contact Number" >
      
                        <ItemStyle HorizontalAlign="Center" Width="165px" />
                        </asp:BoundField>
      
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("book_id") %>' CommandName="vm" Height="27px" Text="ViewMore" Width="117px" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black">
                                     <AlternatingRowStyle BackColor="White" />
                                     <Columns>
                        <asp:BoundField DataField="test_name" HeaderText="Test Name" >
                    
                       
                                         <ItemStyle HorizontalAlign="Center" Width="220px" />
                                         </asp:BoundField>
                    
                       
                                         <asp:BoundField DataField="test_amount" HeaderText="Amount" >
                    
                       
                                         <ItemStyle HorizontalAlign="Center" Width="100px" />
                                         </asp:BoundField>
                    
                       
                                         <asp:BoundField DataField="payment_status" HeaderText="Payment Status" >
                                         <HeaderStyle Height="35px" />
                                         <ItemStyle HorizontalAlign="Center" Width="190px" />
                                         </asp:BoundField>
                                         <asp:TemplateField>
                                             <ItemTemplate>
                                                 <asp:Button ID="btnreport1" runat="server" CommandArgument='<%# Eval("test_id") %>' CommandName="rep" Text="Report" Width="90px" />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                    
                       
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
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Hide Test Details" Width="430px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


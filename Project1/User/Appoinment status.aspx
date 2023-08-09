<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="Appoinment status.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 34px;
        }
        .auto-style5 {
            height: 23px;
            width: 43px;
        }
        .auto-style6 {
            height: 34px;
            width: 43px;
        }
        .auto-style7 {
            width: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnapprove" runat="server" OnClick="btnapprove_Click" Text="Approved Appointments" Width="220px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnpend" runat="server" Text="Pending Appointment Requests" Width="220px" OnClick="btnpend_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnhis" runat="server" OnClick="btnhis_Click" Text="Appointment History" Width="220px" />
            &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:MultiView ID="MultiView2" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="book_id" HeaderText="Book ID" >
                                            <HeaderStyle Height="35px" />
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="book_date" HeaderText="Book Date" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lab_name" HeaderText="Laboratory Name" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lab_email" HeaderText="Laboratory Email" >
                                            <ItemStyle ForeColor="Blue" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="address" HeaderText="Laboratory Address" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="book_status" HeaderText="Book Status" >
                                            <ItemStyle ForeColor="#339933" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="sample_status" HeaderText="Sample Collection Details" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btntest" runat="server" CommandArgument='<%# Eval("book_id") %>' CommandName="test" Height="30px" Text="Test Details" Width="120px" />
                                                    <asp:Button ID="btnpay" runat="server" CommandArgument='<%# Eval("book_id") %>' CommandName="pay" Height="30px" Text="Pay Now" Width="90px" />
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
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="book_id" HeaderText="Book ID" >
                                            <HeaderStyle Height="35px" HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="book_date" HeaderText="Book Date" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lab_name" HeaderText="Laboratory Name" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lab_email" HeaderText="Laboratory Email" >
                                            <ItemStyle ForeColor="#0066FF" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="address" HeaderText="Laboratory Address" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="book_status" HeaderText="Book Status" >
                                            <ItemStyle ForeColor="#0066CC" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Action">
                                                <ItemTemplate>
                                                    <asp:Button ID="btntest" runat="server" CommandArgument='<%# Eval("book_id") %>' CommandName="tst" Text="Test Details" Width="120px" Height="30px" />
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
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="test_name" HeaderText="Test Name" >
                                            <HeaderStyle Height="35px" />
                                            <ItemStyle HorizontalAlign="Center" Width="235px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="book_date" HeaderText="Booked Date" >
                                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="pref_date" HeaderText="Preffered Date" >
                                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="test_amount" HeaderText="Amount" >
                                            <ItemStyle HorizontalAlign="Center" Width="100px" />
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
                                    &nbsp;<br /> &nbsp;
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <br />
                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="test_name" HeaderText="Test Name" >
                                            <HeaderStyle Height="30px" />
                                            <ItemStyle HorizontalAlign="Center" Width="220px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="book_date" HeaderText="Booked Date" >
                                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="pref_date" HeaderText="Preffered Date" >
                                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="test_amount" HeaderText="Amount" >
                                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Action">
                                                <ItemTemplate>
                                                    <asp:Button ID="btncancel" runat="server" CommandArgument='<%# Eval("test_id") %>' CommandName="cancel" Text="Cancel" Width="125px" Height="30px" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="125px" />
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
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" OnRowCommand="GridView5_RowCommand" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="book_id" HeaderText="Book ID">
                                            <HeaderStyle Height="35px" />
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="pref_date" HeaderText="Preffered Date" >
                                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lab_name" HeaderText="Laboratory Name" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lab_email" HeaderText="Email" >
                                            <ItemStyle ForeColor="#0033CC" HorizontalAlign="Center" Width="150px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="address" HeaderText="Address" >
                                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lab_phone" HeaderText="Contact" >
                                            <ItemStyle HorizontalAlign="Center" Width="200px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="book_status" HeaderText="Booking Status" >
                                            <ItemStyle HorizontalAlign="Center" Width="220px" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Collection Details">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcollect" runat="server" Text='<%# Eval("sample_status") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="220px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Payment Details">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpay" runat="server" Text='<%# Eval("payment_status") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="190px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Test Details">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("book_id") %>' CommandName="test5" Text="Test Details" Height="30px" />
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
                                </asp:View>
                                <br />
                                <br />
                                <asp:View ID="View6" runat="server">
                                    <asp:GridView ID="GridView8" runat="server">
                                    </asp:GridView>
                                </asp:View>
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:MultiView>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


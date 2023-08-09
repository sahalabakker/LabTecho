<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="Enter Result1.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 104px;
            height: 23px;
            font-weight: bold;
        }
        .auto-style4 {
            height: 23px;
            font-weight: bold;
        }
        .auto-style5 {
            height: 23px;
            width: 309px;
            font-weight: bold;
        }
        .auto-style6 {
            width: 309px;
        }
        .auto-style7 {
            height: 23px;
            width: 91px;
            font-weight: bold;
        }
        .auto-style8 {
            width: 91px;
        }
        .auto-style9 {
            width: 91px;
            font-weight: bold;
        }
        .auto-style10 {
            width: 309px;
            font-weight: bold;
        }
        .auto-style11 {
            font-weight: bold;
            width: 104px;
        }
        .auto-style12 {
        }
        .auto-style13 {
            height: 23px;
            width: 87px;
            font-weight: bold;
        }
        .auto-style14 {
            width: 87px;
            font-weight: bold;
        }
        .auto-style15 {
            width: 87px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style3">Patient Name:</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style7">Gender:</td>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">Ref.Doctor:</td>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style9">Lab No.</td>
            <td>
                <b>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </b>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">Test Name:</td>
            <td class="auto-style10">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td><b></b></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style2" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" HorizontalAlign="Justify" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="particular_name" HeaderText="Tests" >
                        <HeaderStyle Height="35px" />
                        <ItemStyle HorizontalAlign="Center" Width="160px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Results">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='' Width="150px"></asp:TextBox>
                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("particular_id") %>' />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="unit" HeaderText="Units" >
                        <ItemStyle HorizontalAlign="Center" Width="90px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="normal_value" HeaderText="Normal Values" >
                        <ItemStyle HorizontalAlign="Center" Width="140px" />
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
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style12" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnext" runat="server" OnClick="btnnext_Click" Text="Next" Width="125px" Height="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


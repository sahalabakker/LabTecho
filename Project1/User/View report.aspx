<%@ Page Title="" Language="C#" MasterPageFile="~/User/Masterpage.master" AutoEventWireup="true" CodeFile="View report.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            color: #990000;
            font-weight: normal;
            font-size: medium;
            height: 26px;
        }
        .auto-style4 {
            width: 94px;
        }
        .auto-style5 {
            height: 26px;
            width: 94px;
        }
        .auto-style6 {
            width: 101px;
        }
        .auto-style7 {
            height: 26px;
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style7"></td>
            <td class="auto-style3"><strong>DOWNLOAD REPORT FROM HERE</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">Book Id:</td>
            <td>
                <asp:TextBox ID="txtbid" runat="server" Width="220px" AutoPostBack="True" OnTextChanged="txtbid_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">Test:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddltest" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddltest_SelectedIndexChanged" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" Width="90px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="first_name" HeaderText="Patient Name" />
                        <asp:BoundField HeaderText="Age" />
                        <asp:BoundField DataField="book_id" HeaderText="Book ID" />
                        <asp:BoundField DataField="book_date" HeaderText="Booked Date" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("results") %>' CommandName="dwnl" Text='<%# Eval("results") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


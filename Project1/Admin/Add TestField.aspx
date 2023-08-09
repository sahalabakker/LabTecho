<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Add TestField.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            height: 26px;
            width: 181px;
            font-weight: bold;
        }
        .auto-style5 {
            width: 181px;
            font-weight: bold;
        }
        .auto-style6 {
            width: 181px;
            height: 21px;
        }
        .auto-style7 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="tab">--%>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Test Name:</td>
            <td>
                <asp:DropDownList ID="ddltestname" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Test Field Name:</td>
            <td>
                <asp:TextBox ID="txttstfield" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Max Value:</td>
            <td>
                <asp:TextBox ID="txtmax" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Min Value:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtmin" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Width="90px" />
                <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" Width="90px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="test_name" HeaderText="Test Name" />
                        <asp:BoundField DataField="testfield_name" HeaderText="Test Fields" />
                        <asp:BoundField DataField="max_value" HeaderText="Max Value" />
                        <asp:BoundField DataField="min_value" HeaderText="Min Value" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btnedit" runat="server" CommandArgument='<%# Eval("tstfield_id") %>' CommandName="ed" Text="EDIT" Width="90px" />
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("tstfield_id") %>' CommandName="del" Text="DELETE" Width="90px" />
                            </ItemTemplate>
                            <HeaderStyle Height="30px" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <%--</div>--%>
</asp:Content>


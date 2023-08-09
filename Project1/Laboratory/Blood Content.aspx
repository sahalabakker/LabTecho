<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Blood Content.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Select Test:</td>
            <td>
                <asp:DropDownList ID="ddltest" runat="server" Width="220px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Particular:</td>
            <td>
                <asp:TextBox ID="txtparticular" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Normal Value:</td>
            <td>
                <asp:TextBox ID="txtnormal" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Unit:</td>
            <td>
                <asp:TextBox ID="txtunit" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Width="90px" />
                <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" Width="90px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="test_name" HeaderText="Test Name" />
                        <asp:BoundField DataField="particular_name" HeaderText="Particular Name" />
                        <asp:BoundField DataField="normal_value" HeaderText="Normal Value" />
                        <asp:BoundField DataField="unit" HeaderText="Units" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnedit" runat="server" CommandArgument='<%# Eval("particular_id") %>' CommandName="ed" Text="EDIT" Width="90px" />
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("particular_id") %>' CommandName="del" Text="DELETE" Width="90px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
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


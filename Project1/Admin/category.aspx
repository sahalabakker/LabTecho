<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="Admin_Default" %>

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
            <td>Category</td>
            <td>
                <asp:TextBox ID="txtcategory" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Width="90px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" OnClick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="grdcategory" runat="server" AutoGenerateColumns="False" OnRowCommand="grdcategory_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="category_name" HeaderText="category" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("category_id") %>' CommandName="del" Text="DELETE" Width="90px" />
                                <asp:Button ID="btnupdate" runat="server" CommandArgument='<%# Eval("category_id") %>' CommandName="ed" Text="EDIT" Width="90px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


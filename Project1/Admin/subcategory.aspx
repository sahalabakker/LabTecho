<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="subcategory.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 137px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Category</td>
            <td>
                <asp:DropDownList ID="ddlcategory" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">SubCategory</td>
            <td class="auto-style3">
                <asp:TextBox ID="Txtsubcategory" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" Width="90px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" OnClick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:GridView ID="grdsubcategory" runat="server" AutoGenerateColumns="False" OnRowCommand="grdsubcategory_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="category_name" HeaderText="category" />
                        <asp:BoundField DataField="subcategory_name" HeaderText="subcategory" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("subcategory_id") %>' CommandName="del" Text="DELETE" Width="90px" />
                                <asp:Button ID="btnedit" runat="server" CommandArgument='<%# Eval("subcategory_id") %>' CommandName="ed" Text="EDIT" Width="90px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


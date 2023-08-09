<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="district.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 52px;
        }
        .auto-style4 {
            height: 26px;
            width: 176px;
        }
        .auto-style5 {
            height: 52px;
            width: 176px;
        }
        .auto-style6 {
            width: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"><strong>District Name:</strong></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcategory" runat="server" Width="323px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">
                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" Width="137px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:GridView ID="grddistrict" runat="server" AutoGenerateColumns="False" OnRowCommand="grddetails_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="district_name" HeaderText="District" >
                        <HeaderStyle Height="30px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("district_id") %>' CommandName="del" Text="DELETE" Width="90px" />
                                <asp:Button ID="btnedit" runat="server" CommandArgument='<%# Eval("district_id") %>' CommandName="ed" Text="EDIT" Width="90px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


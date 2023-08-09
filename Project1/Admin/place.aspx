<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="place.aspx.cs" Inherits="Admin_Default" %>

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
            <td><b>District:</b></td>
            <td>
                <asp:DropDownList ID="ddldistrict" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><b>Place:</b></td>
            <td>
                <asp:TextBox ID="txtplace" runat="server" Width="220px"></asp:TextBox>
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
                <asp:GridView ID="grdplace" runat="server" AutoGenerateColumns="False" OnRowCommand="grdplace_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="district_name" HeaderText="district" >
                        <HeaderStyle Height="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="place_name" HeaderText="place" />
                        <asp:TemplateField HeaderText="action">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" CommandName="del" Text="DELETE" Width="90px" CommandArgument='<%# Eval("place_id") %>' />
                                <asp:Button ID="btnedit" runat="server" CommandName="ed" Text="EDIT" Width="90px" CommandArgument='<%# Eval("place_id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


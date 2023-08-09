﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Complainttype.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 192px;
        }
        .auto-style4 {
            height: 23px;
            width: 192px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td><strong>ADD COMPLAINTS</strong></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Complaint Type:</strong></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcmplntname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Width="90px" />
                <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" Width="90px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="complainttype_name" HeaderText="Complaint Type" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btnedit" runat="server" CommandArgument='<%# Eval("complainttype_id") %>' CommandName="ed" Text="EDIT" Width="90px" />
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("complainttype_id") %>' CommandName="del" Text="DELETE" Width="90px" />
                            </ItemTemplate>
                            <HeaderStyle Height="30px" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


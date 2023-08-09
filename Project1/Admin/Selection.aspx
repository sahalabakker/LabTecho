<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Selection.aspx.cs" Inherits="Admin_Default" %>

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
            <td>&nbsp;</td>
            <td>SELECTION</td>
        </tr>
        <tr>
            <td>Team</td>
            <td>
                <asp:DropDownList ID="ddlteam" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Player</td>
            <td>
                <asp:CheckBoxList ID="cblplayer" runat="server" Width="220px">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Width="90px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="grdselection" runat="server" AutoGenerateColumns="False" OnRowCommand="grdselection_RowCommand" OnSelectedIndexChanged="grdselection_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="team_id" HeaderText="Team" />
                        <asp:BoundField DataField="team_flag" HeaderText="Team Flag" />
                        <asp:BoundField DataField="team_owner" HeaderText="Team Owner" />
                        <asp:BoundField DataField="player_name" HeaderText="player_id" />
                        <asp:BoundField DataField="player_dob" HeaderText="player DOB" />
                        <asp:BoundField DataField="player_photo" HeaderText="player photo" />
                        <asp:BoundField DataField="team_name" HeaderText="Team Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" Text="Delete" Width="90px" CommandArgument='<%# Eval("selection_id") %>' CommandName="del" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:Button ID="btnsave" runat="server" Text="Save" />
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


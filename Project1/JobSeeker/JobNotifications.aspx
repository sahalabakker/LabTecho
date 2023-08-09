<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="JobNotifications.aspx.cs" Inherits="JobSeeker_Default" %>

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
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Vaccencies Match With Your Profile&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand1">
                    <Columns>
                        <asp:BoundField DataField="job_name" HeaderText="Job Name" />
                        <asp:BoundField DataField="job_nvaccency" HeaderText="No.Of Vaccency" />
                        <asp:BoundField DataField="job_criteria" HeaderText="Criterias" />
                        <asp:BoundField DataField="job_ldate" HeaderText="Application start" />
                        <asp:BoundField DataField="job_sdate" HeaderText="Application ends at" />
                        <asp:BoundField DataField="lab_name" HeaderText="Laboratory Name" />
                        <asp:BoundField DataField="lab_email" HeaderText="Lab Email" />
                        <asp:BoundField DataField="lab_phone" HeaderText="Lab Contact Nomber" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnapply" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="app" Text="APPLY" Width="90px" OnClick="btnapply_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="JobSeeker_Default" %>

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
            <td>ABOUT VACANCY</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="job_name" HeaderText="Job Name" />
                        <asp:BoundField DataField="job_nvaccency" HeaderText="Nomber Of Vaccency" />
                        <asp:BoundField DataField="jobseeker_id" HeaderText="Job Type" />
                        <asp:BoundField DataField="job_criteria" HeaderText="Criterias To Apply" />
                        <asp:BoundField DataField="job_sdate" HeaderText="Application Starts At" />
                        <asp:BoundField DataField="job_ldate" HeaderText="Application Ends At" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnapply" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="applynow" Text="Apply Now" Width="120px" OnClick="btnapply_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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


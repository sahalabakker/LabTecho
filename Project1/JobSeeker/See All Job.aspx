<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="See All Job.aspx.cs" Inherits="JobSeeker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 134px;
        }
        .auto-style3 {
            width: 587px;
        }
        .auto-style4 {
        width: 12px;
    }
        .auto-style5 {
            height: 23px;
        }
        .auto-style14 {
            color: #990000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="7">&nbsp;</td>
            <td class="auto-style3" rowspan="7">
                <asp:DataList ID="DataList1" runat="server" BorderStyle="Solid" BorderWidth="5px" DataKeyField="job_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="967px" HorizontalAlign="Center" style="margin-right: 75px" Width="468px" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("job_name") %>' ForeColor="#333300" Height="30px" style="font-weight: 700; text-decoration: underline; font-size: large; color: #800000;"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("lab_id") %>' Height="25px"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label18" runat="server" Height="25px" style="margin-left: 1px" Text='<%# Eval("job_discrip") %>' Width="353px"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("job_salary") %>'></asp:Label>
                        &nbsp;a month<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("job_nvaccency") %>'></asp:Label>
                        &nbsp;new vaccency</strong><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="vm" Text="View More" Width="370px" Height="32px" style="margin-top: 0px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style4" rowspan="7">&nbsp;</td>
            <td class="auto-style5">
                <asp:Panel ID="Panel2" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14">VIEW MORE DETAILS</span><br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" style="font-weight: 700; color: #990000;" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Height="30px" Text="Label"></asp:Label>
                    ,<asp:Label ID="Label13" runat="server" Height="30px" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; <strong>Job Details<br /> &nbsp;&nbsp;&nbsp;&nbsp; </strong>Salary<br /> &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Text="Label" Height="30px"></asp:Label>
                    &nbsp;a month<br /> &nbsp;&nbsp;&nbsp;&nbsp; <strong>Job Type</strong><br /> &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Text="Label" Height="30px"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; <strong>Qualification</strong><br /> &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label16" runat="server" Text="Label" Height="30px"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<strong> Experience</strong><br /> &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Label" Height="30px"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp; Application Deadline:
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp; Expected Start Date:<asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp; Schedule:<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnapply" runat="server" Height="36px" Text="Apply Now" Width="220px" OnClick="btnapply_Click" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsave" runat="server" Height="37px" Text="Save This Job" Width="220px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_mainprojectConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_jobvaccency]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_mainprojectConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_jobtype]"></asp:SqlDataSource>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


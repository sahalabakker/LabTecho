<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" Inherits="JobSeeker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style14 {
            color: #800000;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style16 {
            width: 12px;
        }
        .auto-style17 {
            width: 71px;
        }
        .auto-style18 {
            width: 400px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="auto-style1">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style14"><strong> <span class="auto-style15">NEW JOB VACANCIES MATCH WITH YOUR PROFILE&nbsp;</span></strong></span></td>
        </tr>
        <tr>
            <%--<td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>--%>
        </tr>
        <tr>
            <td class="auto-style17" rowspan="2"></td>
            <td class="auto-style13" rowspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="job_name" HeaderText="Job Name" >
                        <HeaderStyle HorizontalAlign="Center" Height="35px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="lab_name" HeaderText="Laboratory " >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="Address" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="job_nvaccency" HeaderText="No.Of Vacancies" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="vm" Text="View Details" Width="110px" Height="33px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
            <td class="auto-style16" rowspan="2"></td>
            <td class="auto-style18">
                <asp:Panel ID="Panel2" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14">VIEW MORE DETAILS</span><br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
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
                    <asp:Button ID="btnseeall" runat="server" Height="30px" Text="See All Job" Width="220px" OnClick="btnseeall_Click" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
    </table>
        
</asp:Content>


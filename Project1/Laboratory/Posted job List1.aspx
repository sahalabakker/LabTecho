<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="Posted job List1.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 88%;
    }
    .auto-style2 {
        width: 72px;
    }
    .auto-style4 {
        width: 342px;
    }
    .auto-style5 {
        width: 413px;
    }
        .auto-style6 {
            height: 2px;
        }
        .auto-style7 {
            width: 53px;
        }
        .auto-style8 {
            width: 342px;
            height: 23px;
        }
        .auto-style9 {
            width: 342px;
            height: 276px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            font-size: large;
            color: #666666;
        }
        .auto-style12 {
            color: #666666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">&nbsp;&nbsp;</span><strong><span class="auto-style11">POSTED JOB LIST</span></strong></td>
    </tr>
    <tr>
        <td colspan="4" class="auto-style6"></td>
    </tr>
    <tr>
        <td colspan="4" class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" rowspan="17">&nbsp;</td>
        <td class="auto-style5" rowspan="17">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="job_id" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand" BorderColor="#006666" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="50"  style="margin-right: 0px">
                <AlternatingItemStyle BorderStyle="Groove" />
                <FooterStyle BorderWidth="3px" />
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("job_name") %>' ForeColor="#333300" Height="30px" style="font-weight: 700; text-decoration: underline; font-size: large; color: #666666;"></asp:Label>
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
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("job_nvaccency") %>' style="color: #006666"></asp:Label>
                    &nbsp;new vaccency</strong><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="vm" Text="View More" Width="370px" Height="32px" style="margin-top: 0px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="up" Text="Update" Width="124px" Height="28px" style="margin-top: 0px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" CommandName="del" Height="27px" style="margin-top: 6px" Text="Delete" Width="124px" CommandArgument='<%# Eval("job_id") %>' OnClick="Button4_Click" />
                </ItemTemplate>
                <SeparatorStyle BorderWidth="15px" />
            </asp:DataList>
        </td>
        <td class="auto-style7" rowspan="17">
            &nbsp;</td>
        <td class="auto-style9">
            <asp:Panel ID="Panel1" runat="server" Height="308px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style12">VIEW MORE DETAILS</span><br /> 
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="Label" Height="30px"></asp:Label>
                ,<asp:Label ID="Label13" runat="server" Text="Label" Height="30px"></asp:Label>
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
                &nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_mainprojectConnectionString2 %>" SelectCommand="SELECT * FROM [tbl_jobvaccency] WHERE ([lab_id] = @lab_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="lab_id" SessionField="lid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">&nbsp;</td>
    </tr>
</table>
</asp:Content>


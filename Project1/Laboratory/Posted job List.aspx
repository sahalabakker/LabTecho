<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="Posted job List.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 163%;
        }
        .auto-style3 {
            width: 56px;
        }
        .auto-style4 {
            width: 24px;
            margin-left: 24px;
        }
        .auto-style6 {
            margin-right:700px;
        }
        .auto-style7 {
            width: 140px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style8 {
            width: 20px;
            margin-left: 24px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;    <table class="auto-style1">
        
        <tr>
            <td class="auto-style8" rowspan="20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style7" rowspan="20">
                <asp:DataList ID="DataList2" runat="server" DataKeyField="job_id" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="margin-right: 2500px" margin-left="0px" Width="500px" OnItemCommand="DataList2_ItemCommand">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("job_name") %>' style="color: #666666"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("lab_id") %>'></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        ,<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("job_salary") %>'></asp:Label>
                        &nbsp;a month<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("job_discrip") %>'></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("job_nvaccency") %>' style="color: #006666"></asp:Label>
                        &nbsp; new vaccencies<br /> &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="vm" Text="View more" Width="360px" />
                        <br />
                        <br />
                        &nbsp;<asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("job_id") %>' CommandName="up" Text="Update" Width="170px" />
                        &nbsp;<asp:Button ID="Button3" runat="server" CommandName="del" Text='Delete' Width="170px" CommandArgument='<%# Eval("job_id") %>' />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            &nbsp;&nbsp;
            </td>
            <td class="auto-style3">
                <asp:Panel ID="Panel4" runat="server" style="margin-left: 0px">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">&nbsp;MORE DETAILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <asp:Button ID="Button1" runat="server" Text="Back" Width="99px" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 700; font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong><span class="auto-style3"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </span></strong></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                &nbsp;,<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style3">&nbsp;Job Details</span></strong></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style3">salary</span></strong>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                &nbsp; a month</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Job Type</strong>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Number of hires for this role:&nbsp;</strong></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">-----------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style3">Full Job Description&nbsp;</span></strong></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Qualification&nbsp;</strong></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </asp:Panel>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2" >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-IO6V38C\MSSQL2014;Initial Catalog=db_mainproject;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbl_jobvaccency] WHERE ([lab_id] = @lab_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="lab_id" SessionField="lid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="Download Resume.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style6 {
            width: 141px;
        }
        .auto-style7 {
            color: #006666;
        }
        .auto-style8 {
            width: 253px;
        }
        .auto-style9 {
            width: 173px;
        }
        .auto-style10 {
            width: 444px;
        }
        .auto-style11 {
            color: #666666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong style="font-size: x-large"> <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <span class="auto-style11">DOWNLOAD RESUME&nbsp;</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">
                <asp:DataList ID="DataList1" runat="server" BorderWidth="3px" DataKeyField="appl_id" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="margin-right: 138px; margin-left: 63px;" Width="416px" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large; color: #006666;" Text='<%# Eval("job_name") %>'></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text='<%# Eval("js_fname") %>'></asp:Label>
                        </strong>&nbsp;<strong><asp:Label ID="Label3" runat="server" Text='<%# Eval("js_lname") %>'></asp:Label>
                        </strong>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qualification:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("appl_qualification") %>'></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Experience:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("appl_experience") %>'></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resume:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("resume") %>' style="color: #0033CC"></asp:HyperLink>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("appl_id") %>' CommandName="dwnl" Text="Download Resume" Width="323px" Height="33px" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">
                <asp:Panel ID="Panel1" runat="server" Width="899px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style11"><strong>MORE ABOUT</strong></span><br />
                    <br />
                    <asp:Label ID="Label6" runat="server" style="font-weight: 700; font-size: large" Text="Label"></asp:Label>
                    <br />
                    <strong>Candidate Details:<br /> </strong>&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    &nbsp;<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    ,<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    &nbsp;<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;<asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;<strong>DOB</strong><br /> &nbsp;<asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <strong>Qualification<br /> </strong>&nbsp;<asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
&nbsp;<strong>Experience</strong><br /> &nbsp;<asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    &nbsp;year of experience<br />&nbsp;&nbsp;
                    <br />
                    <strong>Preffered Job Type:</strong>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    <br />
                    <strong>Preffered Schedule:</strong>
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Resume:">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("resume") %>' CommandName="dwnl" Text='<%# Eval("resume") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Font-Bold="True" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_mainprojectConnectionString5 %>" SelectCommand="SELECT a.appl_id, a.appl_qualification, a.appl_experience, a.resume, a.status, a.jobseekerj_id, a.job_id, a.lab_id, jv.job_id AS Expr1, jv.jobseeker_id, jv.lab_id AS Expr2, jv.job_name, jv.job_nvaccency, jv.job_discrip, jv.job_ldate, jv.job_sdate, jv.job_status, jv.job_salary, jv.job_type, jv.qualification AS Expr3, jv.experience AS Expr4, jv.schedule, jv.jobtype_name, js.jobseekerj_id AS Expr5, js.jobseeker_id AS Expr6, js.usertype_id, js.js_fname, js.js_lname, js.js_email, js.js_password, js.js_dob, js.js_gender, js.js_qualif, js.place_id, js.js_status, js.js_phone, js.js_address, js.js_exp, js.js_photo, js.js_cv FROM tbl_application AS a INNER JOIN tbl_jobvaccency AS jv ON jv.job_id = a.job_id INNER JOIN tbl_jsregistration AS js ON js.jobseekerj_id = a.jobseekerj_id WHERE (a.lab_id = @lid) AND (a.dwnl_status = '0')">
                    <SelectParameters>
                        <asp:SessionParameter Name="lid" SessionField="lid" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


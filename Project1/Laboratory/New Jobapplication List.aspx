<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="New Jobapplication List.aspx.cs" Inherits="Laboratory_Default" %>

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
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NEW JOB APPLICATION LIST&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="jobtype" HeaderText="Job Type" />
                        <asp:BoundField DataField="js_fname" HeaderText="Jobseeker Name" />
                        <asp:BoundField DataField="js_email" HeaderText="Jobseeker Email" />
                        <asp:BoundField DataField="js_phone" HeaderText="Contact Number" />
                        <asp:BoundField DataField="js_address" HeaderText="Address" />
                        <asp:BoundField DataField="js_exp" HeaderText="Experience" />
                        <asp:BoundField DataField="js_qualif" HeaderText="Qualification" />
                        <asp:BoundField DataField="applied_date" HeaderText="Applied Date" />
                        <asp:BoundField DataField="district_name" HeaderText="District" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                        <asp:TemplateField HeaderText="Profile Photo">
                            <ItemTemplate>
                                <img src="../User/photo/<%#Eval("js_photo")%>" width="120" height="120" />"
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="js_cv" HeaderText="CV" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnaccept" runat="server" CommandArgument='<%# Eval("appl_id") %>' CommandName="acce" Text="ACCEPT" Width="90px" />
                                <asp:Button ID="btnreject" runat="server" CommandArgument='<%# Eval("appl_id") %>' CommandName="rej" Text="REJECT" Width="90px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


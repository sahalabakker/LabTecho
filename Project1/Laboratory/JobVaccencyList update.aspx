<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="JobVaccencyList.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            color: #666666;
        }
        .auto-style6 {
            width: 192px;
        }
        .auto-style7 {
            height: 26px;
            width: 192px;
        }
        .auto-style8 {
            height: 23px;
            width: 192px;
        }
        .auto-style9 {
            height: 24px;
            width: 192px;
        }
        .auto-style10 {
            width: 96px;
        }
        .auto-style11 {
            height: 26px;
            width: 96px;
        }
        .auto-style12 {
            height: 23px;
            width: 96px;
        }
        .auto-style13 {
            height: 24px;
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5"><strong>JOB VACCENCY LIST</strong></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">Select Job Type:</td>
            <td>
                <asp:DropDownList ID="ddljtype" runat="server" Width="220px" OnSelectedIndexChanged="ddljtype_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style7">Job Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtjname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">No.Of Vaccency:</td>
            <td>
                <asp:TextBox ID="txtnvacc" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">Expected Salary:</td>
            <td>
                <asp:TextBox ID="txtsal" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">Discription:</td>
            <td>
                <asp:TextBox ID="txtdiscrip" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">Job Type:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">Qualification:</td>
            <td>
                <asp:TextBox ID="txtqualif" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">Experience:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtexp" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">Application Deadline:</td>
            <td>
                <asp:TextBox ID="txtdead" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style9">Expected Start Date:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtsdate" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style9">Schedule:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Update" Width="90px" OnClick="btnsubmit_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" OnClick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


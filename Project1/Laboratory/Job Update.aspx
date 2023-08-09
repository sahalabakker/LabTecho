<%@ Page Title="" Language="C#" MasterPageFile="~/Laboratory/Laboratory Master.master" AutoEventWireup="true" CodeFile="Job Update.aspx.cs" Inherits="Laboratory_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 203px;
        }
        .auto-style6 {
            height: 26px;
            width: 203px;
        }
        .auto-style7 {
            height: 23px;
            width: 203px;
        }
        .auto-style8 {
            height: 24px;
            width: 203px;
        }
        .auto-style9 {
            width: 203px;
            height: 21px;
        }
        .auto-style10 {
            height: 21px;
            color: #666666;
        }
        .auto-style11 {
            width: 203px;
            height: 46px;
        }
        .auto-style12 {
            height: 46px;
        }
        .auto-style13 {
            width: 84px;
            height: 21px;
        }
        .auto-style14 {
            width: 84px;
        }
        .auto-style15 {
            height: 26px;
            width: 84px;
        }
        .auto-style16 {
            width: 84px;
            height: 46px;
        }
        .auto-style17 {
            height: 23px;
            width: 84px;
        }
        .auto-style18 {
            height: 24px;
            width: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style9"></td>
            <td class="auto-style10"><strong>JOB VACCENCY LIST</strong></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">Select Job Type:</td>
            <td>
                <asp:DropDownList ID="ddljtype" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style6">Job Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtjname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11">No.Of Vaccency:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtnvacc" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">Expected Salary:</td>
            <td>
                <asp:TextBox ID="txtsal" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">Discription:</td>
            <td>
                <asp:TextBox ID="txtdiscrip" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">Job Type:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">Qualification:</td>
            <td>
                <asp:TextBox ID="txtqualif" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style7">Experience:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtexp" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">Application Deadline:</td>
            <td>
                <asp:TextBox ID="txtdead" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style8">Expected Start Date:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtsdate" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style8">Schedule:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Update" Width="90px" OnClick="btnsubmit_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


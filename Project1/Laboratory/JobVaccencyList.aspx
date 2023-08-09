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
            color: #006666;
        }
        .auto-style5 {
            width: 198px;
        }
        .auto-style6 {
            height: 26px;
            width: 198px;
            font-weight: bold;
        }
        .auto-style7 {
            height: 23px;
            width: 198px;
        }
        .auto-style8 {
            width: 198px;
            font-weight: bold;
        }
        .auto-style9 {
            width: 101px;
        }
        .auto-style10 {
            width: 101px;
            font-weight: bold;
        }
        .auto-style11 {
            height: 26px;
            width: 101px;
            font-weight: bold;
        }
        .auto-style12 {
            height: 23px;
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4"><strong>JOB VACCENCY LIST</strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style8">Select Job Type:</td>
            <td>
                <asp:DropDownList ID="ddljtype" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style6">Job Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtjname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style8">No.Of Vaccency:</td>
            <td>
                <asp:TextBox ID="txtnvacc" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style8">Expected Salary:</td>
            <td>
                <asp:TextBox ID="txtsal" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style8">Discription:</td>
            <td>
                <asp:TextBox ID="txtdiscrip" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Next" Width="90px" OnClick="btnsubmit_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" OnClick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style7"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


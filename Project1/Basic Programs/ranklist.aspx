<%@ Page Title="" Language="C#" MasterPageFile="~/Basic Programs/BasicMaster.master" AutoEventWireup="true" CodeFile="ranklist.aspx.cs" Inherits="Basic_Programs_Default" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">First Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtfname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="txtlname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <asp:RadioButton ID="rdfemale" runat="server" Text="female" />
                <asp:RadioButton ID="rdmale" runat="server" Text="male" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Department</td>
            <td class="auto-style3">
                <asp:DropDownList ID="dp1" runat="server" Width="225px" OnSelectedIndexChanged="dp1_SelectedIndexChanged">
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>CS</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Marks</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">mark1</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtmrk1" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>mark2</td>
            <td>
                <asp:TextBox ID="txtmrk2" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">mark3</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtmrk3" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="90px" OnClick="btnsubmit_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="90px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Your Result Is:</td>
        </tr>
        <tr>
            <td class="auto-style3">Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtname" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>
                <asp:TextBox ID="txtgender" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Department:</td>
            <td>
                <asp:TextBox ID="txtdept" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Total Marks:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txttotal" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Percentage:</td>
            <td>
                <asp:TextBox ID="txtper" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Grade:</td>
            <td>
                <asp:TextBox ID="txtgrade" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>


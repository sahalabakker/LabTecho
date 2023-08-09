<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker Master.master" AutoEventWireup="true" CodeFile="Application Page.aspx.cs" Inherits="JobSeeker_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 142px;
        }
        .auto-style3 {
            width: 282px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
        }
        .auto-style6 {
            width: 137px;
            height: 23px;
        }
        .auto-style7 {
            color: #006666;
        }
        .auto-style9 {
            height: 26px;
            width: 137px;
        }
        .auto-style10 {
            width: 142px;
            height: 26px;
        }
        .auto-style11 {
            width: 282px;
            height: 26px;
        }
        .auto-style12 {
            width: 142px;
            height: 23px;
        }
        .auto-style13 {
            width: 200px;
        }
        .auto-style14 {
            width: 200px;
            height: 23px;
        }
        .auto-style15 {
            width: 200px;
            height: 26px;
        }
        .auto-style16 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="tab">--%>
    <table class="auto-style1">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style7"><strong>&nbsp;FILL OUT APPLICATION&nbsp;</strong></span></td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">First Name :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtfname" runat="server" style="margin-left: 0px" Width="320px" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">Last Name :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtlname" runat="server" Width="320px" Height="23px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">Email :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtemail" runat="server" Width="320px" Height="26px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">Contact Nomber :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcont" runat="server" Width="320px" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">Address :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="320px" Height="51px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">DOB :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtdob" runat="server" TextMode="Date" Width="320px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">Preffered Job Type :</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddljbtype" runat="server" AutoPostBack="True" Width="320px" Height="27px">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">Qualification :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtqual" runat="server" Width="320px" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style12">Year of Experience :</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtexp" runat="server" Width="320px" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">Preffered Shedule :</td>
            <td class="auto-style14">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="320px" Height="31px">
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">District :</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddldistrict" runat="server" AutoPostBack="True" Width="320px" Height="27px" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">Place :</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddlplace" runat="server" AutoPostBack="True" Width="320px" Height="27px">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">Upload Resume :</td>
            <td class="auto-style15">
                <asp:FileUpload ID="filecv" runat="server" Height="30px" Width="320px" />
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="filecv" ErrorMessage="Attatch your resume!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="btnsubmit" runat="server" Height="36px" Text="Apply" Width="150px" OnClick="btnsubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <%--</div>--%>
</asp:Content>


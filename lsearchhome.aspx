<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="lsearchhome.aspx.cs" Inherits="searchhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msg" runat="server"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td colspan="3" align="center">
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="195px" Width="438px" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 377px">
                    &nbsp;</td>
                <td style="width: 159px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 377px; height: 22px">
                    &nbsp;</td>
                <td style="width: 159px; height: 22px">
                    Movie Name :</td>
                <td style="height: 22px">
                    <asp:Label ID="moviename" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 377px; height: 22px">
                    &nbsp;</td>
                <td style="width: 159px; height: 22px">
                    Released Date :</td>
                <td style="height: 22px">
                    <asp:Label ID="releasedate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 377px; height: 22px">
                    &nbsp;</td>
                <td style="width: 159px; height: 22px">
                    Short Desc :</td>
                <td style="height: 22px">
                    <asp:Label ID="shortdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 377px; height: 22px">
                    &nbsp;</td>
                <td style="width: 159px; height: 22px">
                    Short story of Movie :</td>
                <td style="height: 22px">
                    <asp:Label ID="longdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 22px" colspan="2">
                    &nbsp;</td>
                <td style="height: 22px">
                    <asp:Button ID="Button2" runat="server" Height="24px" Text="Click here to book ticket" 
                    Width="147px" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
    </p>
<p>
    <table style="width:100%;">
        <tr>
            <td style="height: 22px">
                <asp:DataList ID="DataList1" runat="server">
                </asp:DataList>
            </td>
        </tr>
    </table>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>


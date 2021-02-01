<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="searchhome.aspx.cs" Inherits="searchhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msg" runat="server"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td colspan="3" align="center">
                    <br />
                    &nbsp;<asp:Image ID="Image1" runat="server" Height="184px" Width="429px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 368px">
                    &nbsp;</td>
                <td style="width: 172px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 368px; height: 22px">
                    &nbsp;</td>
                <td style="width: 172px; height: 22px">
                    Movie Name :</td>
                <td style="height: 22px">
                    <asp:Label ID="moviename" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 368px; height: 22px">
                    &nbsp;</td>
                <td style="width: 172px; height: 22px">
                    Released Date :</td>
                <td style="height: 22px">
                    <asp:Label ID="releasedate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 368px; height: 22px">
                    &nbsp;</td>
                <td style="width: 172px; height: 22px">
                    Rating&#39;s :</td>
                <td style="height: 22px">
                    <asp:Label ID="shortdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 368px; height: 22px">
                    &nbsp;</td>
                <td style="width: 172px; height: 22px">
                    Short story of Movie :</td>
                <td style="height: 22px">
                    <asp:Label ID="longdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 368px; height: 22px">
                    &nbsp;</td>
                <td style="width: 172px; height: 22px">
                    &nbsp;</td>
                <td style="height: 22px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 368px; height: 22px">
                    &nbsp;</td>
                <td style="width: 172px; height: 22px">
                    &nbsp;</td>
                <td style="height: 22px">
                    <asp:Button ID="Button2" runat="server" Height="22px" Text="Book Ticket" 
                    Width="132px" onclick="Button2_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
    </p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>


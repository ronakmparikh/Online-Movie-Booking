<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="lHollywood_detail.aspx.cs" Inherits="Newreleased_detai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<table style="width:100%;">
    <tr>
        <td colspan="3" style="height: 22px" align="center">
                    &nbsp;<asp:Image ID="Image1" runat="server" Height="296px" Width="594px" />
        </td>
    </tr>
    <tr>
        <td style="width: 206px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 206px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Movie Name :</td>
        <td style="height: 22px">
            <asp:Label ID="lblmoviename" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 206px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 206px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Release Date :</td>
        <td style="height: 22px">
            <asp:Label ID="lblreleasedate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 206px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 206px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Short Desc :</td>
        <td style="height: 22px">
            <asp:Label ID="lblshortdesc" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 206px" align="justify">
                    &nbsp;</td>
        <td style="width: 206px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Long Desc :</td>
        <td>
            <asp:Label ID="lbllongdesc" runat="server"   ></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 206px" align="justify">
                    &nbsp;</td>
        <td style="width: 206px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Timing :&nbsp;</td>
        <td>
            <asp:Label ID="timing" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 206px" align="justify">
                    &nbsp;</td>
        <td style="width: 206px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Screen Name :&nbsp;</td>
        <td>
            <asp:Label ID="screenname" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 206px" align="justify">
                    &nbsp;</td>
        <td style="width: 206px" align="justify">
                    &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" Height="23px" Text="Book Ticket's" 
                onclick="Button2_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
        </td>
    </tr>
</table>
<p>
    &nbsp;</p>
<p>
</p>
</asp:Content>


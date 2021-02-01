<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Bollywood_detail.aspx.cs" Inherits="Newreleased_detai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<table style="width:100%;">
    <tr>
        <td colspan="3" style="height: 22px" align="center">
                    &nbsp;<asp:Image ID="Image1" runat="server" Height="269px" Width="543px" />
        </td>
    </tr>
    <tr>
        <td style="width: 363px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 231px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Movie Name :</td>
        <td style="height: 22px">
            <asp:Label ID="lblmoviename" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 363px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 231px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Release Date :</td>
        <td style="height: 22px">
            <asp:Label ID="lblreleasedate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 363px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 231px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Short Desc :</td>
        <td style="height: 22px">
            <asp:Label ID="lblshortdesc" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 363px" align="justify" class="col_w300">
                    &nbsp;</td>
        <td style="width: 231px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Long Desc :</td>
        <td>
            <asp:Label ID="lbllongdesc" runat="server"   ></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="justify" class="col_w300" style="width: 363px">
                    &nbsp;</td>
        <td align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Timing :&nbsp;</td>
        <td>
            <asp:Label ID="timing" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="justify" class="col_w300" style="width: 363px">
                    &nbsp;</td>
        <td align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Screen Name :&nbsp;</td>
        <td>
            <asp:Label ID="screenname" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="justify" colspan="2">
                    &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" Height="23px" onclick="Button2_Click" 
                Text="Book Ticket's" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
        </td>
    </tr>
</table>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>


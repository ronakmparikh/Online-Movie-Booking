<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Upcoming_details.aspx.cs" Inherits="Upcoming_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
   
<table style="width:100%;">
    <tr>
        <td colspan="3" style="height: 22px" align="center">
                    &nbsp;<asp:Image ID="Image1" runat="server" Height="257px" Width="479px" />
        </td>
    </tr>
    <tr>
        <td style="width: 287px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 170px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Movie Name :</td>
        <td style="height: 22px">
            <asp:Label ID="lblmoviename" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 170px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Release Date :</td>
        <td style="height: 22px">
            <asp:Label ID="lblreleasedate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; height: 22px" align="justify">
                    &nbsp;</td>
        <td style="width: 170px; height: 22px" align="justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Short Desc :</td>
        <td style="height: 22px">
            <asp:Label ID="lblshortdesc" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 287px" align="justify" class="col_w300">
                    &nbsp;</td>
        <td style="width: 170px" align="justify" class="col_w300">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Long Desc :</td>
        <td>
            <asp:Label ID="lbllongdesc" runat="server"   ></asp:Label>
        </td>
    </tr>
</table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>


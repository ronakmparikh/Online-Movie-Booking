<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Seeticket.aspx.cs" Inherits="Seeticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<br />
<br />
<br />
    
        <asp:DataList ID="DataList1" runat="server" 
            RepeatColumns="4" HorizontalAlign = "Center" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table style="width:89%; height: 143px;">
                    <tr>
                        <td colspan="2" bgcolor="#FF6600" style="height: 55px">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/templatemo_logo.png" 
                                Height="51px" Width="219px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px" bgcolor="#FF6600">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="MovieName" runat="server" Font-Size="Smaller" ForeColor="Black" Text= '<%# Eval("moviename") %>'></asp:Label>
                        </td>
                        <td rowspan="4" bgcolor="#FF6600">
                            <asp:Label ID="lblscreen" runat="server" Font-Size="90px" 
                                ForeColor="Black" Text= '<%# Eval("screenname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px" bgcolor="#FF6600">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="SeatNo" runat="server" Font-Size="Smaller" ForeColor="Black" Text= '<%# Eval("seatno") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px; margin-left: 40px; height: 1px;" bgcolor="#FF6600">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="date" runat="server" Font-Size="Smaller" ForeColor="Black" Text= '<%# Eval("bookingdate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px; margin-left: 40px; height: 18px;" bgcolor="#FF6600">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Timing" runat="server" Font-Size="Smaller" ForeColor="Black" Text= '<%# Eval("timing") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 157px; margin-left: 40px" bgcolor="#FF6600">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Price" runat="server" Font-Size="Smaller" ForeColor="Black" Text= '<%# Session["rate1"] %>'></asp:Label>
                        </td>
                        <td bgcolor="#FF6600">
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <table style="width:100%;">
            <tr>
                <td align="center">
                    <asp:Button ID="Button2" runat="server" Text="Continue" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" onclick="Button2_Click"/>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
       
    
    </asp:Content>


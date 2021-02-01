<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Check Availability.aspx.cs" Inherits="Check_Availability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        &nbsp;&nbsp;&nbsp;
        <table style="width:100%;">
            <tr>
                <td style="width: 470px">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td style="width: 142px" class="col_w200">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Movie :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="169px" 
                        DataSourceID="movie" DataTextField="moviename" 
                        DataValueField="moviename">
                        <asp:ListItem>Screen_1</asp:ListItem>
                        <asp:ListItem>Screen_2</asp:ListItem>
                        <asp:ListItem>Screen_3</asp:ListItem>
                        <asp:ListItem>Screen_4</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="movie" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:movieconn %>" 
                        SelectCommand="SELECT [moviename], [movieid] FROM [Screen_managment]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="height: 22px; width: 470px">
                    &nbsp;</td>
                <td style="height: 22px; width: 142px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Timing :
                    &nbsp;</td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>07:00 am to 10:00 am</asp:ListItem>
                        <asp:ListItem>10:15 am to 01:15 pm</asp:ListItem>
                        <asp:ListItem>01:30 pm to 04:30 pm</asp:ListItem>
                        <asp:ListItem>04:45 pm to 07:45 pm</asp:ListItem>
                        <asp:ListItem>08:00 pm to 11:00 pm</asp:ListItem>
                        <asp:ListItem>11:15 pm to 2:00 am</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 470px">
                    &nbsp;</td>
                <td style="width: 142px" class="col_w200">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Check" onclick="Button2_Click" 
                        CommandName="searching" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                </td>
            </tr>
            </table>
    
        <asp:DataList OnItemCommand="hi" ID="DataList1" runat="server" RepeatColumns="2" 
            horizontalalign = "Center" Visible="False" 
           
            style="margin-right: 63px" Width="778px">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td align="center" colspan="3">
                            Theatre :
                            <asp:Label ID="moviename0" runat="server" Text='<%# Eval("TheatreName") %>' 
                                style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <img alt=""  height="200" width='300' src='images/<%# Eval("imagename") %>' 
                align="middle"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 267px">
                            &nbsp;</td>
                        <td style="width: 73px">
                            Movie&nbsp; :</td>
                        <td>
                            <asp:Label ID="moviename" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 267px">
                            &nbsp;</td>
                        <td style="width: 73px">
                            Screen :</td>
                        <td>
                            <asp:Label ID="screenname" runat="server" Text='<%# Eval("screenname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 267px">
                            &nbsp;</td>
                        <td style="width: 73px">
                            Timing :</td>
                        <td>
                            <asp:Label ID="timing" runat="server" Text='<%# Eval("timing") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 267px">
                            &nbsp;</td>
                        <td style="width: 73px">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" BackColor="Gray" BorderColor="Black" 
                                CommandArgument='<%# Eval("movieid") %>' CommandName="checkseat" 
                                ForeColor="White" Height="20px" Text="Book Ticket" Width="97px" />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
   
</asp:Content>


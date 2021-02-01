<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Screen_3.aspx.cs" Inherits="Screen_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
        <table style="width:100%;">
            <tr>
                <td style="width: 268px">
                    &nbsp;</td>
                <td style="width: 94px">
                    Movie Name :</td>
                <td>
        <asp:DropDownList ID="drpmovie" runat="server" DataSourceID="drp" 
            DataTextField="moviename" DataValueField="moviename" Height="16px" Width="153px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="drp" runat="server" 
            ConnectionString="<%$ ConnectionStrings:movieconn %>" 
            SelectCommand="SELECT [moviename] FROM [Screen_managment] WHERE ([screenname] = @screenname)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Screen_1" Name="screenname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 268px">
                    &nbsp;</td>
                <td style="width: 94px">
                    Timing :</td>
                <td>
        <asp:DropDownList ID="drptiming" runat="server" DataSourceID="drpscn" 
            DataTextField="timing" DataValueField="timing" Height="16px" Width="210px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="drpscn" runat="server" 
            ConnectionString="<%$ ConnectionStrings:movieconn %>" 
            SelectCommand="SELECT [timing] FROM [Screen_managment] WHERE ([screenname] = @screenname)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Screen_1" Name="screenname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 268px">
                    &nbsp;</td>
                <td style="width: 94px">
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                </td>
            </tr>
        </table>
        <br />
   
   
        <asp:DataList OnItemCommand = "hi" ID="DataList1" runat="server" HorizontalAlign="Center" 
            RepeatColumns="3" Visible="False" Width="766px">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;
                            <img alt=""  height="150" width='200' src='images/<%# Eval("imagename") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px; height: 22px">
                            &nbsp;&nbsp; Movie Name :</td>
                        <td style="height: 22px">
                            <asp:Label ID="moviename" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;&nbsp; Timing :</td>
                        <td>
                            <asp:Label ID="timing" runat="server" Text='<%# Eval("timing") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;&nbsp; Release Date :&nbsp;</td>
                        <td>
                            <asp:Label ID="releasedate" runat="server" Text='<%# Eval("releasedate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1"  CommandName="thisisbook" CommandArgument='<%# Eval("movieid") %>' runat="server" Text="Book Tickets" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>


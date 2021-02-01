<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="screenmanag.aspx.cs" Inherits="screenmanag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">
                &nbsp;</td>
            <td style="width: 167px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Movie Name : &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="moviename" 
                    DataTextField="moviename" DataValueField="moviename" Height="22px" 
                    Width="176px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="moviename" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:movieconn %>" 
                    SelectCommand="SELECT [moviename] FROM [Movie_Master]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px; height: 29px;">
                </td>
            <td style="width: 167px; height: 29px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Screen :</td>
            <td style="height: 29px" class="h40">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="169px">
                    <asp:ListItem>Screen_1</asp:ListItem>
                    <asp:ListItem>Screen_2</asp:ListItem>
                    <asp:ListItem>Screen_3</asp:ListItem>
                    <asp:ListItem>Screen_4</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 29px" class="h40">
                </td>
        </tr>
        <tr>
            <td style="width: 282px">
                &nbsp;</td>
            <td style="width: 167px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">
                &nbsp;</td>
            <td style="width: 167px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Check" 
                    Height="24px" Width="91px" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;<asp:DataList  ID="DataList1" OnItemCommand="hi" runat="server" HorizontalAlign ="Center" 
        RepeatColumns="3" Visible="False" Width="754px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td colspan="3">
                        <img alt=""  height="150" width='200' src='images/<%# Eval("imagename") %>' />
                    </td>
                </tr>
                <tr>

                    <td style="width: 102px">
                        Movie Name :</td>
                    <td>
                        <asp:Label ID="lblmoviename" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        Screen :</td>
                    <td>
                        <asp:Label ID="lblscreen" runat="server" Text='<%# Eval("screenname") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" CommandName="thisisview" 
                            CommandArgument='<%# Eval("movieid") %>' runat="server" Text="Update" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    </asp:Content>


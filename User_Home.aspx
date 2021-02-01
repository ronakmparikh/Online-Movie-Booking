<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="User_Home.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
       
    </p>
     <table style="width:100%;">
            <tr>
                <td style="width: 451px">
                    &nbsp;</td>
                <td class="col_w300" style="font-size: large; width: 120px">
                    Select Timing :</td>
                <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="timing" 
                                    DataTextField="timing" DataValueField="timing" Height="21px" 
                                    style="margin-left: 0px">
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" Height="21px" Text="Show" 
                                    Width="92px" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" onclick="Button2_Click" />
                            </td>
            </tr>
            <tr>
                <td colspan="3">
                                <asp:SqlDataSource ID="timing" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:movieconn %>" 
                                    SelectCommand="SELECT [timing] FROM [Screen_managment] WHERE ([screenname] = @screenname)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="Screen_1" Name="screenname" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
        <asp:DataList OnItemCommand="hi" ID="DataList1" runat="server" RepeatColumns="2" Width="893px" 
            horizontalalign = "Center" style="margin-right: 0px" >
            <ItemTemplate >
                <table style="width:100%;">
                    <tr>
                        <td rowspan="8" style="width: 112px">
                            <br />
                            <img alt=""  height="150" width='200'  src='images/<%# Eval("imagename") %>'  ><br />&nbsp;</td>
                        <td rowspan="8" style="width: 9px">
                            &nbsp;</td>
                        
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px" align="left">
                            &nbsp;<asp:Label ID="moviename" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px" align="left">
                            &nbsp;<asp:Label ID="releasedate" runat="server" Text='<%# Eval("releasedate")%>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px" align="left">
                            &nbsp;<asp:Label ID="shortdesc" runat="server" Text='<%# Eval("shortdesc") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;<asp:Label ID="timing0" runat="server" Text='<%# Eval ("timing") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;<asp:Button ID="Button1" runat="server"
                                CommandArgument='<%# Eval("movieid") %>' CommandName="DetailButton" 
                                Text="Detail" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
        <asp:DataList OnItemCommand="hi" ID="DataList2" runat="server" RepeatColumns="2" Width="932px" 
            horizontalalign = "Center" >
            <ItemTemplate >
                <table style="width:100%;">
                    <tr>
                        <td rowspan="8" style="width: 112px">
                            <br />
                            <img alt=""  height="150" width='200'  src='images/<%# Eval("imagename") %>'  ><br />&nbsp;</td>
                        <td rowspan="8" style="width: 7px">
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px" align="left">
                            &nbsp;<asp:Label ID="moviename" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px" align="left">
                            &nbsp;<asp:Label ID="releasedate" runat="server" Text='<%# Eval("releasedate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="h20" style="height: 12px" align="left">
                            &nbsp;<asp:Label ID="shortdesc" runat="server" Text='<%# Eval("shortdesc") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;<asp:Label ID="timing0" runat="server" Text='<%# Eval("timing") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;<asp:Button ID="Button1" runat="server"
                                CommandArgument='<%# Eval("movieid") %>' CommandName="DetailButton" 
                                Text="Detail" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                </td>
            </tr>
        </table>
</asp:Content>


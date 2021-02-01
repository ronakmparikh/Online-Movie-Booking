<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Hollywood.aspx.cs" Inherits="Hollywood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    
        <asp:DataList OnItemCommand="hi" ID="DataList6" runat="server" 
            HorizontalAlign="Center" style="margin-right: 142px" RepeatColumns="2" 
            Width="653px">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;
                            <img alt=""  height="150" width='200' src='images/<%# Eval("imagename") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px; height: 22px">
                            &nbsp;&nbsp;&nbsp;&nbsp; Movie Name :</td>
                        <td style="height: 22px">
                            <asp:Label ID="moviename" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp; &nbsp;&nbsp; Release Date :&nbsp;</td>
                        <td>
                            <asp:Label ID="lblreleasedate" runat="server" Text='<%# Eval("releasedate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;&nbsp; &nbsp; Short Desc :</td>
                        <td>
                            <asp:Label ID="lblshortdesc" runat="server" Text='<%# Eval("shortdesc") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;&nbsp; &nbsp; Timing :</td>
                        <td>
                            <asp:Label ID="timing" runat="server" Text='<%# Eval("timing") %>'>'></asp:Label   >
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btndetail" CommandName="holywooddetail" 
                                CommandArgument='<%# Eval("movieid") %>' runat="server"  Text="Detail's" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" />
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
</asp:Content>


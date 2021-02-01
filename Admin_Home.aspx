<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
           <table style="width:100%;">
            <tr>
                <td>
        <asp:DataList OnItemCommand="hi" ID="DataList12" runat="server" RepeatColumns="2" Width="855px" 
            horizontalalign = "Center" >
            <ItemTemplate >
                <table style="width:100%;">
                    <tr>
                        <td rowspan="4" style="width: 112px">
                            <img alt=""  height="150" width='200'  src='images/<%# Eval("imagename") %>'  >
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="moviename" runat="server" Text='<%# Eval("moviename") %>'   ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="releasedate" runat="server" Text='<%# Eval("releasedate") %>' ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="shortdesc" runat="server" Text='<%# Eval("shortdesc") %>'  ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button  CommandArgument='<%# Eval("movieid") %>' ID="Button1" runat="server" CommandName="DetailButton"
                                Text="Detail" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" />
                            &nbsp;
                            <asp:Button CommandArgument='<%# Eval("movieid") %>' ID="Button2" runat="server" CommandName="UpdateButton" 
                                 Text="Update" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                           </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                </td>
            </tr>
        </table>
</asp:Content>


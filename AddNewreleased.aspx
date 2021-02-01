<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="AddNewreleased.aspx.cs" Inherits="Newreleased" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                Movie Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                Relese Date:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox2">
                </cc1:CalendarExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                Image Name:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                Short Desc:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                Long Desc:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 129px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"  />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AutoGenerateEditButton="True" DataSourceID="newrelese" Visible="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" HorizontalAlign = "Center">
        <Columns>
            <asp:BoundField DataField="moviename" HeaderText="moviename" 
                SortExpression="moviename" />
            <asp:BoundField DataField="releasedate" HeaderText="releasedate" 
                SortExpression="releasedate" />
            <asp:BoundField DataField="shortdesc" HeaderText="shortdesc" 
                SortExpression="shortdesc" />
            <asp:BoundField DataField="imagename" HeaderText="imagename" 
                SortExpression="imagename" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="newrelese" runat="server" 
        ConnectionString="<%$ ConnectionStrings:movieconn %>" 
        SelectCommand="SELECT [moviename], [releasedate], [shortdesc], [imagename] FROM [New_released]">
    </asp:SqlDataSource>
</asp:Content>



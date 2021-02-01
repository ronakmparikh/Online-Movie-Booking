<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Update_Profile.aspx.cs" Inherits="Update_Profile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <table style="width: 100%;">
            <tr>
                <td style="height: 22px; width: 224px">
                    &nbsp;</td>
                <td style="height: 22px; width: 86px">
                    Name :</td>
                <td style="height: 22px; width: 224px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 224px" class="col_w300">
                    &nbsp;</td>
                <td style="width: 86px">
                    Password :</td>
                <td style="width: 224px">
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 224px; height: 22px;">
                    &nbsp;</td>
                <td style="width: 86px; height: 22px;">
                    Address :</td>
                <td style="width: 224px; height: 22px;">
                    <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 224px" class="col_w300">
                    &nbsp;</td>
                <td style="width: 86px">
                    City :</td>
                <td style="width: 224px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Abad</asp:ListItem>
                        <asp:ListItem>Bharuch</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Vadodara</asp:ListItem>
                        <asp:ListItem>Valsad</asp:ListItem>
                        <asp:ListItem>Rajkot</asp:ListItem>
                        <asp:ListItem>aanand</asp:ListItem>
                        <asp:ListItem>Junaghad</asp:ListItem>
                        <asp:ListItem>Patan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 224px" class="col_w300">
                    &nbsp;</td>
                <td style="width: 86px">
                    Phoneno :</td>
                <td style="width: 224px">
                    <asp:TextBox ID="txtphone" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtphone" ErrorMessage="Not Valid number" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 224px" class="col_w300">
                    &nbsp;</td>
                <td style="width: 86px">
&nbsp;Birth Date :</td>
                <td style="width: 224px">
                    <asp:TextBox ID="txtbirth" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="txtbirth_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtbirth">
                    </cc1:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 224px" class="col_w300">
                    &nbsp;</td>
                <td style="width: 86px">
                    Upload Image:</td>
                <td style="width: 224px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 224px" class="col_w300">
                    &nbsp;</td>
                <td style="width: 86px">
                    &nbsp;</td>
                <td style="width: 224px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 224px" class="col_w300">
                    &nbsp;</td>
                <td style="width: 86px">
                    &nbsp;</td>
                <td style="width: 224px">
                    <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click" 
                        Text="Save" Width="110px" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                </td>
            </tr>
        </table>
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
<p>
</p>
</asp:Content>


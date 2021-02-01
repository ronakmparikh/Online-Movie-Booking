<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="User Registration.aspx.cs" Inherits="User_Regestration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register assembly="MSCaptcha" namespace="MSCaptcha" tagprefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table style="width:100%;">
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                    <br />
                    If Already Have account then <a href="Userlogin.aspx">Click here</a></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
    <asp:Label ID="Label1" runat="server" Text="Please Register Here..."></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
&nbsp;Enetr UserName :</td>
                <td>
    <asp:TextBox ID="txtusername" runat="server" ontextchanged="txtusername_TextChanged"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage="Numeric value not allow" 
                        SetFocusOnError="True" ValidationExpression="[ a-zA-Z]*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
&nbsp;Enter Email ID :</td>
                <td>
    <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtemailid" ErrorMessage="Must Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtemailid" ErrorMessage="Not Valid" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
&nbsp;Password :</td>
                <td>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="Must Required..." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 457px; height: 26px;">
                    </td>
                <td style="width: 140px; height: 26px;">
&nbsp;Address :</td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtadd" runat="server" Height="62px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
&nbsp;City :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Auckland</asp:ListItem>
                        <asp:ListItem>Wellington</asp:ListItem>
                        <asp:ListItem>Christchurch</asp:ListItem>
                        <asp:ListItem>Hamilton</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;Enter Mobile no :&nbsp;&nbsp;&nbsp; +64</td>
                <td>
    <asp:TextBox ID="txtphoneno" runat="server" MaxLength="10"></asp:TextBox>
    &nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtphoneno" ErrorMessage="Invalid Phone(Only numeric value is allow)" 
        ValidationExpression="\d{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;Gender :</td>
                <td>
                    <em>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                                EnableTheming="True" Width="193px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                </em>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;Birth Date :</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtbirthdate" runat="server" AutoPostBack="True" 
                                ontextchanged="txtbirthdate_TextChanged"></asp:TextBox>
                            <cc1:CalendarExtender ID="txtbirthdate_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="txtbirthdate">
                            </cc1:CalendarExtender>
                            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtbirthdate" ErrorMessage="Must Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;</td>
                <td>
                    <cc2:CaptchaControl ID="CaptchaControl1" runat="server" Width="157px" 
                        Height="34px" />
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    Enter the Shown Text :</td>
                <td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 457px" class="col_w200">
                    &nbsp;</td>
                <td style="width: 140px" class="col_w200">
                    &nbsp;</td>
                <td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" style="height: 26px" />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
        Text="Reset" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                </td>
            </tr>
        </table>
   
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
    <em>
                            &nbsp;
                </em>&nbsp;<script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</asp:Content>


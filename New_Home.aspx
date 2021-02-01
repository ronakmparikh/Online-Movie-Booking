<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="New_Home.aspx.cs" Inherits="New_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<script type="text/javascript" language="javascript">
    window.onkeydown = function (event) {
        if (event.keyCode == 8);
        return false;
    } 
 </script> 

 <script type = "text/javascript" >
     function changeHashOnLoad() {
         window.location.href += "#";
         setTimeout("changeHashAgain()", "50");
     }

     function changeHashAgain() {
         window.location.href += "1";
     }

     var storedHash = window.location.hash;
     window.setInterval(function () {
         if (window.location.hash != storedHash) {
             window.location.hash = storedHash;
         }
     }, 50);


</script>


 <br />
    <table style="width: 100%;">
        <tr>
            <td style="text-align: center">
                &nbsp;
            
 Select City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:DropDownList ID="drpcity" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" BackColor="#FFFFCC" 
                    Width="150px">
       
    </asp:DropDownList>

            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;
            Select Theatre :<asp:DropDownList ID="drptheatre" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" BackColor="#FFFFCC" 
                    Width="150px">
      
    </asp:DropDownList>

            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

 &nbsp;<br />
  &nbsp;<br /> 



        <asp:DataList OnItemCommand="hi" ID="DataList1" runat="server" 
            RepeatColumns="2" Width="899px" 
            horizontalalign = "Center" Height="16px" style="margin-top: 0px; margin-right: 2px;" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate >
                <table style="width:92%;">
                    <tr>
                        <td rowspan="9" style="width: 200px" class="col_w200">
                            <br />
                            <img alt=""  src='images/<%# Eval("imagename") %>' height="150" width='200'/><br /> <br />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="screenname" runat="server" ForeColor="#CCFFFF" 
                                Text='<%# Eval("screenname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<asp:Label ID="moviename" runat="server" ForeColor="#CCFFFF" 
                                Text='<%# Eval("moviename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<asp:Label ID="releasedate" runat="server" ForeColor="#CCFFFF" 
                                Text='<%# Eval("releasedate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<asp:Label ID="shortdesc" runat="server" ForeColor="#CCFFFF" 
                                Text='<%# Eval("shortdesc") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<asp:Label ID="timing" runat="server" Text='<%# Eval("timing") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<asp:Button ID="Button1" runat="server" BackColor="Gray" BorderColor="Black" ForeColor="White"
                                CommandArgument='<%# Eval("movieid") %>' CommandName="DetailButton" 
                                 Height="25px" Text="Detail" Width="85px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
          
        </asp:DataList>
   
   
 
</asp:Content>




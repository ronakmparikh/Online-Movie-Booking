<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="sample.aspx.cs" Inherits="sample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="marquee">

 <img src="images/iron.jpeg" height="50" width='40'/><img src="images/fast_and_furious_6.jpg" height="50" width='40'/>
    <img src="images/scry.jpeg" height="50" width='40'/><img src="images/dis cnc.jpeg" height="50" width='40'/>
</div>
<script src="marqueeLeft.js" type="text/javascript"></script><script type="text/javascript">                                                                 
$(document).ready(function () { $('#marquee').marqueeLeft(); })</script>
</asp:Content>


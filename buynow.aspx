<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buynow.aspx.cs" Inherits="buynow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body> 

<!--
<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">

<input type="hidden" name="cmd" value="_xclick"/>

<input type="hidden" name="business" value="bookingmovie4@gmail.com"/>

<input type="hidden" name="lc" value="US"/>

<input type="hidden" name="item_name" value='<%=  Session["moviefinal"]%>' / >

<input type="hidden" name="item_number" value='<%=  Session["screenfinal"]  %>'  />

<input type="hidden" name="amount" value='<%=    Session["pricefinal"] %>'  />

<input type="hidden" name="currency_code" value="USD"/>

<input type="hidden" name="button_subtype" value="services"/>

<input type="hidden" name="no_note" value="0"/>

<input type="hidden" name="cn" value="Add special instructions to the seller"/>

<input type="hidden" name="no_shipping" value="2"/>

<input type="hidden" name="undefined_quantity" value="1"/>

<input type="hidden" name="rm" value="1"/>

<input type="hidden" name="return" value="http://localhost:2243/Online%20Movie%20Ticket%20Boooking/Success.aspx"/>

<input type="hidden" name="cancel_return" value="http://localhost:2243/Online%20Movie%20Ticket%20Boooking/Cancle.aspx"/>

<input type="hidden" name="tax_rate" value="1.000"/>

<input type="hidden" name="shipping" value="1.00"/>

<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted"/>

<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online />

<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1"/>

</form>-->







 <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="bookingmovie4@gmail.com">
<input type="hidden" name="lc" value="US">
<input type="hidden" name="item_name" value='<%=  Session["moviefinal"]%>' / >
<input type="hidden" name="item_number" value='<%=  Session["screenfinal"]  %>'  />
<input type="hidden" name="amount" value='<%=    Session["pricefinal"] %>'  />
<input type="hidden" name="currency_code" value="USD">
<input type="hidden" name="button_subtype" value="services">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="cn" value="Add special instructions to the seller">
<input type="hidden" name="no_shipping" value="2">
<input type="hidden" name="undefined_quantity" value="1">
<input type="hidden" name="rm" value="1">
<input type="hidden" name="return" value="http://localhost:2243/Online%20Movie%20Ticket%20Boooking/Success.aspx"/>
<input type="hidden" name="cancel_return" value="http://localhost:2243/Online%20Movie%20Ticket%20Boooking/Cancle.aspx"/>
<input type="hidden" name="tax_rate" value="1.000">
<input type="hidden" name="shipping" value="1.00">
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</body>
</html>






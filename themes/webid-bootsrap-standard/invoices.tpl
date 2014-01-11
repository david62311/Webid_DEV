<!-- INCLUDE user_menu_header.tpl -->
<div class="span9">
<legend>{L_766}</legend>
<table class="table table-bordered table-condensed table-striped">
  <tr style="background-color:{TBLHEADERCOLOUR}">
    <td style="width: 30%;">{L_018}</td>
    <td style="width: 30%;">{L_847}</td>
    <td style="width: 20%;">{L_319}</td>
    <td style="width: 20%;">{L_560}</td>
  </tr>
<!-- BEGIN topay -->
<tr>
	<td style="text-align: left;">
		<span class="titleText125">{L_1041}: {topay.INVOICE}</span>
		<p class="smallspan">{topay.DATE}</p>
	</td>
	<td>{topay.INFO}</td>
	<td style="text-align: left;">{topay.TOTAL}</td>
	<td style="text-align: center;" class="alert"><form name="" method="post" action="{SITEURL}order_print.php?id={topay.INVOICE}" id="fees" style="margin:0;">
        <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
        <input type="hidden" name="pfval" value="{to_pay.ID}">
        <input type="submit" name="Invoice" value="{L_1058}" class="btn btn-primary">
      </form></td> 
</tr>
<!-- END topay -->
</table> 

<br /><br />
<!-- IF PAGNATION -->
                <table width="98%" cellpadding="0" cellspacing="0" class="blank">
                    <tr>
                        <td align="center">
                            {L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}
                            <br>
                            {PREV}
	<!-- BEGIN pages -->
                            {pages.PAGE}&nbsp;&nbsp;
	<!-- END pages -->
                            {NEXT}
                        </td>
                    </tr>
				</table>
<!-- ENDIF -->

<!-- INCLUDE user_menu_footer.tpl -->

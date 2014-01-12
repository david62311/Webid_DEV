<div class="row">
<div class="span3">
  <div class="well" style="max-width: 340px; padding: 8px 0;">
    <ul class="nav nav-list">
      <li class="nav-header">{L_205}</li>
      <li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0080}</a></li>
      <li class="nav-header">{L_25_0081}</li>
      <li><a href="edit_data.php">{L_621}</a></li>
      <li><a href="yourfeedback.php">{L_208}</a></li>
      <li><a href="buysellnofeedback.php">{L_207}</a> <small><span class="muted">{FBTOLEAVE}</span></small></li>
      <li><a href="mail.php">{L_623}</a> <small><span class="muted">{NEWMESSAGES}</span></small></li>
      <li class="active"><a href="#">{L_1057}</a></li>
      <li><a href="outstanding.php">{L_422}</a></li>
      <!-- IF B_CAN_SELL -->
      <li class="nav-header">{L_25_0082}</li>
      <li><a href="select_category.php">{L_028}</a></li>
      <li><a href="selleremails.php">{L_25_0188}</a></li>
      <li><a href="yourauctions_p.php">{L_25_0115}</a></li>
      <li><a href="yourauctions.php">{L_203}</a></li>
      <li><a href="yourauctions_c.php">{L_204}</a></li>
      <li><a href="yourauctions_s.php">{L_2__0056}</a></li>
      <li><a href="yourauctions_sold.php">{L_25_0119}</a></li>
      <li><a href="selling.php">{L_453}</a> </li>
      <!-- ENDIF -->
      <li class="nav-header">{L_25_0083}</li>
      <li><a href="auction_watch.php">{L_471}</a></li>
      <li><a href="item_watch.php">{L_472}</a></li>
      <li><a href="yourbids.php">{L_620}</a></li>
      <li><a href="buying.php">{L_454}</a></li>
    </ul>
  </div>
</div>
<div class="span9">
<legend>{L_766}</legend>
<table class="table table-bordered table-condensed table-striped">
  <tr style="background-color:{TBLHEADERCOLOUR}">
    <td style="width: 30%;">{L_018}</td>
    <td style="width: 30%;">{L_847}</td>
    <td style="width: 20%;">{L_319}</td>
    <td style="width: 20%;">{L_766}</td>
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

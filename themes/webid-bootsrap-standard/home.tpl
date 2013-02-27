<div class="row">
<div class="span12">
<!-- IF B_MULT_LANGS -->
<div class="flags-icons"><small><span class="muted">{L_2__0001}</span></small> {FLAGS} </div>
<!-- ENDIF -->
<div class="row">
<div class="span3 hidden-phone">
  <ul class="nav nav-list ">
    <li class="nav-header">{L_276}</li>
    <li class="divider"></li>
    <li><a href="{SITEURL}browse.php?id=0"><i class="icon-tags"></i> {L_277}</a></li>
    <li class="divider"></li>
    <!-- BEGIN cat_list -->
    <li> <a href="browse.php?id={cat_list.ID}">{cat_list.IMAGE}{cat_list.NAME}</a></li>
    <!-- END cat_list -->
  </ul>
 
</div>
<div class="span6">

    <!-- BEGIN featured -->
    <div class="span2 featured-item"> <a href="{SITEURL}item.php?id={featured.ID}"><img class="img-polaroid" src="{featured.IMAGE}" alt="{featured.TITLE}" height="160"></a> <br />
      <div><a href="{SITEURL}item.php?id={featured.ID}">{featured.TITLE}</a><br />
      <small>{featured.BID} <span class="muted">{featured.ENDS}</span></small></div> </div>
    <!-- END featured -->

  <!-- IF B_HOT_ITEMS -->
  <hr  />
  <div class="row">
    <div class="span6">
      <h3>{L_279}</h3>
    </div>
  </div>
  <div class="row">
    <!-- BEGIN hotitems -->
    <div class="span2 featured-item"><a href="{SITEURL}item.php?id={hotitems.ID}"><img class="img-polaroid" src="{hotitems.IMAGE}" alt="{hotitems.TITLE}" ></a>
      <div><a href="{SITEURL}item.php?id={hotitems.ID}">{hotitems.TITLE}</a><br>
         <small>{hotitems.BID}</div>
      </small> </div>
    <!-- END hotitems -->
    <hr  />
  </div>
  <!-- ENDIF -->
  <!-- IF B_AUC_ENDSOON -->
  <div class="row">
    <div class="span6">
      <h3>{L_280}</h3>
    </div>
    <!-- BEGIN end_soon -->
    <div class="span2 featured-item"> <a href="{SITEURL}item.php?id={end_soon.ID}"><img class="img-circle" src="{end_soon.IMAGE}" alt="{end_soon.TITLE}" height="160"></a> <br />
      <div><a href="{SITEURL}item.php?id={end_soon.ID}">{end_soon.TITLE}</a><br />
      <small><span class="muted">{end_soon.DATE}</span></small> </div></div>
    <!-- END end_soon -->
  </div>
  <!-- ENDIF -->
  <!-- IF B_AUC_LAST -->
  <hr  />
  <div class="row">
    <div class="span6">
      <h3>{L_278}</h3>
    </div>
    <!-- BEGIN auc_last -->
    <div class="span2 featured-item"> <a href="{SITEURL}item.php?id={auc_last.ID}"><img class="img-rounded" src="{auc_last.IMAGE}" alt="{auc_last.TITLE}" height="160"></a> <br />
      <div><a href="{SITEURL}item.php?id={end_soon.ID}">{auc_last.TITLE}</a><br />
      <small><span class="muted">{auc_last.DATE}</span></small> </div></div>
    <!-- END auc_last -->
  </div>
  <!-- ENDIF -->
  <!-- IF B_AUC_LAST -->
  <hr  />
  <div class="row">
    <div class="span3">
      <h3>{L_278}</h3>
      <table class="table table-condensed">
        <!-- BEGIN auc_last -->
        <tr>
          <td style="text-align:center; width:50px;"><a href="{SITEURL}item.php?id={auc_last.ID}"> <img class="img-polaroid" src="{auc_last.IMAGE}" alt="{auc_last.TITLE}" style="height:40px; width:40px"/></a></td>
          <td><a href="{SITEURL}item.php?id={auc_last.ID}">{auc_last.TITLE}</a><br />
            <span class="muted"><small>{auc_last.DATE}</small></span></td>
        </tr>
        <!-- END auc_last -->
        </tbody>
        
      </table>
    </div>
    <!-- ENDIF -->
    <!-- IF B_AUC_ENDSOON -->
    <div class="span3">
      <h3>{L_280}</h3>
      <table class="table table-condensed">
        <!-- BEGIN end_soon -->
        <tr>
          <td style="text-align:center; width:50px;"><a href="{SITEURL}item.php?id={end_soon.ID}"> <img class="img-polaroid" src="{end_soon.IMAGE}" alt="{end_soon.TITLE}" style="height:40px; width:40px"/></a></td>
          <td><a href="{SITEURL}item.php?id={end_soon.ID}">{end_soon.TITLE}</a><br />
            <span class="muted"><small>{end_soon.DATE}</small></span></td>
        </tr>
        <!-- END end_soon -->
      </table>
    </div>
    <!-- ENDIF -->
  </div>
</div>

</div>
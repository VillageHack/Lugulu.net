<div id="left">
<fieldset class="x chart">
<table class="dashboard">
<tr>
	<td><b>Profile <?php echo $report['pc']."% Complete"?></b></td><td width='200'><div style="height:15px;" id='pcbar'>
	<script>
	<?php echo "pbar(".$report['pc'].")"?>
	</script>
	</div></td>
</tr>
<tr>
	<td><b>Shortlisted</b></td><td><?php
	if($report['shortlist']==1){
		echo "Once";
	}
	elseif($report['shortlist']==0){
		echo "Never";
	}else{
		echo $report['shortlist']." times";
	} ?></td>
</tr>
<tr>
	<td><b>Profile Views</b></td><td><?php echo $report['profile_views']?></td>
</tr>
<tr>
	<td><b>Validity</b></td><td><?php 
	if($report['active']!=1){
		echo "<p class='red'>Not yet verified <a href='#2' id='tooltip'>why?</a></p>";
		echo "<div class='tooltip tooltip2'><br/>Please confirm subscription from email, to be verified as a valid user</div>";
	}else{
		echo "<p class='verified'>Verified</p>";
	}
	
	?></td>
</tr>
</table>
</fieldset>
<h1><?php echo $this->session->userdata('first_name')." ".$this->session->userdata('last_name')?></h1>

<p>Congrats! Thanks for signing up with <b>getKazi!</b></p>
<ul class="menu add">
	<li>Bio Information <?php echo anchor('profile/edit/bio','Add') ?> | <?php echo anchor('profile/update/bio','Edit') ?></li>
	<li>Educational Background <?php echo anchor('profile/edit/edu','Add') ?> | <?php echo anchor('profile/update/edu','Edit') ?></li>
	<li>Job Experience <?php echo anchor('profile/edit/jexp','Add') ?> | <?php echo anchor('profile/update/jexp','Edit') ?></li>
	<li>Interests <?php echo anchor('profile/edit/int','Add') ?> | <?php echo anchor('profile/update/int','Edit') ?></li>
	<li>Membership <?php echo anchor('profile/edit/mem','Add') ?> | <?php echo anchor('profile/update/mem','Edit') ?></li>
	<li>Responsibilities <?php echo anchor('profile/edit/resp','Add') ?> | <?php echo anchor('profile/update/resp','Edit') ?></li>
	<li>Skills <?php echo anchor('profile/edit/skil','Add') ?> | <?php echo anchor('profile/update/skil','Edit') ?></li>
	<li>Awards <?php echo anchor('profile/edit/awd','Add') ?> | <?php echo anchor('profile/update/awd','Edit') ?></li>
	<li>Referee <?php echo anchor('profile/edit/ref','Add') ?> | <?php echo anchor('profile/update/ref','Edit') ?></li>
</ul>
<div class="footnote">Did you know that getKazi really cares about
privacy of your data more than anything else? Please read our <?php echo anchor('home/terms','Terms and Agreement')?>.
</div>
</div>

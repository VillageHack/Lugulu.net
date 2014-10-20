<div id="welcome_note" class="content">

<h1>Welcome to Lugulu.net!</h1>

<div class="links_cont">

<ul class="links left">
	<li class="members"><?php echo anchor('member/view/all','Villagers')?><br/><span>Connect</span></li>
	<li class="news"><?php echo anchor('news','News')?><br/><span>What's happening</span></li>
	<li class="events"><?php echo anchor('','Events')?><br/><span>What's going on</span></li>
	<li class="ideas"><?php echo anchor('','Ideas')?><br/><span>Shared freely</span></li>
</ul>
<ul class="links right">
	<li class="jobs"><?php echo anchor('','Jobs')?><br/><span>Jobs board</span></li>
	<li class="notices"><?php echo anchor('','Notices')?><br/><span>Information</span></li>
	<li class="weddings"><?php echo anchor('','Weddings')?><br/><span>Who's wedding</span></li>
	<li class="orbituary"><?php echo anchor('','Orbituary')?><br/><span>and Condolences</span></li>
</ul>
</div>

<div id="signup">
<div>
<div class="left">
<p>Are you from Lugulu or near Lugulu?
Sign up and stay connected.</p>
<div><?php echo anchor('login/signup','Sign Up Now!',array('class'=>'button')) ?></div>
</div>

<div class="right">
<p><span><?php echo $villagers?></span> villagers<br/>
<span><?php echo $friends?></span> friends<br/>
And still counting!</p>


</div>
</div>
</div>

</div>

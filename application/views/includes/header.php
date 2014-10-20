<html>
    <head>
        <title><?php if(isset($title)){ echo "Lugulu.net | ".$title;}else{echo "Lugulu.net";}?></title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/style.css" media="screen" />
	<link type="text/css" href="<?php echo base_url();?>js/jquery/css/ui-lightness/jquery-ui-1.8rc2.custom.css" rel="stylesheet" />	
	<script type="text/javascript" src="<?php echo base_url();?>js/jquery/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/jquery/js/jquery-ui-1.8rc2.custom.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/tooltip.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/main.js"></script>
    </head>
    <body>
	<div id="mwili">
    <div id="login">
	<p class="login">
			<?php if($this->session->userdata('email')){				
				echo "Welcome ".$this->session->userdata('first_name')." ".anchor('login/logout','Logout');
				if($this->session->userdata('flag')==0){
						echo " | ".anchor('member/profile/view/'.$this->session->userdata('mid'),'My Profile');
				}
			}else{
				echo "Guest | ".anchor('login','Login');
			}
			?>
			<?php echo " | ".anchor('./','Home')." | ".anchor('home/about','About Lugulu.net')?>
		</p>
	</div>
    <div id="header">
		<h1><img src="<?php echo base_url();?>images/getkazi.png" alt="getKazi!"></h1>
	</div>

<h1>Login</h1>
<div id="left">
<div id="login_form">
<?php 
	echo form_open('login/validate_credentials');
	echo form_label('Email','email');
	echo form_input(array('name'=>'email','id'=>'email','value'=>set_value('email')));
	echo form_label('Password','password');
	echo form_password(array('name'=>'password','id'=>'password'));
	echo form_submit('submit','Login');
	echo anchor('login/signup','Create Account');
?>
</div>
</div>

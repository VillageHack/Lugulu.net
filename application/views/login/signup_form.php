<h1>Member Registration</h1>
<div id="left">
<?php 
	echo validation_errors('<li class="error">');
?>
<fieldset>
<legend>Personal Information</legend>
<?php 
	$label = 'Phone <span>*Required for SMS notification</span>';
	echo form_open('login/register');
	echo form_label('First Name','first_name');
	echo form_input(array('name'=>'first_name','id'=>'first_name','value'=>set_value('first_name')));
	echo form_label('Last Name','last_name');
	echo form_input(array('name'=>'last_name','id'=>'last_name','value'=>set_value('last_name')));
	echo form_label('Email','email');
	echo form_input(array('name'=>'email','id'=>'email','value'=>set_value('email')));
	echo form_label($label,'phone');
	echo form_input(array('name'=>'phone','id'=>'phone','value'=>set_value('phone')));
	echo form_label('Are you from Lugulu village?');
	echo form_dropdown('villager',array(1=>'Yes, I\'m a villager',2=>'No'));
?>
</fieldset>
<fieldset>
<legend>Login Info</legend>

<?php
	echo form_label('Password','password');
	echo form_password(array('name'=>'password','id'=>'password'));
	echo form_label('Confirm Password','password2');
	echo form_password(array('name'=>'password2','id'=>'password2'));
	echo form_submit('submit','Register');
	echo form_close();
?>
</fieldset>
</div>

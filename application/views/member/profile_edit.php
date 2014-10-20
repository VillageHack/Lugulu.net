<div class='content'>
<?php 
foreach($profile->result() as $row){
}

echo "<h2>Edit Profile</h2>";
echo "<p><b>Name:</b> ".$row->f_name." ".$row->l_name."</p>";
echo "<p><b>Email:</b> ".$row->email."</p>";

echo form_open('member/profile/edit/'.$mid.'/s');
echo form_label('Facebook Profile Link');
echo form_input(array('name'=>'fb','value'=>$row->fb));
echo form_label('Twitter Link');
echo form_input(array('name'=>'twitter','value'=>$row->twitter));
echo form_label('Profession');
echo form_input(array('name'=>'profession','value'=>$row->profession));
echo form_label('Graduating Primary School');
echo form_input(array('name'=>'pri_school','value'=>$row->pri_school));
echo form_label('Graduating High School');
echo form_input(array('name'=>'high_school','value'=>$row->high_school));
echo form_label('Tertiary Institution (College/University)');
echo form_input(array('name'=>'college','value'=>$row->college));
echo form_label('Courses taken in tertiary institution');
echo form_input(array('name'=>'course','value'=>$row->course));
echo form_submit('submit','Update Profile');


?>

</div>
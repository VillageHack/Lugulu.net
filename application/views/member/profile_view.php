<div class='content'>
<?php 
foreach($profile->result() as $row){
}
if($this->session->userdata('mid')==$mid){
echo "<div class='edit'>".anchor('member/profile/edit/'.$this->session->userdata('mid'),'Edit Profile')."</div>";
}

//'lirl' function for checking whether the field is empty
function _empty($key){
	if($key==''){
		return "<i class='empty'>Not added</i>";
	}else{
		return $key;
	}
}

echo "<h2>Basic Information</h2>";
echo "<p><b>Name:</b> ".$row->f_name." ".$row->l_name."</p>";
echo "<p><b>Email:</b> ".$row->email."</p>";
echo "<p><b>Facebook Link: </b><a href='".$row->fb."' target='_blank'>click here</a></p>";
echo "<p><b>Twitter Link: </b><a href='".$row->twitter."' target='_blank'>click here</a></p>";
echo "<p><b>Profession: </b>"._empty($row->profession)."</p>";

echo "<h2>Educaction</h2>";
echo "<p><b>Primary School</b> "._empty($row->pri_school)."</p>";
echo "<p><b>High School: </b> "._empty($row->high_school)."</p>";
echo "<p><b>Tertiary: </b>"._empty($row->college)."</p>";
echo "<p><b>Course: </b>"._empty($row->course)."</p>";

?>

</div>
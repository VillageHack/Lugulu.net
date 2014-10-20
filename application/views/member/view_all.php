<div class='content'>
<h2>Connected Villagers</h2>
<div class='members_list'><?php 
$count = 0;

$num = sizeof($members->result());
$group = 1;
$divs  = round($num / $group);

foreach($members->result() as $row){
	if($count==0){
		echo "<div>";
		$divs--;
	}
	if($count%$group==0 && $count != 0){
		echo "</div><div>";
		$divs--;
	}
	if($row->profession==''){
		$profession = '<i>profession not added</i>';
	}else{
		$profession = "<b>$row->profession</b>";
	}
	if($row->active==1){
		echo "<div class='active'>".anchor('member/profile/view/'.$row->mid,"$row->f_name $row->l_name",array('title'=>'Activated'))."<br/>
				<span>$profession <br/>Joined on $row->time_reg</span>
		</div>";
	}else{
		echo "<div>".anchor('member/profile/view/'.$row->mid,"$row->f_name $row->l_name",array('title'=>'Not yet activated'))."<br/>
		<span>$profession <br/>Joined on $row->time_reg</span></div>";
	}
	if($divs==1&&$count==$num){
		echo "</div>";
	}
	$count++;
}
?></div>

</div>

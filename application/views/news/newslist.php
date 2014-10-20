<div class='news_count'><?php echo "News Count: ".$news_count;?></div>
<div class='this_week'>
<h3>This Week News</h3>
<?php
echo "<ul>"; 
$count=0;
foreach($this_week->result() as $row){
	$count++;
	echo "<li>".anchor('news/view/'.$row->nid,$row->title)."<br/><span>Posted on $row->time_posted by $row->f_name $row->l_name</span></li>";
}
echo "</ul>";

if($count==0){
	echo "<div class='no_news'>No news item!</div>";
}


?>

<h3>Past News</h3>
<?php
echo "<ul>"; 
$count=0;
foreach($other->result() as $row){
	$count++;
	echo "<li>".anchor('news/view/'.$row->nid,$row->title)."<br/><span>Posted on $row->time_posted by $row->f_name $row->l_name</span></li>";
}
echo "</ul>";

if($count==0){
	echo "<div class='no_news'>No news item!</div>";
}

?>

</div>
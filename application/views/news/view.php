<div class='content'>
<h2>Village News</h2>

<div class='left2'>
<div class='news_count'><?php echo "News Count: ".$news_count;?></div>
<div class='this_week'>
<?php
foreach($news->result() as $row){
	echo "<h3>$row->title</h3>";
	echo "<p><span>Posted on $row->time_posted by $row->f_name $row->l_name</span></p>";
	echo "<p>$row->news</p>";
}
?>
</div>

</div>

<div class='right2'>
<?php echo $this->load->view('news/newslist')?>
</div>
</div>
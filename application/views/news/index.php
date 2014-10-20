<div class='content'>
<h2>Village News</h2>

<div class='left2'>
<?php 
echo form_open('news/post');
echo form_input(array('name'=>'title','placeholder'=>'Brief Title','class'=>'long'));
echo form_textarea(array('name'=>'news','placeholder'=>'Whole news','class'=>'long'));
echo form_submit('submit','Post News');
echo form_close();
?>
</div>

<div class='right2'>
<?php echo $this->load->view('news/newslist')?>
</div>
</div>
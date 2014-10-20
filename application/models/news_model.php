<?php
class News_model extends Model {
	function post_news($mid){
		$news = array(
			'title'=>$this->input->post('title'),
			'news'=>$this->input->post('news'),
			'mid'=>$mid
		);
		return $this->db->insert('news',$news);
	}
	
	function this_week_news(){
		$sql = "SELECT * ,date_format(time_posted,'%M %e, %Y %l:%i %p') as time_posted FROM news
				LEFT JOIN member ON news.mid=member.mid
				WHERE WEEK(time_posted,1) = WEEK(CURRENT_DATE) AND news.active=1
				ORDER BY time_posted DESC";
		return $this->db->query($sql);
	}
	
	function other_news(){
		$sql = "SELECT *,date_format(time_posted,'%M %e, %Y %l:%i %p') as time_posted FROM news
				LEFT JOIN member ON news.mid = member.mid
				WHERE WEEK(time_posted,1)<WEEK(CURRENT_DATE) AND news.active=1
				ORDER BY time_posted DESC";
		return $this->db->query($sql);
	}
	
	function all_news(){
		$sql = "SELECT * ,date_format(time_posted,'%M %e, %Y %l:%i %p') as time_posted FROM news
				LEFT JOIN member ON news.mid = member.mid
				WHERE news.active = 1";
		return $this->db->query($sql);
	}
	
	function get_news($nid){
		$sql = "SELECT * ,date_format(time_posted,'%M %e, %Y %l:%i %p') as time_posted FROM news
				LEFT JOIN member ON news.mid = member.mid
				WHERE news.active = 1 AND nid = $nid";
		return $this->db->query($sql);
	}
	
}

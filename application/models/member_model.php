<?php
class Member_model extends Model {
	function validate(){
		$this->db->where('email',$this->input->post('email'));
		$this->db->where('password',md5($this->input->post('password')));
		$query = $this->db->get('member');
		if($query->num_rows==1){
			return true;
		}
	}

	function create_member(){
		$new_member = array(
			'f_name'=>ucwords($this->input->post('first_name')),
			'l_name'=>ucwords($this->input->post('last_name')),
			'email'=>$this->input->post('email'),
			'phone'=>$this->input->post('phone'),
			'password'=>md5($this->input->post('password')),
			'villager'=>$this->input->post('villager')
		);

		$insert = $this->db->insert('member',$new_member);
		return $insert;
	}

	function get_basic($email){
		$this->db->where('email',$email);
		return $this->db->get('member');
	}

	function send_mail(){
		$to = $this->input->post('email');
		$name = $this->input->post('first_name');
		$subject = "Subscription Successful";
		$message =
"Hello $name,
Thank you for registering at Lugulu.net
					
http://beta.lugulu.net/home/confirm/$to
					
Thank you.
					
Support Team
Lugulu.net";
		$from = "register@lugulu.net";
		$headers = "From: $from";
		mail($to,$subject,$message,$headers);
	}

	function confirm($mid){
		$conf = array(
			'active'=>1
		);
		$this->db->where('mid',$mid);
		$confirm = $this->db->update('member',$conf);
		return $confirm;
	}

	function get_profile($mid){
		$this->db->where('mid',$mid);
		return $this->db->get('member');
	}

	function update_profile($mid){
		$member = array(
			'fb'=>prep_url($this->input->post('fb')),
			'twitter'=>prep_url($this->input->post('twitter')),
			'profession'=>$this->input->post('profession'),
			'pri_school'=>$this->input->post('pri_school'),
			'high_school'=>$this->input->post('high_school'),
			'college'=>$this->input->post('college'),
			'course'=>$this->input->post('course')
		);

		$this->db->where('mid',$mid);
		return $this->db->update('member',$member);
	}

	function get_villager_count(){
		$this->db->where('villager',1);
		$query = $this->db->get('member');
		return $query->num_rows;
	}

	function get_non_villager_count(){
		$this->db->where('villager',2);
		$query = $this->db->get('member');
		return $query->num_rows;
	}
	
	function get_all(){
		$sql = "SELECT *,date_format(time_reg,'%M %e, %Y %l:%i %p') as time_reg FROM member ORDER BY mid DESC";
		return $this->db->query($sql);
	}
}

<?php
class Profile_model extends Model {
	function insert_bio($jsid){
		$bio = array(
			'dob'=>$this->input->post('dob'),
			'nationality'=>$this->input->post('nationality'),
			'nation_id'=>$this->input->post('nation_id'),
			'dl_no'=>$this->input->post('dl_no'),
			'passport'=>$this->input->post('passport'),
			'languages'=>$this->input->post('languages'),
			'weight'=>$this->input->post('weight'),
			'height'=>$this->input->post('weight'),
			'url'=>$this->input->post('url'),
			'gender'=>$this->input->post('gender'),
			'religion'=>$this->input->post('religion'),
			'jsid'=>$jsid
		);
		if($jsid>0){ //avoid null thus throwing db error
			$insert = $this->db->insert('js_bio',$bio);
			return $insert;
		}else{
			return FALSE;
		}
	}

	function update_bio($jsid){
		$bio = array(
			'dob'=>$this->input->post('dob'),
			'nationality'=>$this->input->post('nationality'),
			'nation_id'=>$this->input->post('nation_id'),
			'dl_no'=>$this->input->post('dl_no'),
			'passport'=>$this->input->post('passport'),
			'languages'=>$this->input->post('languages'),
			'weight'=>$this->input->post('weight'),
			'height'=>$this->input->post('weight'),
			'url'=>$this->input->post('url'),
			'gender'=>$this->input->post('gender'),
			'religion'=>$this->input->post('religion')
		);
		
		if($jsid>0){ //avoid null thus throwing db error
			$this->db->where('jsid',$jsid);
			$update = $this->db->update('js_bio',$bio);
			return $update;
		}else{
			return FALSE;
		}
	}


	function insert_edu($jsid,$eid){
		$edu = array(
			'edu_level_id'=>$this->input->post('edu_level_id'),
			'institution'=>$this->input->post('institution'),
			'location'=>$this->input->post('location'),
			'email'=>$this->input->post('email'),
			'website'=>$this->input->post('website'),
			'course'=>$this->input->post('course'),
			'course_catid'=>$this->input->post('course_catid'),
			'performance'=>$this->input->post('performance'),
			'from_date'=>$this->input->post('from_date'),
                        'to_date'=>$this->input->post('to_date'),
			'jsid'=>$jsid
		);
		if($jsid>0){
			if($eid==0){ //new data
				$insert = $this->db->insert('education',$edu);
			}
			else { //update existing data
				$this->db->where('jsid',$jsid);
				$this->db->where('eid',$eid);
				$insert = $this->db->update('education',$edu); //though not really insert, but for the save of refactoring
			}
			return $insert;
		}else{
			return FALSE;
		}
	}

	function insert_jexp($jsid,$jeid=0){
		$jexp = array(
			'organization'=>$this->input->post('organization'),
			'location'=>$this->input->post('location'),
			'position'=>$this->input->post('position'),
			'responsibilities'=>$this->input->post('responsibilities'),
			'highlights'=>$this->input->post('highlights'),
			'from_date'=>$this->input->post('from_date'),
			'to_date'=>$this->input->post('to_date'),
			'jsid'=>$jsid
		);
		if($jsid>0){
			if($jeid==0){
				$insert = $this->db->insert('job_experience',$jexp);
			}else{
				$this->db->where('jsid',$jsid);
				$this->db->where('jeid',$jeid);
				$insert = $this->db->update('job_experience',$jexp); 
			}
			return $insert;
		}else{
			return FALSE;
		}
	}
	function insert_int($jsid){
		$int = array(
			'interest'=>$this->input->post('interest'),
			'jsid'=>$jsid
		);
		if($jsid>0){
			$insert = $this->db->insert('interest',$int);
			return $insert;
		}else{
			return FALSE;
		}
	}

	function insert_skil($jsid){
		$int = array(
			'skill'=>$this->input->post('skill'),
			'jsid'=>$jsid
		);
		if($jsid>0){
			$insert = $this->db->insert('skill',$int);
			return $insert;
		}else{
			return FALSE;
		}
	}

	function insert_mem($jsid){
		$mem = array(
			'organization'=>$this->input->post('organization'),
			'position'=>$this->input->post('position'),
			'url'=>$this->input->post('url'),
			'from_date'=>$this->input->post('from_date'),
			'to_date'=>$this->input->post('to_date'),
			'jsid'=>$jsid
		);
			
		if($jsid>0){
			$insert = $this->db->insert('membership',$mem);
			return $insert;
		}else{
			return FALSE;
		}
	}

	function insert_resp($jsid){
		$resp = array(
			'organization'=>$this->input->post('organization'),
			'position'=>$this->input->post('position'),
			'url'=>$this->input->post('url'),
			'from_date'=>$this->input->post('from_date'),
			'to_date'=>$this->input->post('to_date'),
			'jsid'=>$jsid
		);
			
		if($jsid>0){
			$insert = $this->db->insert('responsibility',$resp);
			return $insert;
		}else{
			return FALSE;
		}
	}

	function insert_awd($jsid){
		$awd = array(
			'award_title'=>$this->input->post('award_title'),
			'award_year'=>$this->input->post('award_year'),
			'award_desc'=>$this->input->post('award_desc'),
			'organization'=>$this->input->post('organization'),
			'jsid'=>$jsid
		);
			
		if($jsid>0){
			$insert = $this->db->insert('award',$awd);
			return $insert;
		}else{
			return FALSE;
		}
	}


	function insert_ref($jsid){
		$ref = array(
			'name'=>$this->input->post('name'),
			'position'=>$this->input->post('position'),
			'organization'=>$this->input->post('organization'),
			'location'=>$this->input->post('location'),
			'email'=>$this->input->post('email'),
			'phone'=>$this->input->post('phone'),
			'jsid'=>$jsid
		);
		if($jsid>0){
			$insert = $this->db->insert('referee',$ref);
			return $insert;
		}else{
			return FALSE;
		}
	}
	function get_js_basic($jsid){
		$this->db->where('jsid',$jsid);
		return $this->db->get('jobseeker');
	}

	function get_js_bio($jsid){
		$this->db->where('jsid',$jsid);
		return $this->db->get('js_bio');
	}

	function get_edu($jsid,$eid=0){
		$this->db->where('jsid',$jsid);
		if($eid != 0){
			$this->db->where('eid',$eid);
		}
		$this->db->join('edu_level','edu_level.edu_level_id=education.edu_level_id','left');
		$this->db->order_by('from_date','desc');
		return $this->db->get('education');
	}

	function get_exp($jsid,$jeid=0){
		$this->db->where('jsid',$jsid);
		if($jeid != 0){
			$this->db->where('jeid',$jeid);
		}
		$this->db->order_by('from_date','desc');
		return $this->db->get('job_experience');
	}

	function get_int($jsid){
		$this->db->where('jsid',$jsid);
		return $this->db->get('interest');
	}

	function get_skill($jsid){
		$this->db->where('jsid',$jsid);
		return $this->db->get('skill');
	}

	function get_award($jsid){
		$this->db->where('jsid',$jsid);
		$this->db->order_by('award_year','desc');
		return $this->db->get('award');
	}

	function get_mem($jsid){
		$this->db->where('jsid',$jsid);
		return $this->db->get('membership');
	}

	function get_res($jsid){
		$this->db->where('jsid',$jsid);
		return $this->db->get('responsibility');
	}

	function get_ref($jsid){
		$this->db->where('jsid',$jsid);
		return $this->db->get('referee');
	}

	//audit tables
	function audit_profile_js($jsid,$item,$action){
		$sql = "insert into audit_profile_js(jsid,item,add_edit)values('$jsid','$item','$action')";
		return $this->db->query($sql);
	}
	
	function report($item,$jsid){
		if($item=='pc'){
			$sql = "SELECT  count(distinct item) as count FROM `audit_profile_js` WHERE jsid = '".$jsid."' and item !=10";
			return $this->db->query($sql);
		}
		if($item=='shortlist'){
			$sql ="SELECT count(distinct jadid) as count FROM `shortlist` WHERE jsid='".$jsid."'";
			return $this->db->query($sql);
		}
		if($item=='complete'){
			$sql = "SELECT * FROM `audit_profile_js` WHERE item='1' and jsid='".$jsid."'";
			if($this->db->query($sql)){
				return TRUE;
			}else{
				return FALSE;
			}
		}
		
		if($item =='active'){
			$sql = "select count(active) as count from jobseeker WHERE active = 1 and jsid='".$jsid."'";
			return $this->db->query($sql);
		}
		
		if($item == 'profile_views'){
			$sql ="SELECT count(distinct item) as count FROM `audit_profile_js` WHERE item = 10 AND jsid='".$jsid."'";
			return $this->db->query($sql);
		}
	}
}



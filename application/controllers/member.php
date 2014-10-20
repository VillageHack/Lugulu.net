<?php
class Member extends Controller{
	function Member(){
		parent::Controller();
		$this->is_logged_in();
		$this->output->enable_profiler(FALSE);
		$this->load->model('member_model');
	}

	function is_logged_in(){
		$is_logged_in = $this->session->userdata('is_logged_in');
		if(!isset($is_logged_in)||$is_logged_in != true){
			redirect('login');
		}
	}

	function profile($mode1='view',$mid,$mode2='f'){
		if($mode1=='view'){
			$data['mid'] = $mid;
			$data['main_content']='member/profile_view';
			$data['profile']= $this->member_model->get_profile($mid);
			$data['title'] = "Member Profile";
			$this->load->view('includes/template',$data);
		}
		if($mode1=='edit' && $mode2=='f'){
			$data['mid'] = $mid;
			$data['main_content']='member/profile_edit';
			$data['profile']= $this->member_model->get_profile($mid);
			$data['title'] = "Member Profile Edit";
			$this->load->view('includes/template',$data);
		}

		if($mode1=='edit' && $mode2=='s'){
			//field name, error message, validation rule
			$this->form_validation->set_rules('fb','Facebook Link','trim');
			$this->form_validation->set_rules('twitter','Twitter link','trim');
			$this->form_validation->set_rules('profession','Profession','trim');
			$this->form_validation->set_rules('pri_school','Primary School','trim');
			$this->form_validation->set_rules('high_school','High School','trim');
			$this->form_validation->set_rules('course','Course','trim');

			
			if($this->form_validation->run()==FALSE){
				$this->profile('edit',$mid,'f');
			}
			else {
				$update = $this->member_model->update_profile($mid);
				if($update){
					$this->session->set_flashdata('success','Profile updating successfully!');
				}else{
					$this->session->set_flashdata('fail','Profile updating failed, try again!');
				}
				redirect('member/profile/view/'.$mid);
			}
		}

	}
	
	function view($mid=0){
		if($mid==0){
			$data['main_content']='member/view_all';
			$data['members']= $this->member_model->get_all();
			$data['title'] = "All Villagers";
			$this->load->view('includes/template',$data);
		}
	}
}

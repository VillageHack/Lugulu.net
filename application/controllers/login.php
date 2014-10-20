<?php
class Login extends Controller {
	function Login(){
		parent::Controller();
		$this->output->enable_profiler(FALSE);
		$this->load->model('profile_model');

	}

	function index(){
		$data['main_content']='login/login_form';
		$data['title'] = "Login";
		$this->load->view('includes/template',$data);
	}

	function validate_credentials(){
		$this->load->model('member_model');
		$query = $this->member_model->validate();

		if($query) //if the user's credentials validated...
		{
			$query1 = $this->member_model->get_basic($this->input->post('email'));
			foreach ($query1->result() as $row) {
				$member_basic = array('first_name' => $row->f_name,
						'last_name' =>$row->l_name,
						'email'=>$row->email,
						'phone'=>$row->phone,
						'time_reg'=>$row->time_reg,
						'active'=>$row->active,
						'mid'=>$row->mid,
						'is_logged_in'=>TRUE
				);
			}

			$this->session->set_userdata($member_basic);
				
			redirect('home');
		}
		else {
			$this->index();
		}
	}

	function signup(){
		$data['title']='Member SignUp!';
		$data['main_content']='login/signup_form';
		$this->load->view('includes/template',$data);
	}

	function register(){
		$this->load->library('form_validation');
		//field name, error message, validation rule
		$this->form_validation->set_rules('first_name','Name','trim|required');
		$this->form_validation->set_rules('last_name','Last Name','trim|required');
		$this->form_validation->set_rules('email','Email Address','trim|required|valid_email');
		$this->form_validation->set_rules('phone','Phone','trim|required');
		$this->form_validation->set_rules('password','Password','trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('password2','Password Confirmation','trim|required|matches[password]');

		if($this->form_validation->run()==FALSE){
			$this->signup();
		}
		else {
			$this->load->model('member_model');
			$this->load->model('mail_model');
			if($query=$this->member_model->create_member()){
				$query1 = $this->member_model->get_basic($this->input->post('email'));
				foreach ($query1->result() as $row) {
					$member_basic = array('first_name' => $row->f_name,
							'last_name' =>$row->l_name,
							'mid'=>$row->mid
					);
				}
				$to = $this->input->post('email');
				$subject = 'Thank you for Signing Up!';
				$msg = "
Hallo ".$this->input->post('first_name').",
Thank you for registering at Lugulu.net. You are now fully part of this initiative. Welcome!

The following will be your login credentials:
Email: ".$this->input->post('email').
"
Password: ".$this->input->post('password')."

Now please confirm your subscriptionm to confirm your subscription, click on this link:
http://beta.lugulu.net/login/confirm/".$member_basic['mid'].
"

If you are sure you did not subscribe, click the following link to unsubscribe:
http://beta.lugulu.net/login/unsub/".$member_basic['mid']
				."

Thank you!

Support Team,
Lugulu.net";
				$this->mail_model->send_mail($to,$subject,$msg);
				$this->mail_model->send_mail("profnandaa@gmail.com",$subject,$msg);
				$data['main_content']='login/signup_successful';
				$data['email']=$this->input->post('email');
				$data['title']="Registration Successful";
				$this->load->view('includes/template',$data);
			}
			else {
				$this->signup();
			}
		}
	}

	function subscribe_hr(){
		$this->load->library('form_validation');
		//field name, error message, validation rule
		$this->form_validation->set_rules('name','Name','trim|required');
		$this->form_validation->set_rules('website','Website','trim');
		$this->form_validation->set_rules('email','Email Address','trim|required|valid_email');
		$this->form_validation->set_rules('tel','Tel','trim');
		$this->form_validation->set_rules('location','Location','trim');
		$this->form_validation->set_rules('cp_name','Contact person name','trim|required');
		$this->form_validation->set_rules('cp_email','Contact person email','trim|required|valid_email');
		$this->form_validation->set_rules('cp_phone','Contact person phone','trim|required');
		$this->form_validation->set_rules('password','Password','trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('password2','Password Confirmation','trim|required|matches[password]');

		if($this->form_validation->run()==FALSE){
			$this->signup('hr');
		}
		else {
			$this->load->model('subscribe_model');
			$this->load->model('mail_model');
			if($query=$this->subscribe_model->create_subscriber_hr()){
				$query1 = $this->subscribe_model->get_hr_basic($this->input->post('cp_email'));
				foreach ($query1->result() as $row) {
					$hr_basic = array('name' => $row->name,
							'eid'=>$row->eid
					);
				}
				$to = $this->input->post('cp_email').",".$this->input->post('email');
				$subject = 'Subscription';
				$msg = "
Hallo ".$this->input->post('name').",
Congratulations! You have now subscribed for our services. The following will be your login credentials:
Email: ".$this->input->post('email').
"
Password: ".$this->input->post('password')."

Now please confirm your subscription. To confirm your subscription, click on this link:
http://itech2020.com/getkazi/login/confirm/hr/".$hr_basic['eid'].
"

If you are did not subscribe, click the following link to unsubscribe:
http://itech2020.com/getkazi/login/unsub/hr/".$hr_basic['eid']
				."

Thank you!

Support Team,
GetKazi Inc.";
				$this->mail_model->send_mail($to,$subject,$msg);
				$data['main_content']='login/signup_successful';
				$data['email']=$this->input->post('cp_email');
				$data['title']="Registration Successful";
				$this->load->view('includes/template',$data);
			}
			else {
				$this->signup('hr');
			}
		}
	}

	function confirm($mid){
		$this->load->model('member_model');
		$conf = $this->member_model->confirm($mid);
		if($conf){
			$data['main_content']='login/confirm';
			$data['title']="Confirm Successful";
			$this->load->view('includes/template',$data);
		}else{
			redirect('home');
		}
	}

	function unsub($type,$jsid){
		redirect('home');
	}

	function logout(){
		$this->session->sess_destroy();
		redirect('home');
	}
}

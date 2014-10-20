<?php
class Home extends Controller {
	function Home(){
		parent::Controller();
		$this->output->enable_profiler(FALSE);
		$this->load->model('member_model');
	}
	function index(){
		$data['main_content']='home/home_view';
		$data['villagers'] = $this->member_model->get_villager_count();
		$data['friends'] = $this->member_model->get_non_villager_count();
		$data['title'] = 'Home';
		$this->load->view('includes/template',$data);
	}

	function terms(){
		$data['main_content'] = 'misc/terms';
		$data['title'] = 'Terms and Conditions';
		$this->load->view('includes/template',$data);
	}
	
	function about(){
		$data['main_content'] = 'home/about';
		$data['title'] = 'About Lugulu.net';
		$this->load->view('includes/template',$data);
	}
}

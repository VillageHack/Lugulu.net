<?php
class News extends Controller {
	function News(){
		parent::Controller();
		$this->output->enable_profiler(FALSE);
		$this->load->model('member_model');
		$this->load->model('news_model');
	}

	function index(){
		$data['main_content']='news/index';
		$data['title'] = 'Village News';
		$data['this_week'] = $this->news_model->this_week_news();
		$data['other']=$this->news_model->other_news();
		$data['news_count']=$this->news_model->all_news()->num_rows;
		$this->load->view('includes/template',$data);
	}

	function post(){
		$this->form_validation->set_rules('title','Title','trim|required');
		$this->form_validation->set_rules('news','News Item','trim|required');
		if($this->form_validation->run()==FALSE){
			$this->index();
		}
		else {
			$this->news_model->post_news($this->session->userdata('mid'));
			redirect('news');
		}
	}
	
	function view($nid){
		$data['main_content']='news/view';
		$data['title'] = 'Village News';
		$data['this_week'] = $this->news_model->this_week_news();
		$data['other']=$this->news_model->other_news();
		$data['news_count']=$this->news_model->all_news()->num_rows;
		$data['news']=$this->news_model->get_news($nid);
		$this->load->view('includes/template',$data);
	}
}

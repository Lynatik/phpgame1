<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Log extends CI_Controller {
	public function reg() {
		$this->load->view('log/reg');
	}

	public function in() {
		$this->load->view('log/login');
	}

	public function out() {
		$this->auth->logout();
		redirect('/', 'refresh');
	}
}

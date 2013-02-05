<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {
	public function index() {
		$this->db->where('is_online', TRUE);
		$this->db->from('account');
		$online = $this->db->count_all_results();

		$this->load->view('main', array(
			'online' => $online
		));
	}
}

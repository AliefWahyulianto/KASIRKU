<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * @property CI_Input $input
 * @property User_m $user_m
 */
class Auth extends CI_Controller {

	public function login()
	{
		$this->load->view('login');
	}
	public function process()
	{
		$post = $this->input->post(null, TRUE);
		if(isset($post['login'])){
			$this->load->model('user_m');
			$querry = $this->user_m->login($post);
			if ($querry->num_rows() > 0 ){
				echo "login berhasil";
			} else{ echo "login gagal" ;
			}
		}
	}
}

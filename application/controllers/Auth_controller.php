<?php
defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);

defined('SITE_ROOT') ? null :
define('SITE_ROOT', DS.'sample'.DS.'samples'.DS.'samples'.DS.'samples');
defined('LIB_PATH') ? null : define('LIB_PATH', SITE_ROOT.DS.'includes');

class Auth_controller extends CI_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->load->library('form_validation');
    $this->load->model('login_model');
  }

  function index(){
    $this->load->view('login');
  }

  function proses_login(){
    $username = $this->input->post('username');
    $password = $this->input->post('password');
    $submit = $this->input->post('submit');

    if (isset($submit)){
      $cek_login = $this->login_model->proses_login($username, $password);
      if ($cek_login->num_rows() > 0){
        $data = $cek_login->row_array();
        if ($data['level'] == "admin"){
          $this->session->set_userdata('status', 'masuk');
          $this->session->set_userdata('name', $data['nama']);
          $this->session->set_userdata('username', $data['username']);
          $this->session->set_userdata('password', $data['password']);
          $this->session->set_userdata('level', $data['level']);
          $this->session->set_userdata('creator', $data['creator']);
          $this->session->set_userdata('created', $data['created']);
          $this->session->set_userdata('created_update', $data['created_update']);
          $this->session->set_userdata('creator_update', $data['creator_update']);
          $this->session->set_flashdata('success', 'Login berhasil!');
          redirect('admin/Overview');
        }elseif ($data['level'] == "user"){
          $this->session->set_userdata('status', 'masuk');
          $this->session->set_userdata('name', $data['nama']);
          $this->session->set_userdata('username', $data['username']);
          $this->session->set_userdata('password', $data['password']);
          $this->session->set_userdata('level', $data['level']);
          $this->session->set_userdata('creator', $data['creator']);
          $this->session->set_userdata('created', $data['created']);
          $this->session->set_userdata('created_update', $data['created_update']);
          $this->session->set_userdata('creator_update', $data['creator_update']);
          $this->session->set_flashdata('success', 'Login berhasil!');
          redirect('user/Overview');
        }
      }else {
        $this->session->set_flashdata('error', 'Username atau Password salah');
        $this->load->view('login');
      }
    }
  }

  public function logout()
    {
      $this->session->sess_destroy();
      $this->load->view('login');
    }
}

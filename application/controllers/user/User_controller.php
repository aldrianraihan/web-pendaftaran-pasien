<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_controller extends CI_Controller {
  function __construct(){
    parent::__construct();
    $this->load->model('user/crud_model');
    $this->load->helper('url');
    $this->load->helper('date');
    $this->load->library('form_validation');

    if ($this->session->userdata('status') != "masuk" && $this->session->userdata('level') != "approval") {
      $this->session->set_flashdata('error','Silahkan login terlebih dahulu!');
      redirect(base_url());
    }
  }

  function input_appointment(){
    $nama = $this->input->post('nama');
    $email = $this->input->post('email');
    $no_telp = $this->input->post('no_telp');
    $petugas = $this->input->post('petugas');
    $pesan = $this->input->post('pesan');
    $creator = $this->input->post('creator');
    $created = $this->input->post('created');
    $creator_update = '';
    $created_update = '';
    $submit = $this->input->post('submit');

    $data = array(
      'nama' => $nama,
      'email' => $email,
      'no_telp' => $no_telp,
      'petugas' => $petugas,
      'pesan' => $pesan,
      'creator' => $creator,
      'created' => $created,
      'creator_update' => $creator_update,
      'created_update' => $created_update
    );

    if (isset($submit)) {
      $this->crud_model->input_appointment($data,'appointment');
      if($this->db->affected_rows() > 0){
        echo 'Data berhasil diinput';
        redirect('user/Overview');
      } else {
        // $this->session->set_flashdata('error', 'Comment gagal ditambah');
        echo "<script>javascript:window.history.go(-1);</script>";
      }
    }
  }
}

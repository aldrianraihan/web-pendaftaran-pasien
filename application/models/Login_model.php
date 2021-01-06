<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Login_model extends CI_Model {

  function proses_login($username,$password){
      $sql = $this->db->query("SELECT * FROM user WHERE username = '$username' AND password = '$password' LIMIT 1");
      return $sql;
  }
}

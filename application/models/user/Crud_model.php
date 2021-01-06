<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Crud_model extends CI_Model
{
  function input_appointment($data,$table){
    $this->db->insert($table,$data);
  }
}

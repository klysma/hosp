<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Newsletter_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function get_newsletters()
	{
		$this->db->select('*');
		$this->db->from('newsletter');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}
}

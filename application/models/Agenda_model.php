<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Agenda_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get_agendas()
    {
        $this->db->select('*');
        $this->db->from('agendas');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            $data = $query->result();
            foreach ($data as $key => $item) {
                $data[$key]->horarios = [];
                $this->db->select('*');
                $this->db->from('agendas_horarios');
                $this->db->where('agendas_id', $item->id);
                $horarios = $this->db->get();
                if($horarios->num_rows() > 0){
                    $data[$key]->horarios = $horarios->result();
                }
            }
            return $data;
        }
        return FALSE;
    }
}

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
            return $data;
        }
		return [];
	}

	public function salvar_horario($dados, $id=NULL)
    {
        if($id){
            $this->db->where('id', $id);
            if($this->db->update('agendas_horarios', $dados)){
                return $id;
            }
            return 0;
        }

        if($this->db->insert('agendas_horarios', $dados)){
            return $this->db->insert_id();
        }
        return 0;
    }

    public function get_agenda($id=null)
    {
        if($id){
            $this->db->select('*');
            $this->db->from('agendas');
            $this->db->where('agendas.id', $id);
            $query = $this->db->get();
            if($query->num_rows() > 0){
            	$data = $query->row();
                $data->horarios = [];
            	$this->db->select('*');
            	$this->db->from('agendas_horarios');
            	$this->db->where('agendas_id', $data->id);
            	$horarios = $this->db->get();
            	if($horarios->num_rows() > 0){
                	$data->horarios = $horarios->result();
                }
                return $data;
            }
            return FALSE;
        }
    }

    function excluir_horario($id){
        $this->db->where('id', $id);
        if($this->db->delete('agendas_horarios')){
            return TRUE;
        }else{
            return FALSE;
        }
    }
}

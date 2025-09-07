<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @property Template $template
 */
class Supplier extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('template'); // Load library Template
    }

    public function index()
    {
        $this->template->load('template', 'supplier/supplier_data');
    }
}

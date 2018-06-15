<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Launch Controller.
 *
 * This is the Main Controller for the Application.
 *
 * @author Conor O'Mahony
 */

class Launch extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        // load HTML helper for use in the launch view
        $this->load->helper('html');
    }

    public function index()
    {
        $this->load->view('launch_view');
    }
}

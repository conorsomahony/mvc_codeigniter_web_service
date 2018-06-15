<?php
/**
 * Author: Conor O'Mahony
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490 
 * Date: 2018/06/15
 */

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
        // load helpers for use in the launch view
        $this->load->helper('html');
        $this->load->helper('url');
    }

    public function index()
    {
        $this->load->view('launch_view');
    }
}

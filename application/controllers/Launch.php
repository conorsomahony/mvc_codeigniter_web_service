<?php
/**
 * This file contains the class for the main Launch Controller of the application.
 * 
 * @author Conor O'Mahony <conor.omahony@digitalskillsacademy.me>
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490 
 * Date: 2018/06/15
 */

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Launch Controller.
 *
 * This is the Main Controller for the Application, which provides the launch view.
 */
class Launch extends CI_Controller
{

    /**
     * Constructor for launch controller. Load helpers used in launch view.
     */
    public function __construct()
    {
        parent::__construct();
        // load helpers for use in the launch view
        $this->load->helper('html');
        $this->load->helper('url');
        $this->load->helper('form');

        // load model
        $this->load->model('AnimalModel');
    }

    /**
     * Default method for launch. Load the launch view. 
     *
     * @return void
     */
    public function index()
    {
        // get the list of distinct countries to populate the dropdown in the view
        $data['countries'] = $this->AnimalModel->getDistinctCountries();
        $this->load->view('launch_view', $data);
    }
}

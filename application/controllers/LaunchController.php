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
 * This is the Front End Controller for the Application, which provides the launch view.
 */
class LaunchController extends CI_Controller
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
        $this->load->model('LaunchModel');
    }

    /**
     * Default method for launch. Load the launch view. 
     *
     * @return void
     */
    public function index()
    {
        // get the list of countries and species to populate the dropdown in the view
        $data['countries'] = $this->LaunchModel->getAllCountries();
        $data['allSpecies'] = $this->LaunchModel->getAllSpecies();
        $this->load->view('launch_view', $data);
    }

    /**
     * This is just a helper method for calling getAnimalsBySpecies endpoint via the Launch view form.
     *
     * @return void
     */
    public function getAnimalsBySpeciesHelper()
    {
        // form input
        $species = $this->input->get('species');
        //redirect to API
        redirect('/AnimalWebServiceController/getAnimalsBySpecies/' . $species);

    }

    /**
     * This is just a helper method for calling getSpeciesByCountry endpoint via the Launch view form.
     */
    public function getSpeciesByCountryHelper()
    {
        // form input
        $country = $this->input->get('country');
        // redirect to API
        redirect('/AnimalWebServiceController/getSpeciesByCountry/' . $country);
    }
}

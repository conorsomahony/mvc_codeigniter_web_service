<?php
/**
 * This file contains the class for the Animal Web Service Controller.
 *
 * @author Conor O'Mahony <conor.omahony@digitalskillsacademy.me>
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490
 * Date: 2018/06/15
 */

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Animal Web Service Controller.
 *
 * This is the Animal Web Service Controller, providing the API endpoints.
 */
class AnimalWebServiceController extends CI_Controller
{
    /**
     * Animal Web Service Controller constructor. Loads the model.
     */
    public function __construct()
    {
        parent::__construct();

        // load model
        $this->load->model('AnimalModel');
        // for using redirect
        $this->load->helper('url');
    }

    /**
     * Web Service API Endpoint: Get all animal data.
     *
     * @return JSON encoded data matching the query.
     */
    public function getAllAnimalData()
    {
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getAllAnimalData());
        echo $result;
        return $result;
    }

    /**
     * Web Service API Endpoint: Get all animal data for all animals of a given species.
     *
     * @return JSON encoded data matching the query.
     */
    public function getAnimalsBySpecies($species)
    {
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getAnimalsBySpecies($species));
        echo $result;
        return $result;
    }

    /**
     * Web Service API Endpoint: Get all animal data for animals from the given country.
     *
     * @return JSON encoded data matching the query.
     */
    public function getSpeciesByCountry($country)
    {
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getSpeciesByCountry($country));
        echo $result;
        return $result;
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
        redirect('/AnimalWebServiceController/getAnimalsBySpecies/'.$species);

    }

    /**
     * This is just a helper method for calling getSpeciesByCountry endpoint via the Launch view form.
     */
    public function getSpeciesByCountryHelper()
    {
        // form input
        $country = $this->input->get('country');
        // redirect to API
        redirect('/AnimalWebServiceController/getSpeciesByCountry/'.$country);
    }
}
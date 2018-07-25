<?php
/**
 * This file contains the class for the Animal Web Service Controller.
 *
 * @author Conor O'Mahony <conor.omahony@digitalskillsacademy.me>
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490
 * Date: 2018/06/15
 */
header('Access-Control-Allow-Origin: *');
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
        return $this->output
            ->set_content_type('application/json')
            ->set_output($result);
    }

    /**
     * Web Service API Endpoint: Get all animal data with additional species data.
     *
     * @return JSON encoded data matching the query.
     */
    public function getAllAnimalSpeciesData()
    {
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getAllAnimalSpeciesData());
        return $this->output
            ->set_content_type('application/json')
            ->set_output($result);
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
}

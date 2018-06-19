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
class AnimalWebService extends CI_Controller
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
     * Web Service API Endpoint 1: Simply get all animal data.
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
     * Web Service API Endpoint 2: Search for animal data by breed, name.
     *
     * @return JSON encoded data matching the query.
     */
    public function getMatchingAnimals()
    {
        // sanitise the form input
        $searchTerm = $this->input->get('searchTerm');
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getMatchingAnimals($searchTerm));
        echo $result;
        return $result;
    }

    /**
     * Web Service Bonus API Endpoint: Get all animal data for animals from the given country.
     *
     * @return JSON encoded data matching the query.
     */
    public function getByCountry()
    {
        $country = $this->input->get('country');
        $result = json_encode($this->AnimalModel->getByCountry($country));
        echo $result;
        return $result;
    }
}

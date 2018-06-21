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
    public function getBySpecies($species)
    {
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getBySpecies($species));
        echo $result;
        return $result;
    }

    /**
     * Web Service API Endpoint: Get all animal data for animals from the given country.
     *
     * @return JSON encoded data matching the query.
     */
    public function getByCountry($country)
    {
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getByCountry($country));
        echo $result;
        return $result;
    }

    /**
     * Web Service API Endpoint: Search for animal data using search term
     *
     * @return JSON encoded data matching the query.
     */
    public function getMatchingAnimals($searchTerm)
    {
        // query the model and encode the response as JSON
        $result = json_encode($this->AnimalModel->getMatchingAnimals($searchTerm));
        echo $result;
        return $result;
    }


    /**
     * Helper method for calling getMatchingAnimals endpoint via the Launch page form.
     */
    public function getMatchingAnimalsHelper()
    {
        // form input
        $searchTerm = $this->input->get('searchTerm');
        return $this->getMatchingAnimals($searchTerm);
    }

    /**
     * Helper method for calling getBySpecies endpoint via the Launch page form.
     *
     * @return void
     */
    public function getBySpeciesHelper()
    {
        // form input
        $species = $this->input->get('species');
        return $this->getBySpecies($species);
    }

    /**
     * Helper method for calling getByCountry endpoint via the Launch page form.
     */
    public function getByCountryHelper()
    {
        // form input
        $country = $this->input->get('country');
        return $this->getByCountry($country);
    }
}

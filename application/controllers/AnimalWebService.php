<?php

/**
 * Author: Conor O'Mahony
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490
 * Date: 2018/06/15
 */

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Animal Web Service Controller.
 *
 * This is the Animal Web Service Controller, providing the API endpoints.
 *
 * @author Conor O'Mahony
 */
class AnimalWebService extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        // load model
        $this->load->model('AnimalModel');
    }

    /**
     * Web Service API Endpoint 1: Get all animals.
     */
    public function getAllAnimals()
    {
        echo "endpoint 1";
        // echo json_encode($this->AnimalModel->getAllAnimals());
    }

    /**
     * Web Service API Endpoint 2: Search animal breed name.
     */
    public function testEndPoint2()
    {
        echo "endpoint 2";
    }
}


<?php

/**
 * This file contains the class for the Launch Model.
 *
 * @author Conor O'Mahony <conor.omahony@digitalskillsacademy.me>
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490
 * Date: 2018/06/15
 */

/**
 * Launch Model.
 *
 * This is the Model class used in the view.
 */
class LaunchModel extends CI_Model
{
    /**
     * LaunchModel constructor
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Query the database to get all species names in the database, ordered alphabetically.
     *
     * @return array
     */
    public function getAllSpecies()
    {
        $this->db->select('name, id');
        $this->db->order_by('name', 'ASC');
        $query = $this->db->get('species');
        return $query->result_array();
    }

    /**
     * Query the database to get all country names in the database, ordered alphabetically.
     *
     * @return array
     */
    public function getAllCountries()
    {
        $this->db->select('name, id');
        $this->db->order_by('name', 'ASC');
        $query = $this->db->get('countries');
        return $query->result_array();
    }
}
<?php
/**
 * This file contains the class for the Animal Model.
 *
 * @author Conor O'Mahony <conor.omahony@digitalskillsacademy.me>
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490
 * Date: 2018/06/15
 */

/**
 * Animal Model.
 *
 * This is the Animal Model class.
 */
class AnimalModel extends CI_Model
{

    /**
     * AnimalModel constructor
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Query the Database to get all animals.
     *
     * @return array
     */
    public function getAllAnimalData()
    {
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the Database to get all animals where "breed" or "name" match the search term.
     *
     * @param string $searchTerm the term to match.
     * @return array
     */
    public function getMatchingAnimals($searchTerm)
    {
        $this->db->like('breed', $searchTerm);
        $this->db->or_like('name', $searchTerm);
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the database to get all animals from the given country.
     *
     * @param string $country
     * @return array
     */
    public function getByCountry($country)
    {
        $this->db->select('name, breed, country');
        $this->db->where('country', $country);
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the database to get all distinct country names in the database, ordered alphabetically.
     *
     * @return array
     */
    public function getDistinctCountries()
    {
        $this->db->distinct();
        $this->db->select('country');
        $this->db->order_by('country', 'ASC');
        $query = $this->db->get('animals');
        return array_column($query->result_array(), 'country');
    }
}

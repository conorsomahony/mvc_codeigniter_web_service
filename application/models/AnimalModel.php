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
     * Query the Database to get all data from the animals.
     *
     * @return array
     */
    public function getAllAnimalData()
    {
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the Database to get all animals where the animal name or description match the search term.
     *
     * @param string $searchTerm the term to match.
     * @return array
     */
    public function getMatchingAnimals($searchTerm)
    {
        $term = $this->db->escape_like_str($searchTerm);
        $this->db->like('name', $searchTerm);
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the database to get all animals of a given species.
     *
     * @param string $country
     * @return array
     */
    public function getBySpecies($species)
    {
        $this->db->where('species_id', $species);
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the database to get data from species from the given country.
     *
     * @param string $country
     * @return array
     */
    public function getByCountry($country)
    {
        $this->db->select('species.name, species.description');
        $this->db->from('species');
        $this->db->join('habitats', 'species.id = habitats.species_id');
        $this->db->where('habitats.country_id', $country);
        $query = $this->db->get();
        // echo $this->db->last_query();
        return $query->result();
    }

}

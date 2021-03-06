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
     * Query the Database to get all data from the animals table.
     *
     * @return array
     */
    public function getAllAnimalData()
    {
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the Database to get all data from the animals table with additional species data.
     *
     * @return array
     */
    public function getAllAnimalSpeciesData()
    {
        $sql = "SELECT animals.id, animals.name, animals.description, animals.sex, animals.image, species.name as species_name FROM `animals`, `species` WHERE animals.species_id = species.id ORDER BY animals.name ASC";
        $query = $this->db->query($sql);
        return $query->result();
    }

    /**
     * Query the database to get all animals of a given species.
     *
     * @param string $country
     * @return array
     */
    public function getAnimalsBySpecies($species)
    {
        $this->db->where('species_id', $species);
        $query = $this->db->get('animals');
        return $query->result();
    }

    /**
     * Query the database to get species data from species from the given country.
     *
     * @param string $country
     * @return array
     */
    public function getSpeciesByCountry($country)
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

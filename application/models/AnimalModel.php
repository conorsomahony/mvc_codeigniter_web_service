<?php

/**
 * Author: Conor O'Mahony
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490
 * Date: 2018/06/15
 */

/**
 * Animal Model.
 *
 * This is the Animal Model.
 *
 * @author Conor O'Mahony
 */
class AnimalModel extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getAllAnimals()
    {
        $query = $this->db->get('list_items');
        return $query->result();
    }
}

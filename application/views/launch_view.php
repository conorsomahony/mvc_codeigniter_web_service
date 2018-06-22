<?php

/**
 * This file contains the html content for the main launch view of the application.
 *
 * @author Conor O'Mahony <conor.omahony@digitalskillsacademy.me>
 * Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
 * Student ID: STU-00001490
 * Date: 2018/06/15
 * Refs:
 */
defined('BASEPATH') or exit('No direct script access allowed');

echo doctype('html5');
?>
<html lang="en">

<!-- HEAD -->

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Web Service Information Page</title>
	<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
	<!-- using CI html helper to create links -->
	<?=link_tag('css/lit.css');?>
	<?=link_tag('css/util.css');?>
	<?=link_tag('css/mystyles.css');?>
</head>

<!-- BODY -->

<body class="m0">
	<!-- header -->
	<header class="tc white bg-accent">
		<div class="c">
			<!-- using CI html helper -->
			<?=heading('MVC Application Frameworks', 1, 'class="mega mb0"');?>
			<?=heading('Assessment 1 - CodeIgniter MVC Web Service', 4, 'class="mb1"');?>
		</div>
	</header>
	<!-- end-of header -->

	<!-- main content, container -->
	<main class="c">

		<!-- section - submission details  -->
		<section>
			<!-- use CI html helper-->
			<?= heading('Submission Details', 2, 'class="mb1"'); ?>
			<ul>
				<li>Author: Conor O'Mahony</li>
				<li>Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service</li>
				<li>Student ID: STU-00001490</li>
			</ul>
		</section>

		<!-- section - assessment description  -->
		<section>
			<!-- use CI html helper-->
			<?=heading('Description/Brief', 2, 'class="mb1"');?>
			<ul>
				<li>This is a web service built in PHP using the CodeIgniter framework.</li>
				<li>The web service provides a number of endpoints, where each endpoint is accessible via a URI.</li>
				<li>Each endpoint executes a HTTP GET request to query a MySQL database and return some data in JSON format.</li>
				<li>The data returned describes (ficticious!) animals for adoption, e.g., the animal name, description, sex, species, etc.</li>
				<li>This data <i>could</i> be consumed by a Version 2 of the
					<strong>
						<a class="info" href="https://www.conorsomahony.net/sites/adopt-an-animal/" target="_blank">Adopt-an-Animal</a>
					</strong> mobile web application.
				</li>
				<li>Download MySQL database setup file
					<a class="info" href='<?= base_url("data/adopt_an_animal_dump.sql") ?>'>here</a>.
				</li>
			</ul>
		</section>

		<!-- section - launch web service-->
		<section>
			<?=heading('Web Service Endpoints', 2);?>
			
			<!--  API Endpoint -->
			<div class="card b-accent mb2">
				<h4>API Endpoint - Get all Animal Data</h4>
				<div>
					Get all animal data from the database in JSON format.
				</div>
				<h5 class="mt3">Usage (no parameters)</h5>
				<ul>
					<li><strong><a class="info" href='<?=base_url("index.php/AnimalWebServiceController/getAllAnimalData");?>'>AnimalWebServiceController/getAllAnimalData</a></strong></li>
				</ul>
			</div>

			<!-- API Endpoint -->
			<div class="card b-accent mb2">
				<h4>API Endpoint- Get Animals by Species</h4>
				<div>
					For a given species ID, get data for animals of that species.
				</div>
				<h5 class="mt3">URI format:</h5>
				<ul>
					<li><span class="accent">AnimalWebServiceController/getAnimalsBySpecies/&lt;speciesID&gt;</span></li>
					<li>where <span class="accent">&lt;species_id&gt;</span> is the id of the species
				</ul>
				<h5 class="mt3">Example Usage 1:</h5>
				<ul>
					<li><strong><a class="info" href='<?=base_url("index.php/AnimalWebServiceController/getAnimalsBySpecies/1");?>'>AnimalWebServiceController/getAnimalsBySpecies/1</a></strong></li>
					<li>for species_id =  1</li>
				</ul>
				<h5 class="mt3">Example Usage 2:</h5>
				<!-- using CI form helper - specify method as HTTP GET -->
				<?=form_open('/LaunchController/getAnimalsBySpeciesHelper', array('method' => 'get'))?>
					<div>
						<input type="submit" value="Get by Species" class="pill btn bg-info b-info white mt2 mb2 mr2">
						<!-- Here we use the $allSpecies data passed in by the Launch Controller to populate the dropdown -->
						<select id="species" name="species">
							<?php
foreach ($allSpecies as $species) {
    echo '<option value="' . $species['id'] . '">' . $species['id'] . ' - ' . $species['name'] . '</option>';
}?>
						</select>
					</div>
					<ul>
						<li>(The dropdown box is populated by a list of species and species ids, obtained from the database.)</li>
					</ul>
				</form>
			</div>

			<!-- API Endpoint -->
			<div class="card b-accent mb2">
				<h4>API Endpoint - Get Species by Country</h4>
				<div>
					<ul>
						<li>For a given country ID, get data for species from that country. </li> 
						<li>Note: a country may be home to 0, 1 or more species, and a species may be found in more than one country!</li>
					</ul>
				</div>
				<h5 class="mt3">URI format:</h5>
				<ul>
					<li><span class="accent">AnimalWebServiceController/getSpeciesByCountry/&lt;country_id&gt;</span></li>
					<li>where <span class="accent">&lt;country_id&gt;</span> is the id of the country
				</ul>
				<h5 class="mt3">Example Usage 1:</h5>
				<ul>
					<li><strong><a class="info" href='<?= base_url("index.php/AnimalWebServiceController/getSpeciesByCountry/4"); ?>'>AnimalWebServiceController/getSpeciesByCountry/4</a></strong></li>
					<li>for country_id =  4</li>
				</ul>
				<h5 class="mt3">Example Usage 2:</h5>
				<!-- using CI form helper - specify method as HTTP GET -->
				<?=form_open('/LaunchController/getSpeciesByCountryHelper', array('method' => 'get'))?>
					<div>
						<input type="submit" value="Get by Country" class="pill btn bg-info b-info white mt2 mb2 mr2">
						<!-- Here we use the $countries data passed in by the Launch Controller to populate the dropdown -->
						<select id="country" name="country">
							<?php
foreach ($countries as $country) {
    echo '<option value="' . $country['id'] . '">'. $country['name'] . ' - '. $country['id'] . '</option>';
}?>
						</select>
					</div>
				<ul>
					<li>(The dropdown box is populated by a list of countries and country ids, obtained from the database.)</li>
				</ul>
				</form>
			</div>
		</section>
		<!-- end-of section - launch web service-->

		<!-- section - additional information -->
		<section>
			<?=heading('Additional Information and References', 3, 'class="mb1"');?>
			<ul>
				<li>CSS framework used for styling is lit.css - see
					<a class="info" href="https://ajusa.github.io/lit/docs/lit.html">here.</a>
				</li>
			</ul>
		</section>
		<!-- end-of section - additional information -->
	</main>
	<!-- end-of main -->

	<!-- footer section -->
	<footer class="c">
		<hr>
		<p>Page rendered in
			<strong>{elapsed_time}</strong> seconds.
			<?=(ENVIRONMENT === 'development') ? 'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : ''?>
		</p>
	</footer>
</body>

</html>

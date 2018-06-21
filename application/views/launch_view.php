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
<html>

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
				<?=heading('Assessment 1 - CodeIgniter MVC Web Service', 4, 'class="mb1"'); ?>
		</div>
	</header>
	<!-- end-of header -->

	<!-- main content, container -->
	<main class="c">

		<!-- section - assessment description  -->
		<section>
			<!-- use CI html helper-->
			<?=heading('Description/Brief', 2, 'class="mb1"');?>
				<ul>
					<li>This is a web service built in PHP using the CodeIgniter framework.</li>
					<li>The web service provides a number of endpoints, where each endpoint is accessible via a URI.</li>
					<li>Each endpoint executes a HTTP GET request to query a MySQL database and return some data in JSON format.</li>
					<li>The data returned describes (ficticious!) animals for adoption, e.g., the animal name, description, sex, species, etc.
						<li>This data could be consumed by a Version 2 of the
							<strong>
								<a href="https://www.conorsomahony.net/sites/adopt-an-animal/" target="_blank">Adopt-an-Animal</a>
							</strong> mobile web application.</li>
				</ul>
		</section>

		<!-- section - launch web service-->
		<section>
			<?=heading('Web Service Endpoints', 2);?>
				<!-- Example API Endpoint 1 -->
				<div class="card b-accent mb2">
					<h4>Example Endpoint - Get all Animal Data</h4>
					<ul>
						<li>Just get all animal data from the database in JSON format.</li>
						<li>URI:
							<span class="success">/index.php/AnimalWebServiceController/getAllAnimalData</span>
						</li>
					</ul>
					<h6 class="mt3">Sample Usage</h6>
					<!-- using CI form helper - specify method as HTTP GET -->
					<?=form_open('/AnimalWebServiceController/getAllAnimalData', array('method' => 'get'))?>
						<input type="submit" value="Get All Animals" class="pill btn bg-accent b-accent white mt2 mb2">
						</form>
				</div>

				<!-- API Endpoint 1 -->
				<div class="card b-accent mb2">
					<h4>API Endpoint 1 - Get Animals by Breed</h4>
					<ul>
						<li>For a species ID, get data for all animals of that species.</li>
						<li>URI:
							<span class="success">/index.php/AnimalWebServiceController/getBySpecies/&lt;speciesID&gt;</span>
						</li>
					</ul>
					<h6 class="mt3">Sample Usage</h6>
					<ul>
						<li>(The dropdown box is populated by a list of species obtained from the database.)</li>
					</ul>
					<!-- using CI form helper - specify method as HTTP GET -->
					<?= form_open('/AnimalWebServiceController/getBySpeciesHelper', array('method' => 'get')) ?>
						<div>
							<input type="submit" value="Get by Species" class="pill btn bg-accent b-accent white mt2 mb2 mr2">
							<!-- Here we use the $allSpecies data passed in by the Launch Controller to populate the dropdown -->
							<select id="species" name="species">
								<?php
					foreach ($allSpecies as $species) {
						echo '<option value="' . $species['id'] . '">' . $species['name'] . '</option>';
					} ?>
							</select>
						</div>
						</form>
				</div>

				<!-- API Endpoint 2 -->
				<div class="card b-accent mb2">
					<h4>API Endpoint 2 - Get Species by Country</h4>
					<ul>
						<li>Select a country to get species data from that country.</li>
						<li>URI:
							<span class="success">/index.php/AnimalWebServiceController/getByCountry/&lt;countryID&gt;</span>
						</li>					
					</ul>
					<h6 class="mt3">Sample Usage</h6>
					<ul>
						<li>(The dropdown box is populated by a list of countries obtained from the database.)</li>
					</ul>
					<!-- using CI form helper - specify method as HTTP GET -->
					<?= form_open('/AnimalWebServiceController/getByCountryHelper', array('method' => 'get')) ?>
						<div>
							<input type="submit" value="Get by Country" class="pill btn bg-accent b-accent white mt2 mb2 mr2">
							<!-- Here we use the $countries data passed in by the Launch Controller to populate the dropdown -->
							<select id="country" name="country">
								<?php
					foreach ($countries as $country) {
						echo '<option value="' . $country['id'] . '">' . $country['name'] . '</option>';
					} ?>
							</select>
						</div>
						</form>
				</div>

				<!-- API Endpoint 2 -->
				<div class="card b-accent mb2">
					<h4>API Endpoint 3 - Search Animals using Search Term <span class="bg-success bold white ph1 rounded">Bonus!</span></h4>
					<ul>
						<li>Enter a search term to get all animal data, for animals with
							<i>name</i> matching the search term.</li>
						<li> For example, search part of name like 'J', or full name like 'Daniel'.</li>
						<li>URI:
							<span class="success">/index.php/AnimalWebServiceController/getMatchingAnimals/&lt;searchTerm&gt;</span>
						</li>
					</ul>
					<h6 class="mt3">Sample Usage</h6>
					<!-- using CI form helper - specify method as HTTP GET -->
					<?=form_open('/AnimalWebServiceController/getMatchingAnimalsHelper', array('method' => 'get'))?>
						<div>
							<input type="submit" value="Search for Term" class="pill btn bg-accent b-accent white mt2 mb2 mr2">
							<input type="text" name="searchTerm" id="searchTerm" placeholder="Enter Search Term" required>
						</div>
						</form>
				</div>

		</section>
		<!-- end-of section - launch web service-->

		<!-- section - additional information -->
		<section>
			<?=heading('Additional Information and References', 3, 'class="mb1"');?>
				<ul>
					<li>Download MySQL setup file
						<a href='<?= base_url("data/adopt_an_animal.sql")?>'> here</a> (or use the SQL DUMP
						<a href='<?= base_url("data/adopt_an_animal_dump.sql") ?>'>here</a>).
					</li>
					<li>CSS framework used for styling is lit.css - see
						<a href="https://ajusa.github.io/lit/docs/lit.html">here.</a>
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

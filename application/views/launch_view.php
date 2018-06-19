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
	<title>Web Service Launch Page</title>
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
				<li>The service provides two(+) API endpoints.</li>
				<li>Each endpoint creates a HTTP GET request to execute a MySQL query on a database and return some data in JSON format.</li>
				<li>In this case, the returned data can be consumed by the
					<strong>
						<a href="https://www.conorsomahony.net/sites/adopt-an-animal/" target="_blank">Adopt-an-Animal</a>
					</strong> mobile web application.</li>
				<li>The data describes animals and includes information such as animal name, breed, country of origin, etc.
			</ul>
		</section>

		<!-- section - launch web service-->
		<section>
			<?=heading('Launch Web Service', 2);?>
			<!-- API Endpoint 1 -->
			<div class="card b-accent mb2">
				<h4>API Endpoint 1 - Get all Animal Data</h4>
				<ul>
					<li>Make a request to the web service to return all animal data in JSON format.</li>
					<li>SQL query
						<code class="error">&gt; SELECT * FROM animals</code>
					</li>
				</ul>
				<!-- using CI form helper - specify method as HTTP GET -->
				<?=form_open('/AnimalWebService/getAllAnimalData', array('method' => 'get'))?>
					<input type="submit" value="Get All Animals" class="pill btn bg-accent b-accent white mt2 mb2">
					</form>
			</div>

			<!-- API Endpoint 2 -->
			<div class="card b-accent mb2">
				<h4>API Endpoint 2 - Search Animals using Search Term</h4>
				<ul>
					<li>Enter a search term to make a request to the web service to return all animal data, for animals matching the search
						term, in JSON format.</li>
					<li>Searches animal data using the
						<i>name</i> and
						<i>breed</i> columns</li>
					<li>SQL query
						<code class="error">&gt; SELECT * FROM `animals` WHERE `breed` LIKE '%searchTerm%' OR `name` LIKE '%searchTerm%'</code>
					</li>
				</ul>
				<!-- using CI form helper - specify method as HTTP GET -->
				<?=form_open('/AnimalWebService/getMatchingAnimals', array('method' => 'get'))?>
					<div>
						<input type="submit" value="Search for Term" class="pill btn bg-accent b-accent white mt2 mb2 mr2">
						<input type="text" name="searchTerm" id="searchTerm" placeholder="Enter Search Term" required>
					</div>
					</form>
			</div>

			<!-- API Endpoint 3 -->
			<div class="card b-success mb2">
				<h4>API Endpoint 3 - Get Animals from Country
					<span class="bg-success bold white ph1 rounded">Bonus!</span>
				</h4>
				<ul>
					<li>Select a country to make a request to the web service to get animal
						<i>name</i> and
						<i>breed</i> data, in JSON format, for all animals from that country.</li>
					<li>SQL query
						<code class="error">&gt; SELECT `name`, `breed`, `country` FROM `animals` WHERE `country` = 'country'</code>
					</li>
					<li>We use a distinct list of countries to populate the dropdown box (obtained via another API endpoint!)</li>
				</ul>
				<!-- using CI form helper - specify method as HTTP GET -->
				<?=form_open('/AnimalWebService/getByCountry', array('method' => 'get'))?>
					<div>
						<input type="submit" value="Get by Country" class="pill btn bg-success b-success white mt2 mb2 mr2">
						<!-- Here we use the $countries data passed in by the Launch Controller to populate the dropdown -->
						<select id="country" name="country">
							<?php
foreach ($countries as $country) {
echo '<option value="' . $country . '">' . $country . '</option>';
}?>
						</select>
					</div>
				</form>
			</div>
		</section>
		<!-- end-of section - launch web service-->

		<!-- section - additional information -->
		<section>
			<?=heading('Additional Information and References', 3, 'class="mb1"');?>
			<ul>
				<li>Download SQL setup file
					<a href='<?= base_url("data/animals.sql")?>'> here.</a>
				</li>
				<li>CSS style framework is lit.css - see <a href="https://ajusa.github.io/lit/docs/lit.html">here.</a></li>
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

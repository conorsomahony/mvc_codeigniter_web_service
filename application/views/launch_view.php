<!--
* Author: Conor O'Mahony
* Assignment: MVC Application Frameworks - Assessment 1 - CodeIgniter MVC Web Service
* Student ID: STU-00001490 
* Date: 2018/06/15
* Refs: 
-->
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

echo doctype('html5');
?>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Web Service Launch Page</title>
	<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
	<!-- using CI html helper -->
	<?= link_tag('css/lit.css');?>
	<?= link_tag('css/util.css'); ?>
	<?= link_tag('css/mystyles.css'); ?>
</head>

<body class="m0">
	<header class="tc white bg-accent">
		<div class="c">
			<!-- using CI html helper -->
			<?= heading('MVC Application Frameworks', 1, 'class="mega"'); ?>
		</div>
	</header>

	<div class="c">
		<?= heading('Assessment 1 - CodeIgniter MVC Web Service', 2, 'class="mb1"'); ?>
		<ul>
			<li>This is a web service built in PHP using the CodeIgniter framework.</li>
			<li>The service provides two API endpoints, which use HTTP GET to make a request to query a MySQL database, and return some data in JSON format.</li>
			<li>In this case, the data returned is data that can be consumed by the "Adopt-an-Animal" mobile web application
				(<a class="success" href="https://www.conorsomahony.net/sites/adopt-an-animal/" target="_blank">Go to "Adopt-An-Animal" Mobile Site</a>). </li>
		</ul>
		<?= heading('Launch Web Service', 3, 'class="mb1"'); ?>
		<div class="card">
			<h5>API Endpoint 1 - Get all Animal Data</h5>
			<p>Click button to make a request to the web service to return all Animal data in JSON format.</p>
			<!-- using CI form helper -->
			<?= form_open('/AnimalWebService/getAllAnimals', array('method' => 'get')) ?>
				<input type="submit" value="Launch 1!" class="rounded btn info">
			</form>
		</div>
		<div class="card">
			<h5>API Endpoint 2 - Search Animal Breed by Name</h5>
			<p>Enter a type of animal (e.g., "Elephant", or "Frog"), and click button to make a request to the web service to return all Animals with breed matching the search term, in JSON format.</p>
			<!-- using CI form helper -->
			<?= form_open('/AnimalWebService/testEndPoint2', array('method' => 'get')) ?>
				<div>
					<label for="searchTerm">Search Term</label>
					<input type="text" name="searchTerm" id="searchTerm" placeholder="Enter Search Term" required>
				</div>
				<div>
					<input type="submit" value="Launch 2!" class="rounded btn info">		
				</div>
			</form>
		</div>
	</div>


	<footer class="c">
		<hr>
		<p>Page rendered in
			<strong>{elapsed_time}</strong> seconds.
			<?= (ENVIRONMENT === 'development') ? 'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?>
		</p>
	</footer>
</body>

</html>

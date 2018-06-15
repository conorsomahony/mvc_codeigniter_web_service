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
	<?= link_tag('css/mustard-ui.min.css');?>
</head>

<body>
<section class="section-primary">
	<div class="container container-small">
		<!-- using CI html helper -->
		<?= heading('MVC Application Frameworks', 1); ?>
		<?= heading('Assessment 1', 2); ?>
		<?= heading('CodeIgniter MVC Web Service', 3); ?>
	</div>
</section>

<section class="section-secondary">
	<div class="container container-small">
		<?= heading('Web Service Launch', 3); ?>
		<div class="panel">
			<div class="panel-head">
				<p class="panel-title">API Endpoint 1</p>
			</div>
			<div class="panel-body">
				<p>Launch API Endpoint 1</p>
			</div>
			<div class="panel-footer">
				<!-- using CI form helper -->
				<?= form_open('/AnimalWebService/testEndPoint1', array('method' => 'get')) ?>
					<input type="submit" class="button-primary" value="Launch">
				</form>
			</div>
		</div>
		<div class="panel">
			<div class="panel-head">
				<p class="panel-title">API Endpoint 2</p>
			</div>
			<div class="panel-body">
				<p>Launch API Endpoint 2</p>
			</div>
			<div class="panel-footer">
				<!-- using CI form helper -->
				<?= form_open('/AnimalWebService/testEndPoint2', array('method' => 'get')) ?>
					<input type="submit" class="button-primary" value="Launch">
				</form>
			</div>
		</div>
	</div>
</section>

<footer>
	<div class="footer-text">
		<p class="align-center">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo (ENVIRONMENT === 'development') ? 'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
	</div>
</footer>

</body>

</html>

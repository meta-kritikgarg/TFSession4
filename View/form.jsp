<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="ui/js/jquery-3.0.0.min.js" ></script>
	<script src="ui/js/angular.min.js" ></script>
    <script src="ui/js/applications.js"></script>
	<script src="ui/js/controllers.js" ></script>
</head>
<body ng-app="carForm">
	<div class="container" ng-controller="formFilling" ng-init="getCarDetail(${id})">
		<h1 class="text-center">Car Details</h1>
        <!-- Form to get the car details -->
		<form action="savedetails" method="POST">
			<input type="number" ng-model="car.id" name="id" id="id" hidden/>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="make">Make</label>
				    <div class="col-xs-5">
				        <input type="text" name="make" class="form-control" id="make" ng-model="car.make" required>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="model">Model</label>
				    <div class="col-xs-5">
				        <input type="text" name="model" class="form-control" id="model" ng-model="car.model" required>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="engine">Engine In CC</label>
				    <div class="col-xs-5">
				        <input type="number" name="engine" step=".01" class="form-control" id="engine" ng-model="car.engineInCC" required>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="fuel">Fuel Capacity</label>
				    <div class="col-xs-5">
				        <input type="number" name="fuel" step=".01" class="form-control" id="fuel" ng-model="car.fuelCapacity" required>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="milage">Milage</label>
				    <div class="col-xs-5">
				        <input type="number" name="milage" step=".01" class="form-control" id="milage" ng-model="car.milage" required>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="price">Price</label>
				    <div class="col-xs-5">
				        <input type="number" name="price" step=".1" class="form-control" id="price" ng-model="car.price" required>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="tax">Road Tax</label>
				    <div class="col-xs-5">
				        <input type="number" name="tax" step=".1" class="form-control" id="tax" ng-model="car.roadTax" required>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="ac">AC</label>
				    <div class="col-xs-5">
				        <select class="form-control" name="ac" ng-model="car.ac" required>
				        	<option value="">Select</option>
				        	<option value="Yes">Yes</option>
				        	<option value="No">No</option>
				        </select>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="steering">PowerSteering</label>
				    <div class="col-xs-5">
				        <select class="form-control" name="steering" ng-model="car.powerSteering" required>
				        	<option value="">Select</option>
				        	<option value="Yes">Yes</option>
				        	<option value="No">No</option>
				        </select>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <label class="col-xs-3 text-right" for="kit">Accessory Kit</label>
				    <div class="col-xs-5">
				        <select class="form-control" name="kit" ng-model="car.accessoryKit"	 required>
				        	<option value="">Select</option>
				        	<option value="Yes">Yes</option>
				        	<option value="No">No</option>
				        </select>
				    </div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-xs-12">
				    <div class="col-xs-offset-3 col-xs-5">
				       <input type="submit" value="Submit"/>
				       <input type="reset"/>
				    </div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>

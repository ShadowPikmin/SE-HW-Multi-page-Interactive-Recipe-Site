var path = require('path');

const express = require("express");
const router = express.Router();
const db = require("../database/connection");

router.use(
	express.urlencoded({
		extended:true	
	})
);

router.use(express.json()); 

router.get("/", (req, res) => {
	console.log("home route"); 
	res.render('home', {title: 'Jordan\'s Cookbook'});
});

router.post("/", (req,res) => {
	console.log(req.body);

	let recipeSQL = `insert into recipes (FoodName, Instructions, type) value (` + db.escape(req.body.name) 
	+ `, ` + db.escape(req.body.instruction) + `, ` + db.escape(req.body.type) + `);`

	db.query(recipeSQL, (err, result) => {
		console.log("Successfully recipe data");
		console.log(req.body.ingredients);

		for(let i = 0; i < req.body.ingredients.length; i++){
			console.log("Item is: " + req.body.ingredients[i]);

			let recipeIngredSQL = `insert into recipesIngredients (IngredientID, quantity, unit, RecipeID) value ( (`
			+ `select i.IngredientID from ingredients i where i.Name = ` + db.escape(req.body.ingredients[i]) + `), ` 
			+ db.escape(req.body.quantity[i]) + `, ` + db.escape(req.body.units[i])
			+ `, (select r.RecipeID from recipes r where r.FoodName = ` + db.escape(req.body.name) + `));`

			db.query(recipeIngredSQL, (recIngredErr, recIngredResult) => {
				if (recIngredErr) throw recIngredErr;
				console.log(req.body.ingredients[i] + " Has been stored");
			});
		}

		console.log("Data successful sent to database");
		res.render('home', {title: 'Jordan\'s Cookbook'});
	});
});

router.get("/add", (req, res) => {
	console.log("add recipe"); 
	
	let ingredientSQL = `select distinct i.name from ingredients i;`;
	db.query(ingredientSQL, (err, ingredResult) => { 
		if(err) throw err; 
		console.log(ingredResult);

		let typeSQL = `select distinct r.type from recipes r;`;
		db.query(typeSQL, (typeErr, typeResult) => {
			if(typeErr) throw typeErr;
			console.log(typeResult);

			let unitSQL = `select distinct rI.unit from recipesIngredients rI;`;
			db.query(unitSQL, (unitErr, unitResult) => {
				if(unitErr) throw unitErr;
				console.log(unitResult);

				let foodSQL = `select r.FoodName from recipes r`;
				db.query(foodSQL , (foodErr, foodResult) => { 
					if(foodErr) throw foodErr;
					console.log(foodResult);

					res.render('addRecipe', {title: "Add Recipe", ingredients:ingredResult, types:typeResult, units:unitResult, foods:foodResult});
				});
			});
		});
	});
});

router.get("/recipe",(req,res) => {
	console.log("recipe route");

	let chickenSQL = `select r.FoodName from recipes r where r.type = 'chicken'`;
	db.query(chickenSQL, (chickenERR, chickenResult) => {
		if(chickenERR) throw chickenERR;

		let beefSQL = `select r.FoodName from recipes r where r.type = 'beef'`;
		db.query(beefSQL, (beefERR, beefResult) => {
			if(beefERR) throw beefERR;

			let sausageSQL = `select r.FoodName from recipes r where r.type = 'sausage'`;
			db.query(sausageSQL, (sausageERR, sausageResult) => {
				if(sausageERR) throw sausageERR;

				let eggSQL = `select r.FoodName from recipes r where r.type = 'egg'`;
				db.query(eggSQL, (eggERR, eggResult) => { 
					if(eggERR) throw eggERR;

					res.render('index', {title: "Recipe Lists", chickens:chickenResult, beefs:beefResult, sausages:sausageResult, eggs:eggResult});
				}); 
			});
		});
	});
});

router.post("/food", (req,res) => { 
	console.log("chicken route post success");
	console.log(req.body.item);

	let recipeSQL = "select * from recipes r where r.FoodName = " + db.escape(req.body.item) + ";";
	db.query(recipeSQL, (err,result) => {
		if(err) throw err;
		let recipeInfo = result; 

		let ingredientsSQL = "select distinct i.Name, i.Info from ingredients i inner join recipesIngredients rI on (i.IngredientID = rI.IngredientID) inner join recipes on (rI.RecipeID = (select r.RecipeID from recipes r where r.FoodName = " + db.escape(req.body.item) + "));";
		db.query(ingredientsSQL, (err,ingred) => {
			if(err) throw err; 
			console.log("Data retrieved")
			res.render('food', {title: req.body.item, recipes:recipeInfo, ingredients:ingred})
		});
	});
});

module.exports = router; 
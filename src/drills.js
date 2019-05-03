require('dotenv').config()
const knex = require('knex')

const knexInstance = knex({
  client: 'pg',
  connection: process.env.DB_URL
})

const qry = knexInstance
const searchTerm = 'holo'

function searchByTerm(searchTerm){
	knexInstance
		.select('view_id', 'name', 'price', 'date_added', 'checked', 'category')
		.from('shopping_list')
		.where('name', 'ILIKE', `%${searchTerm}%`)
   		.then(result => {
      		console.log(result)
   		 })
}


function paginateProducts(pageNumber){
	const productsPerPage = 6
	const offset = productsPerPage * (pageNumber -1)
	knexInstance
	    .select('view_id', 'name', 'price', 'date_added', 'checked', 'category')
	    .from('shopping_list')
	    .limit(productsPerPage)
	    .offset(offset)
	    .then(result => {
	      console.log(result)
    })
}

function addedAfter(daysAgo){
	knexInstance
		.select('view_id', 'name', 'price', 'date_added', 'checked', 'category')
		.from('shopping_list')
		.where('date_added' > daysAgo)
		.then(result => {
      		console.log(result)
   		 })
}

//daysago doesn't work like it should but also there's no solution

function totalCostPerCategory() {
	knexInstance
		.select('category')
		.sum('price')
		.from('shopping_list')
		.groupBy('category')
	    .then(result => {
	      console.log('COST PER CATEGORY')
	      console.log(result)
    })
}

totalCostPerCategory();
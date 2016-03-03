# Wallet App

## Overview

This app allows the user to enter new transactions and keeps track of the amount spent over time. (For the time being, debit transactions should be entered as a negative number.)

## Routes

To view dashboard:
`http://localhost:3000`
or
`http://localhost:3000/dashboard`

To view a list of transactions:
`http://localhost:3000/transactions`
or
`http://localhost:3000/transactions/index`

To view a single transaction by id:
`http://localhost:3000/transactions/:id`

To create a new transaction:
`http://localhost:3000/transactions/new`

To edit an existing transaction by id:
`http://localhost:3000/transactions/:id/edit`



### Estimates

I estimate this assignment will take about 10 hours to complete.

### Reflection of estimate

I ended up spending approximately 9 hours on this assignment, although given time, I could use an estimated 2 more hours to 1) get a working query to find the place where the most money was spent and 2) add an option for the user to select credit/debit and auto-assign a "-" to debit transactions.

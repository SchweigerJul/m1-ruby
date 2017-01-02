# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create(name: "Ruby", password: "secret", password_confirmation: "secret")

Limit.delete_all
Limit.create(expireDate: 2017-05-01, limit: 200)
Limit.create(expireDate: 2016-05-01, limit: 300)
Limit.create(expireDate: 2017-12-01, limit: 500)
Limit.create(expireDate: 2017-01-01, limit: 300)
Limit.create(expireDate: 2016-12-01, limit: 200)

Expense.delete_all
# Expense.create(limit_id: 111, store: "MyString", description: "MyText", date: 2016-10-16, value: 1.5)
Expense.create(store: "MyString", description: "MyText", date: 2016-10-16, value: 1.5)

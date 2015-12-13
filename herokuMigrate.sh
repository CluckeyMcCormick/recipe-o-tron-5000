heroku pg:reset --app serene-reaches-9115 DATABASE --confirm serene-reaches-9115
heroku run --app serene-reaches-9115 rake db:setup
heroku run --app serene-reaches-9115 rake db:migrate RAILS_ENV=production
heroku restart --app serene-reaches-9115
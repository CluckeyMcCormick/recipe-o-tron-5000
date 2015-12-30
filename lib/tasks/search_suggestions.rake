namespace :search_suggestions do
	desc "Generate search suggestions from items"
	task :index => :environment do
		SearchSuggestion.index_items
	end
end
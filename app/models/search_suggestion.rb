class SearchSuggestion < ActiveRecord::Base
	def self.terms_for(prefix)
		suggestions = where("term LIKE ?", "%#{prefix}%")
		suggestions.order("popularity desc").limit(10).pluck(:term)
	end

	def self.index_items
		Item.find_each do |item|
			index_term(item.name)
			# index_term(item.category)
			item.name.split.each { |t| index_term(t) }
		end
	end

	def self.index_term(term)
		where(term: term.downcase).first_or_initialize.tap do |suggestion|
			suggestion.increment! :popularity
		end
	end
end

namespace :search_suggestion do
  desc 'Generate search suggestio for product'
  task index: :environment do
    SearchSuggestion.index_products
  end
end
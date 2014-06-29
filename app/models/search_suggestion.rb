class SearchSuggestion < ActiveRecord::Base

  def self.term_for(prefix)
    Rails.cache.fetch(["search-terms",prefix]) do
      where('term like ?',"#{prefix}%").limit(10).pluck(:term)
    end
  end

  def self.index_products
    Product.find_each do |product|
      index_term(product.name)
    end
  end

  def self.index_term(term)
    where(term: term.downcase).first_or_initialize.tap  do |t|
      t.increment! :popularity
    end
  end

end

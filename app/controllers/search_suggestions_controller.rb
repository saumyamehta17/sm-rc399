class SearchSuggestionsController < ApplicationController
  def index
    render json: SearchSuggestion.term_for(params[:term])
    #render json: %w[Hello Sweety Mek]
  end
end

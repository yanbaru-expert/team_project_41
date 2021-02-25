class TextsController < ApplicationController
  def index
    if params[:genre] == nil
      @texts = Text.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails"])
    else
      @texts = Text.where(genre: params[:genre])
    end
  end

  def show
    @text = Text.find(params[:id])
  end
end

class TextsController < ApplicationController
  def index
    @texts = Text.where(genre: params[:genre])
  end

  def show
    @text = Text.find(params[:id])
  end
end

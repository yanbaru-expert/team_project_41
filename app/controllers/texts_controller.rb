class TextsController < ApplicationController
  def index
    @texts = Text.all
    @texts = Text.search(params[:search])
  end

  def show
    @text = Text.find(params[:id])
  end
end

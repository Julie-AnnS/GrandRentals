class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home

  def home
    @featured_grandparents = Grandparent.all.first(3)
  end
end

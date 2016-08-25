class StaticPagesController < ApplicationController
  def home
    @news = New.last(5).reverse
  end

  def news
  end

  def history
  end

  def foto
  end

  def video
  end

  def poetry
  end

  def contact
  end

  def goals  
  end

  def worship
  end

  def ministers
  end
end

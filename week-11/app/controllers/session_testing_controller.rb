class SessionTestingController < ApplicationController

  class Something
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  def add_stuff
    session[:interesting_thing] = Something.new("Ada")

    redirect_to session_show_path
  end

  def show

  end
end

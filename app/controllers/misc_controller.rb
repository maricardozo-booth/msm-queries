class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def youngest
    render({ :template => "misc_templates/youngest"})
  end

  def eldest
    #dobs = Director.all.order({ :dob => :desc })
    #@the_eldest = dobs.at(0)
    render({ :template => "misc_templates/eldest"})
  end

end

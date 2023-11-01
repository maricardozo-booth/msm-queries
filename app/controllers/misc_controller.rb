class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def youngest
    dobs = Director.all.order({ :dob => :desc })
    @the_youngest = dobs.first
    render({ :template => "misc_templates/youngest"})
  end

  def eldest
    dobs = Director.all.order({ :dob => :desc })
    dobs_wo_nil = dobs.where.not ({ :dob => nil })
 @the_eldest = dobs_wo_nil.last
    render({ :template => "misc_templates/eldest"})
  end

end

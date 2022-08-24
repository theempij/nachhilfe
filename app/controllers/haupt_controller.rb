class HauptController < ActionController::Base
  layout 'application'

  def main

  end

  def impressum
    @noindex = true
  end

end
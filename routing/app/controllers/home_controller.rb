class HomeController < ApplicationController

  def home #Action
  end
  def a

  end
  def b

  end
  def one
  end
  def two
  end
  def three
  end


def redirect

@input = params['input'].downcase
case @input
  when "one" then redirect_to "/one"
  when "1" then redirect_to "/one"
  when "two" then redirect_to "/two"
  when "2" then redirect_to "/two"
  when "three" then redirect_to "/three"
  when "3" then redirect_to "/three"
  when"a" then redirect_to "/a"
  when "b" then redirect_to "/b"
  else  redirect_to "/home"
end


end


end
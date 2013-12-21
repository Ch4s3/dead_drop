class HomeController < ApplicationController
	force_ssl unless Rails.env.development?
end

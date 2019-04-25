class RootController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :about]
	def top
	end
	def homes
	end
	def show
	end
	def about
	end

end

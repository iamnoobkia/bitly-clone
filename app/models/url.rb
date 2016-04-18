class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	def shorten
		self.short_url = generate_short_url
	end

	private

	def generate_short_url
		(0...7).map { (65 + rand(26)).chr }.join.downcase
	end
end

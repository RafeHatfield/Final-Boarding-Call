require "finalboardingcall/version"

module Rack
	class FinalBoardingCall

		def initialize(app)
			@app = app
		end

	  def call(env)
		
		status, headers, response = @app.call(env)
		
		logDir = Rails.root.join('log')
		logFile = "finalboardingcall.log"
		
		File.open(logDir.join(logFile), 'a') do |file|
			file.puts("------------------")
			file.puts(status)
			file.puts(headers)
			file.puts(env['REQUEST_URI'])
			file.puts("------------------")
		end
		
		[200, {"Content-Type" => "text/html"}, ["I am a grateful grapefruit"]]

		# if status == 404 && goto = check_redirect(env['REQUEST_URI'])
		# 	
		# 		File.open(logDir.join(logFile), 'a') do |file|
		# 			file.puts("------------------")
		# 			file.puts("REDIRECTING!")
		# 			# file.puts(env.inspect)
		# 			file.puts(status)
		# 			file.puts(headers)
		# 			file.puts(env['REQUEST_URI'])
		# 			file.puts(goto.new_url)
		# 			file.puts("------------------")
		# 		end
		# 
		# 		# check redirect
		# 		[goto.redirect_type, {"Location"=> goto.new_url}, ['Hasta La Vista']]
		# 
		# else
		# 	[status, headers, response]
		# end

		def check_redirect(url)
			check_url = Finalboardingcall.where(['old_url = ?', url]).first
		end
	end
end
